#' ---
#' title: Serological Data Analysis Walkthough
#' subtitle: DTRA-Malaysia Bioinformatics Workshop
#' author: Noam Ross
#' date: April 2022
#' output:
#'   rmarkdown::html_document:
#'     toc: true
#'     code_folding: show
#' ---
#'
#' This walk-through script demonstrates methods of exploring and analyzing
#' serological data.
#'
#' # Setup and data prep
#'
#' First, we load packages that we will use for this analysis.
#'
#' To install these packages, run
#' `install.packages(c("readxl", "tidyverse", "janitor", "mclust", "knitr", "dplR", "jointseg"))`.

#---packages, message=FALSE, warning=FALSE--------------------------------------
library(readxl)    # For reading Excel Files into R
library(tidyverse) # A general-purpose toolset for data manipulation
library(janitor)   # For cleaning data
library(mclust)    # For fitting cluster models
library(knitr)     # For pretty-printing outputs
library(dplR)      # For calculating robust means
library(jointseg)  # For calculating robust standard deviations

#' Next, we read in the data from an Excel file. See the file (`mock_serology_data.xlsx`)
#' for how it is formatted.
#'
#' <https://datacarpentry.org/spreadsheet-ecology-lesson/> is a great overview on
#' organizing data in Excel so that it can be handled programmatically in
#' tools like R.  Basically:
#'
#' -  Keep it in as raw format as possible
#' -  Do not merge or hide cells
#' -  Keep things rectangular
#' -  Distinguish between zero and missing / blank data
#' -  Be very careful with dates, use year/month/day columns instead
#' -  Formatting is not retained

sero_data <- read_excel("mock_serology_data.xlsx")
sero_data <- clean_names(sero_data) # makes names lowercase for easier manipulation
kable(head(sero_data)) # Examine the data frame

#' We change the data to "long" format for further manipulation.  Long format
#' facilitates manipulation and analysis by simplifying to one-observation-per-row.
#'
#' -  A primer on manipulating data between formats is here: <https://r4ds.had.co.nz/tidy-data.html>
#' -  This is based on some underlying principles laid out here: <http://www.jstatsoft.org/v59/i10/paper>

sero_long <- sero_data %>%
  pivot_longer(c(-id, -site, -event, -species), names_to = "virus", values_to = "mfi",
               values_drop_na = TRUE)

kable(head(sero_long))

#' # Data exploration
#'
#' Let's look across species at MFI against Nipah Virus
sero_niv <- sero_long %>%
  filter(virus == "ni_v")


x <- sero_data |> filter(species == "Species H") |>  select(-taf_v, -starts_with("rs"), -bom_v) |>
  filter(!is.na(ni_v), !is.na(mock), !is.na(men_v), !is.na(ebo_v), !is.na(he_v), !is.na(mar_v), !is.na(rest_vm))

x <- sample_n(x, n(), weight = log10(abs(pmin(4000, x$ni_v) - 2000)))

x |>
  pivot_longer(5:20) |>
  mutate(value = round(value + rnorm(n(), 500, 10))) |>
  pivot_wider(names_from = "name", values_from = "value") |>
  sample_n(96) |>
  select(1, 5:20) |>
  write_excel_csv("xx.csv") -> y

kable(head(sero_niv))

#' We'll use the **ggplot2** package to make plots. The following code can be
#' reused and rearranged, but for a more comprehensive introduction, you can
#' find an introduction here: https://r4ds.had.co.nz/data-visualisation.html
#'
#' First, we look at Nipah Virus MFI distributions for each species:
ggplot(sero_niv, aes(x = mfi)) +  # Using MFI on the X axis...
  geom_histogram() +              # Make a histogram
  facet_wrap(~species) +          # Breaking up plots by species
  labs(title = "Luminex MFI for NiV Distribution Across All Species")

#' Looks like the action is in Species H! But also the data is very skewed.
#' Let's look at that species, but look at the *log* (base 10) instead to
#' understand the distribution better.
sero_H_niv <- sero_long %>%
  filter(virus == "ni_v", species == "Species H") %>%
  mutate(log10_mfi = log10(mfi))

ggplot(sero_H_niv, aes(x = log10_mfi)) +
  geom_histogram() +
  labs(title = "Species H NiV MFI Values") +
  xlab("Log10 MFI") +
  ylab("Number of Samples")

#' We can try an alternative visualization, like a density plot
ggplot(sero_H_niv, aes(x = log10_mfi)) +
  geom_density() +  # <-- A kernel density plot
  labs(title = "Species H NiV MFI Values") +
  xlab("Log10 MFI") +
  ylab("Frequency of Samples")

#' # Clustering MFI values
#'
#' Seeing that the distribution is roughly bimodal, it makes sense to fit a
#' latent cluster model to the data to separate values.  We use the `MClust()`
#' function to fit this model.
#'
#' -  `data`: The vector of data, in this case the log10 MFI values for NiV response
#'     in one species
#' -  `G`: A set of the number of clusters to use. We use `1:5`, 1 to 5 clusters
#' -  `modelNames`: Which kind of models to fit. We use `"V"`, which means a model
#'    with clusters of unequal variance.
#'
#---fit, message=FALSE-----------------------------------------------------
niv_clust <- Mclust(sero_H_niv$log10_mfi, G = 1:5, modelNames = "V", verbose = FALSE)

summary(niv_clust)

#' Now we can examine the outputs of this model with some plots. This first plot
#' compares the relative fit of the different numbers of clusters using
#' _Bayesian Information Criterion_ (BIC). Higher values are better (relative)
#' fit, so this shows that 2 clusters are optimal in this case:
plot(niv_clust, what = "BIC", xlab = "log10 MFI NiV")

#' Next, we plot the model density, which shows the distribution of values
#' generated by the model (black).  We can break this down into the distribution
#' component of both clusters (blue and red dotted lines), and also overlay the
#' density of the real data (purple). From this we see how the normal model
#' is a good but imperfect model of the actual data.
plot(niv_clust, what = "density", xlab = "log10 MFI NiV") # Base plot in black

# Add lines for individual components of the model by extracting the mean,
# variance, and proportion parameters from the model
lines(
  seq(1, 6, by = 0.01),               # over a sequence
  dnorm(seq(1, 6, by = 0.01),         # generate a normal distribution
        niv_clust$parameters$mean[1], # with mean of the first cluster
        sqrt(niv_clust$parameters$variance$sigmasq[1]))* # and SD of the first cluster
    niv_clust$parameters$pro[1],      # Times the proportion of values in the cluster
  col = "blue", lty = 2)              # colored blue and dotted
lines(
  seq(1, 6, by = 0.01),
  dnorm(seq(1, 6, by = 0.01),
        niv_clust$parameters$mean[2],
        sqrt(niv_clust$parameters$variance$sigmasq[2]))*
    niv_clust$parameters$pro[2],
  col = "red", lty = 2)

# Add empirical density of the data
lines(density(sero_H_niv$log10_mfi), col = "purple")

#' We can also generate plots that show which points in our data are classified
#' to which cluster, and how much uncertainty there is in that classification
plot(niv_clust, what = "classification", xlab = "log10 MFI NiV")
plot(niv_clust, what = "uncertainty", xlab = "log10 MFI NiV")

#' Depending on our goals, we could define thresholds that are 95% certain to
#' be negative, 95% certain to be positive, or be 50-50
niv_threshold_low <- max(niv_clust$data[niv_clust$z[, 1] > 0.95])
niv_threshold_hi <- min(niv_clust$data[niv_clust$z[, 2] > 0.95])
niv_threshold_50 <- max(niv_clust$data[niv_clust$z[, 1] > 0.5])
10^niv_threshold_low
10^niv_threshold_50
10^niv_threshold_hi

#' We can add this to our original plot
plot(niv_clust, what = "density", xlab = "log10 MFI NiV") # Base plot in black
lines(
  seq(1, 6, by = 0.01),               # over a sequence
  dnorm(seq(1, 6, by = 0.01),         # generate a normal distribution
        niv_clust$parameters$mean[1], # with mean of the first cluster
        sqrt(niv_clust$parameters$variance$sigmasq[1]))* # and SD of the first cluster
    niv_clust$parameters$pro[1],      # Times the proportion of values in the cluster
  col = "blue", lty = 2)              # colored blue and dotted
lines(
  seq(1, 6, by = 0.01),
  dnorm(seq(1, 6, by = 0.01),
        niv_clust$parameters$mean[2],
        sqrt(niv_clust$parameters$variance$sigmasq[2]))*
    niv_clust$parameters$pro[2],
  col = "red", lty = 2)
lines(density(sero_H_niv$log10_mfi), col = "purple")
abline(v = niv_threshold_low, lty = 3) #Add vertical dotted lines with threshold values
abline(v = niv_threshold_hi, lty = 3)
abline(v = niv_threshold_50, lty = 3)

#' # Challenge A: Not enough data to make clusters
#'
#' As we are often doing surveillance for relatively rare positives, we can
#' be confronted with the challenge of too few data to characterize a "positive"
#' part of the distribution.  As an example, let's look at Species H response
#' to RAVV
ravv_sero <- sero_long %>%
  filter(species == "Species H", virus == "rav_v") %>%
  mutate(log10_mfi = log10(mfi))

kable(head(ravv_sero))
ggplot(ravv_sero, aes(x = log10(mfi))) +
    geom_histogram()

#' When we fit a cluster model to this data, we get an odd result because it
#' splits the data into wide and tall distributions, which really means there
#' is one distribution with long tails:
ravv_clust <- Mclust(ravv_sero$log10_mfi, G = 1:5, modelNames = "V", verbose = FALSE)
plot(ravv_clust, what = "density")
lines(density(ravv_sero$log10_mfi), col = "purple")
lines(
  seq(1, 6, by = 0.01),               # over a sequence
  dnorm(seq(1, 6, by = 0.01),         # generate a normal distribution
        ravv_clust$parameters$mean[1], # with mean of the first cluster
        sqrt(ravv_clust$parameters$variance$sigmasq[1]))* # and SD of the first cluster
    ravv_clust$parameters$pro[1],      # Times the proportion of values in the cluster
  col = "blue", lty = 2)              # colored blue and dotted
lines(
  seq(1, 6, by = 0.01),
  dnorm(seq(1, 6, by = 0.01),
        ravv_clust$parameters$mean[2],
        sqrt(ravv_clust$parameters$variance$sigmasq[2]))*
    ravv_clust$parameters$pro[2],
  col = "red", lty = 2)

plot(ravv_clust, what = "classification")
plot(ravv_clust, what = "uncertainty")

#' This doesn't make much sense and we need an alternative way to proceed.
#' So we make the assumption that high responses would be similar to those for NiV.
#'
#' First, we determine the _standardized_ threshold for NiV - how many standard
#' deviations is it away from the mean of the negative cluster?
niv_low_cluster_mean <- niv_clust$parameters$mean[1]
niv_low_cluster_sd <- sqrt(niv_clust$parameters$variance$sigmasq[1])
std_niv_threshold_hi <- (niv_threshold_hi - niv_low_cluster_mean)/niv_low_cluster_sd
std_niv_threshold_hi

#' The threshold is `r std_niv_threshold_hi` standard deviations above the mean.
#' So now we want to calculate, for the RAVV distribution, what is the equivalent
#' threshold?  First, we need to calculate _robust_ mean and standard deviations
#' for the RAVV distribution, which discard outliers.  We use the `tbrm()` and
#' `estimateSd()` functions for this.
ravv_robust_mean <- dplR::tbrm(ravv_sero$log10_mfi)
ravv_robust_mean
ravv_robust_sd <- jointseg::estimateSd(ravv_sero$log10_mfi)
ravv_robust_sd

#' We can compare these values between NiV and RAVV in a table:
tribble(
  ~Virus, ~Mean, ~SD,
  "NiV", niv_low_cluster_mean, niv_low_cluster_sd,
  "RAVV", ravv_robust_mean, ravv_robust_sd
)

#' Now we calculate an equivalent threshold to NiV for RAVV:
ravv_threshold_hi <- std_niv_threshold_hi * ravv_robust_sd + ravv_robust_mean
ravv_threshold_hi
10^ravv_threshold_hi

#' Let's plot this on the data:
plot(density(ravv_sero$log10_mfi), col = "purple")
sq <- seq(1.5, 4, length.out = 100)
lines(sq, dnorm(sq, mean = ravv_robust_mean, sd = ravv_robust_sd), lty = 2)
abline(v = ravv_threshold_hi)

#' # Challenge B: Many clusters in non-normal data
#'
#' Often we find that even when we have many high positive values, the data do
#' not readily split into two groups.  As an example, let's look at the MenV data
#' in our mock data set:
menv_sero <- sero_long %>%
  filter(species == "Species H", virus == "men_v") %>%
  mutate(log10_mfi = log10(mfi))

ggplot(menv_sero, aes(x = log10_mfi)) +
  geom_histogram()


#' When we cluster this data, Mclust comes up with best model of _five_ clusters:
menv_clust <- Mclust(menv_sero$log10_mfi, G = 1:6, modelName = "V", verbose = FALSE)
summary(menv_clust)
plot(menv_clust, what = "BIC")

#' We can once again plot the model (black), the actual data density (purple)
#' and the model components (orange).  We see that there are issues with the
#' model not fitting the data well.
plot(menv_clust, what = "density")
lines(density(menv_sero$log10_mfi, bw = 0.1), col = "purple")
for (i in seq_len(menv_clust$G)) {
lines(
  seq(1, 6, by = 0.01),               # over a sequence
  dnorm(seq(1, 6, by = 0.01),         # generate a normal distribution
        menv_clust$parameters$mean[i], # with mean of the first cluster
        sqrt(menv_clust$parameters$variance$sigmasq[i]))* # and SD of the first cluster
    menv_clust$parameters$pro[i],      # Times the proportion of values in the cluster
  col = "orange", lty = 2)              # colored blue and dotted
}
#' This is due to a few reasons: First, the MFI values have a maximum value
#' near 30,000. This results in an asymmetrical distribution of values near the
#' top of the range, resulting in this spike.  Second, a large number of
#' continuous values in the intermediate range is poorly represented by normal
#' distributions.
#'
#' If we look at the classifications and uncertainty, we can see the separation
#' between the upper and lower two clusters and the wide-ish range of the middle
#' cluster:
plot(menv_clust, what = "classification")
plot(menv_clust, what = "uncertainty")

#' In this case we likely want to make a judgment call on what threshold to
#' use based on our interpretation of the distribution and the goals of the
#' analysis. The upper and lower clusters represent the machine detection limits,
#' and the second-lowest or second-highest likely represent strong low and
#' high clusters.  The center cluster represents an intermediate range that
#' is hardest to interpret.  Thus, aiming to select only true positives, we
#' can opt to set the threshold at the point that values are definitely above
#' the third cluster:
menv_threshold_hi <- max(menv_clust$data[menv_clust$z[, 3] > 0.5])
menv_threshold_hi
10^menv_threshold_hi

plot(menv_clust, what = "density")
lines(density(menv_sero$log10_mfi, bw = 0.1), col = "purple")
for (i in seq_len(menv_clust$G)) {
  lines(
    seq(1, 6, by = 0.01),               # over a sequence
    dnorm(seq(1, 6, by = 0.01),         # generate a normal distribution
          menv_clust$parameters$mean[i], # with mean of the first cluster
          sqrt(menv_clust$parameters$variance$sigmasq[i]))* # and SD of the first cluster
      menv_clust$parameters$pro[i],      # Times the proportion of values in the cluster
    col = "orange", lty = 2)              # colored blue and dotted
}
abline(v = menv_threshold_hi)

#' # Model uncertainty
#'
#' We must remember that there's not just uncertainty of individual observations,
#' but in our overall model estimates - the mean and standard deviation of model
#' clusters. These in turn result in uncertainty of our threshold values.  It's
#' often the case that the uncertainty _within_ a method or model is as great
#' as the differences _between_ different methods and models.
#'
#' We can examine model uncertainty by running a
#' _bootstrap_ simulation where we resample the data 100 times.  This gives
#' us an object with 100 different estiamtes of each parameter:
set.seed(0)
niv_clust_boot <- MclustBootstrap(niv_clust, n = 100, verbose = FALSE)
niv_clust_boot

#' With some elaborate simulation, we can turn these bootstrap parameter estimates
#' into a visualization of modeel uncertainty.
sq <- seq(1, 6, length.out = 100)
sims <- map_dfr(1:100, function(i) {
  tibble(
    rep = i,
    x = rep(sq, 2),
    which = rep(c("lower", "upper"), each = 100),
    y = c(
      dnorm(sq, mean = niv_clust_boot$mean[i, 1, 1],
            sd = sqrt(niv_clust_boot$variance[i, 1, 1, 1])) * niv_clust_boot$pro[i, 1],
      dnorm(sq, mean = niv_clust_boot$mean[i, 1, 2],
            sd = sqrt(niv_clust_boot$variance[i, 1, 1, 2])) * niv_clust_boot$pro[i, 2]
      ),
  )
})
tholds <- sims %>%
  pivot_wider(names_from = which, values_from = y) %>%
  group_by(rep) %>%
  summarize(thold = max(x[upper/lower < 20]) + rnorm(1, 0, 0.025)) %>%
  filter(thold < 5)

ggplot(sims, aes(x = x, y = y, col = which, group = paste(rep, which))) +
  geom_vline(data = tholds, mapping = aes(xintercept = thold), alpha = 0.25, col = "black") +
  geom_line(alpha = 0.15) +
  scale_x_continuous(breaks = seq(1, 6, by = 1),
                     labels = scales::comma(10^(1:6)),
                     name = "MFI Value") +
  ylab("Probability Density")

#' We can also estimate 95% confidence intervals for the threshold:
quantile(tholds$thold, 0.025)
quantile(tholds$thold, 0.975)
10^quantile(tholds$thold, 0.025)
10^quantile(tholds$thold, 0.975)

#' # Propagating uncertainty into downstream analyses
#'
#' We often want to go beyond identification of individual samples in our
#' analysis.  For instance, we want to take the outputs of serology and use it
#' to determine if there are differences in seroprevalence among
#' age classes, species, or geography from which our samples came. As we know that
#' some samples have different levels of certainty of serotatus,  we should
#' find a way to propagate uncertainty from our analysis.  If we only use
#' "definitely positive" or "definitely negative" observations, we lose a lot of
#' data. However, if we count everything with >50% chance of being seropositive
#' as positive and vice versa, we are overstating certainty.
#'
#' Here is the distribution of positive probabilities from the NiV cluster model,
#' showing most results are very likely to be negative or positive, but there are
#' some intermediate values.
hist(niv_clust$z[,2])

#' One way to carry this information through is to use the probabilities as
#' outcomes in logistic regression, rather than the absolute values.
#' For instance, we can the probability of being positive to the data like so:
data_for_regression <- sero_H_niv %>%
  mutate(prob_positive = niv_clust$z[,2]) %>%
  mutate(event = as.factor(event))

#' Plotting, we see how this naturally has a logistic-like shape:
plot(data_for_regression$log10_mfi, data_for_regression$prob_positive)

#' We can fit a linear regression to see, for instance, if samples were more likely
#' to be positive at a specific sampling event.  This uses the `prob_positive`
#' value rather that a 0/1 serostatus, which means that values with less certain
#' outcomes will influence the model less.:
model <- glm(prob_positive ~ event, data = data_for_regression, family = binomial())

summary(model)
