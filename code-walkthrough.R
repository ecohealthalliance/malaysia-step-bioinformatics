'
#' --------------------------------------------------------------------------------
#'
#' > ### Learning Objectives
#' >
#' > -   Be able to explain what R and RStudio are, what they are used for, and how
#' >     they relate to each other.
#' > -   Describe the purpose of the RStudio Script, Console, Environment, and
#' >     Plots panes.
#' > -   Organize files and directories for a set of analyses as an R Project, and
#' >     understand the purpose of the working directory.
#' > -   Use the built-in RStudio help interface to search for more information on
#' >     R functions.
#' > -   Demonstrate how to provide sufficient information for troubleshooting with
#' >     the R user community.
#'
#' --------------------------------------------------------------------------------
#'
#' ## What is R? What is RStudio?
#'
#' The term "`R`" is used to refer to both the programming language and the
#' software that interprets the scripts written using it.
#'
#' [RStudio](https://rstudio.com) is currently a very popular way to not only write
#' your R scripts but also to interact with the R software. To function correctly,
#' RStudio needs R and therefore both need to be installed on your computer.
#'
#' ## Why learn R?
#'
#' ### R does not involve lots of pointing and clicking, and that's a good thing
#'
#' The learning curve might be steeper than with other software, but with R, the
#' results of your analysis do not rely on remembering a succession of pointing and
#' clicking, but instead on a series of written commands, and that's a good thing!
#' So, if you want to redo your analysis because you collected more data, you don't
#' have to remember which button you clicked in which order to obtain your results.
#' With a stored series of commands (this is your script), you can repeat running them and
#' R will process the new dataset exactly the same way as before.
#'
#' Working with scripts makes the steps you used in your analysis clear, and the
#' code you write can be inspected by someone else who can give you feedback and
#' spot mistakes.
#'
#' Working with scripts forces you to have a deeper understanding of what you are
#' doing, and facilitates your learning and comprehension of the methods you use.
#'
#' ### R code is great for reproducibility
#'
#' Reproducibility is when someone else (including your future self) can obtain the
#' same results from the same dataset when using the same analysis.
#'
#' R integrates with other tools to generate manuscripts from your code. If you
#' collect more data, or fix a mistake in your dataset, the figures and the
#' statistical tests in your manuscript are updated automatically.
#'
#' An increasing number of journals and funding agencies expect analyses to be
#' reproducible, so knowing R will give you an edge with these requirements.
#'
#' ### R is interdisciplinary and extensible
#'
#' With 10,000+ packages that can be installed to extend its capabilities, R
#' provides a framework that allows you to combine statistical approaches from many
#' scientific disciplines to best suit the analytical framework you need to analyze
#' your data. For instance, R has packages for image analysis, GIS, time series,
#' population genetics, and a lot more.
#'
#' ### R works on data of all shapes and sizes
#'
#' The skills you learn with R scale easily with the size of your dataset. Whether
#' your dataset has hundreds or millions of lines, it won't make much difference to
#' you.
#'
#' R is designed for data analysis. It comes with special data structures and data
#' types that make handling of missing data and statistical factors convenient.
#'
#' R can connect to spreadsheets, databases, and many other data formats, on your
#' computer or on the web.
#'
#' ### R produces high-quality graphics
#'
#' The plotting functionalities in R are endless, and allow you to adjust any
#' aspect of your graph to convey most effectively the message from your data.
#'
#' ### R has a large and welcoming community
#'
#' Thousands of people use R daily. Many of them are willing to help you through
#' mailing lists and websites such as [Stack Overflow](https://stackoverflow.com/),
#' or on the [RStudio community](https://community.rstudio.com/).
#'
#' ### Not only is R free, but it is also open-source and cross-platform
#'
#' Anyone can inspect the source code to see how R works. Because of this
#' transparency, there is less chance for mistakes, and if you (or someone else)
#' find some, you can report and fix bugs.
#'
#' ## Knowing your way around RStudio
#'
#' Let's start by learning about [RStudio](https://www.rstudio.com/), which is an
#' Integrated Development Environment (IDE) for working with R.
#'
#' The RStudio IDE open-source product is free under the [Affero General Public
#' License (AGPL) v3](https://www.gnu.org/licenses/agpl-3.0.en.html). The RStudio
#' IDE is also available with a commercial license and priority email support from
#' RStudio, PBC.
#'
#' We will use RStudio IDE to write code, navigate the files on our computer,
#' inspect the variables we are going to create, and visualize the plots we will
#' generate. RStudio can also be used for other things (e.g., version control,
#' developing packages, writing Shiny apps) that we will not cover during the
#' workshop.
#'
#' ![RStudio interface screenshot. Clockwise from top left: Source,
#' Environment/History, Files/Plots/Packages/Help/Viewer,
#' Console.](img/rstudio-screenshot.png)
#'
#' RStudio is divided into 4 "panes":
#'
#' -   The **Source** for your scripts and documents (top-left, in the default
#'     layout)
#' -   Your **Environment/History** (top-right) which shows all the objects in
#'     your working space (Environment) and your command history (History)
#' -   Your **Files/Plots/Packages/Help/Viewer** (bottom-right)
#' -   The R **Console** (bottom-left)
#'
#' The placement of these panes and their content can be customized (see menu,
#' Tools -\> Global Options -\> Pane Layout). For ease of use, settings such as
#' background color, font color, font size, and zoom level can also be adjusted in
#' this menu (Global Options -> Appearance).
#'
#' One of the advantages of using RStudio is that all the information you need to
#' write code is available in a single window. Additionally, with many shortcuts,
#' autocompletion, and highlighting for the major file types you use while
#' developing in R, RStudio will make typing easier and less error-prone.
#'
#' ## Getting set up
#'
#' It is good practice to keep a set of related data, analyses, and text
#' self-contained in a single folder, called the **working directory**. All of the
#' scripts within this folder can then use *relative paths* to files that indicate
#' where inside the project a file is located (as opposed to absolute paths, which
#' point to where a file is on a specific computer). Working this way allows you to
#' move your project around on your computer and share it with others
#' without worrying about whether or not the underlying scripts will still work.
#'
#' RStudio provides a helpful set of tools to do this through its "Projects"
#' interface, which not only creates a working directory for you, but also
#' remembers its location (allowing you to quickly navigate to it) and optionally
#' preserves custom settings and (re-)open files to assist resume work after
#' a break. Go through the steps for creating an "R Project" for this tutorial
#' below.
#'
#' 1.  Start RStudio.
#' 2.  Under the `File` menu, click on `New Project`. Choose `New Directory`, then
#'     `New Project`.
#' 3.  Enter a name for this new folder (or "directory"), and choose a convenient
#'     location for it. This will be your **working directory** for the rest of the
#'     day (e.g., `~/data-carpentry`).
#' 4.  Click on `Create Project`.
#' 5.  Download the [code
#'     handout](https://datacarpentry.org/R-ecology-lesson/code-handout.R), place
#'     it in your working directory and rename it (e.g.,
#'     `data-carpentry-script.R`).
#' 6.  (Optional) Set Preferences to 'Never' save workspace in RStudio.
#'
#' A workspace is your current working environment in R which includes any
#' user-defined object. By default, all of these objects will be saved, and
#' automatically loaded, when you reopen your project. Saving a workspace to
#' `.RData` can be cumbersome, especially if you are working with larger datasets,
#' and it can lead to hard to debug errors by having objects in memory you forgot
#' you had. Therefore, it is often a good idea to turn this off. To do so, go to
#' Tools --\> 'Global Options' and select the 'Never' option for
#' 'Save workspace to .RData' on exit.'
#'
#' ![Set 'Save workspace to .RData on exit' to
#' 'Never'](img/rstudio-preferences.png)
#'
#' ### Organizing your working directory
#'
#' Using a consistent folder structure across your projects will help keep things
#' organized, and will help you to find/file things in the future. This
#' can be especially helpful when you have multiple projects. In general, you may
#' create directories (folders) for **scripts**, **data**, and **documents**.
#'
#' -   **`data_raw/` & `data/`** Use these folders to store raw data and
#'     intermediate datasets you may create for the need of a particular analysis.
#'     For the sake of transparency and
#'     [provenance](https://en.wikipedia.org/wiki/Provenance), you should *always*
#'     keep a copy of your raw data accessible and do as much of your data cleanup
#'     and preprocessing programmatically (i.e., with scripts, rather than
#'     manually) as possible. Separating raw data from processed data is also a
#'     good idea. For example, you could have files
#'     `data_raw/tree_survey.plot1.txt` and `...plot2.txt` kept separate from a
#'     `data/tree.survey.csv` file generated by the
#'     `scripts/01.preprocess.tree_survey.R` script.
#' -   **`documents/`** This would be a place to keep outlines, drafts, and other
#'     text.
#' -   **`scripts/`** This would be the location to keep your R scripts for
#'     different analyses or plotting, and potentially a separate folder for your
#'     functions (more on that later).
#' -   **Additional (sub)directories** depending on your project needs.
#'
#' For this workshop, we will need a `data_raw/` folder to store our raw data, and
#' we will use `data/` for when we learn how to export data as CSV files, and a
#' `fig/` folder for the figures that we will save.
#'
#' -   Under the `Files` tab on the right of the screen, click on `New Folder` and
#'     create a folder named `data_raw` within your newly created working directory
#'     (e.g., `~/data-carpentry/`). (Alternatively, type `dir.create("data_raw")`
#'     at your R console.) Repeat these operations to create a `data` and a `fig`
#'     folder.
#'
#' We are going to keep the script in the root of our working directory because we
#' are only going to use one file. Later, when you start create more
#' complex projects, it might make sense to organize scripts in sub-directories.
#'
#' Your working directory should now look like this:
#'

#'
#' ### The working directory
#'
#' The working directory is an important concept to understand. It is the place
#' from where R will be looking for and saving the files. When you write code for
#' your project, it should refer to files in relation to the root of your working
#' directory and only need files within this structure.
#'
#' RStudio assists you in this regard and sets the working directory automatically
#' to the directory where you have placed your project in.
#' If you need to check it, you can use `getwd()`. If for some
#' reason your working directory is not what it should be, you can change it in the
#' RStudio interface by navigating in the file browser where your working directory
#' should be, and clicking on the blue gear icon "More", and select "Set As Working
#' Directory". Alternatively you can use `setwd("/path/to/working/directory")` to
#' reset your working directory. However, your scripts should not include this line
#' because it will fail on someone else's computer.
#'
#' ## Interacting with R
#'
#' The basis of programming is that we write down instructions for the computer to
#' follow, and then we tell the computer to follow those instructions. We write, or
#' *code*, instructions in R because it is a common language that both the computer
#' and we can understand. We call the instructions *commands* and we tell the
#' computer to follow the instructions by *executing* (also called *running*) those
#' commands.
#'
#' There are two main ways of interacting with R: by using the console or by using
#' script files (plain text files that contain your code). The console pane (in
#' RStudio, the bottom left panel) is the place where commands written in the R
#' language can be typed and executed immediately by the computer. It is also where
#' the results will be shown for commands that have been executed. You can type
#' commands directly into the console and press `Enter` to execute those commands,
#' but they will be forgotten when you close the session.
#'
#' Because we want our code and workflow to be reproducible, it is better to type
#' the commands we want in the script editor, and save the script. This way, there
#' is a complete record of what we did, and anyone (including our future selves!)
#' can easily replicate the results on their computer.
#'
#' RStudio allows you to execute commands directly from the script editor by using
#' the <kbd>`Ctrl`</kbd> + <kbd>`Enter`</kbd> shortcut (on Macs, <kbd>`Cmd`</kbd> +
#' <kbd>`Return`</kbd> will work, too). The command on the current line in the
#' script (indicated by the cursor) or all of the commands in the currently
#' selected text will be sent to the console and executed when you press
#' <kbd>`Ctrl`</kbd> + <kbd>`Enter`</kbd>. You can find other keyboard shortcuts in
#' this [RStudio cheatsheet about the RStudio
#' IDE](https://raw.githubusercontent.com/rstudio/cheatsheets/main/rstudio-ide.pdf).
#'
#' At some point in your analysis you may want to check the content of a variable
#' or the structure of an object, without necessarily keeping a record of it in
#' your script. You can type these commands and execute them directly in the
#' console. RStudio provides the <kbd>`Ctrl`</kbd> + <kbd>`1`</kbd> and
#' <kbd>`Ctrl`</kbd> + <kbd>`2`</kbd> shortcuts allow you to jump between the
#' script and the console panes.
#'
#' If R is ready to accept commands, the R console shows a `>` prompt. If it
#' receives a command (by typing, copy-pasting or sent from the script editor using
#' <kbd>`Ctrl`</kbd> + <kbd>`Enter`</kbd>), R will try to execute it, and when
#' ready, will show the results and come back with a new `>` prompt to wait for new
#' commands.
#'
#' If R is still waiting for you to enter more data because it isn't complete yet,
#' the console will show a `+` prompt. It means that you haven't finished entering
#' a complete command. This is because you have not 'closed' a parenthesis or
#' quotation, i.e. you don't have the same number of left-parentheses as
#' right-parentheses, or the same number of opening and closing quotation marks.
#' When this happens, and you thought you finished typing your command, click
#' inside the console window and press <kbd>`Esc`</kbd>; this will cancel the
#' incomplete command and return you to the `>` prompt.
#'
#' ## Seeking help
#'
#' ### Searching function documentation with `?` and `??`
#'
#' If you need help with a specific function, let's say `mean()`, you can type
#' `?mean` or press <kbd>F1</kbd> while your cursor is on the function name. If you
#' are looking for a function to do a particular task, but don't know the function
#' name, you can use the double question mark `??`, for example `??kruskall`. Both
#' commands will open matching help files in RStudio's help panel in the lower
#' right corner. You can also use the help panel to search help directly, as seen
#' in the screenshot.
#'
#' ![RStudio help panel. When typing a word in the search field, it will show
#' related suggestions.](img/rstudiohelp.png)
#'
#' ### Automatic code completion
#'
#' When you write code in RStudio, you can use its automatic code completion to
#' remind yourself of a function's name or arguments. Start typing the function
#' name and pay attention to the suggestions that pop up. Use the up and down arrow
#' to select a suggested code completion and <kbd>Tab</kbd> to apply it. You can
#' also use code completion to complete function's argument names, object, names
#' and file names. It even works if you don't get the spelling 100% correct.
#'
#' ### Package vignettes and cheat sheets
#'
#' In addition to the documentation for individual functions, many packages have
#' *vignettes* -- instructions for how to use the package to do certain tasks.
#' Vignettes are great for learning by example. Vignettes are accessible via the
#' package help and by using the function `browseVignettes()`.
#'
#' There is also a Help menu at the top of the RStudio window, that has cheat
#' sheets for popular packages, RStudio keyboard shortcuts, and more.
#'
#' ### Finding more functions and packages
#'
#' RStudio's help only searches the packages that you have installed on your
#' machine, but there are many more available on
#' [CRAN](https://cran.r-project.org/) and [GitHub](https://github.com/). To search
#' across all available R packages, you can use the website
#' [rdocumentation.org](https://www.rdocumentation.org). Often, a generic Google or
#' internet search "R \<task\>" will send you to the appropriate package
#' documentation or a forum where someone else has already asked your question.
#' Many packages also have websites with additional help, tutorials, news and more
#' (for example [tidyverse.org](https://www.tidyverse.org/)).
#'
#' ### Dealing with error messages
#'
#' Don't get discouraged if your code doesn't run immediately! Error messages are
#' common when programming, and fixing errors is part of any programmer's daily
#' work. Often, the problem is a small typo in a variable name or a missing
#' parenthesis. Watch for the red x's next to your code in RStudio. These may
#' provide helpful hints about the source of the problem.
#'
#' ![RStudio shows a red x next to a line of code that R doesn't understand.
#' ](img/rstudioredx.png)
#'
#' If you can't fix an error yourself, start by googling it. Some error messages
#' are too generic to diagnose a problem (e.g. "subscript out of bounds"). In that
#' case it might help to include the name of the function or package you're using
#' in your query.
#'
#' ### Asking for help
#'
#' If your Google search is unsuccessful, you may want to ask other R users for
#' help. There are different places where you can ask for help. During this
#' workshop, don't hesitate to talk to your neighbor, compare your answers, and ask
#' for help. You might also be interested in organizing regular meetings following
#' the workshop to keep learning from each other. If you have a friend or colleague
#' with more experience than you, they might also be able and willing to help you.
#'
#' Besides that, there are a few places on the internet that provide help:
#'
#' -   [Stack Overflow](https://stackoverflow.com/questions/tagged/r?tab=Votes):
#'     Many questions have already been answered, but the challenge is to use the
#'     right words in your search to find them. If your question hasn't been
#'     answered before and is well crafted, chances are you will get an answer in
#'     less than 5 min. Remember to follow their guidelines on [how to ask a good
#'     question](https://stackoverflow.com/help/how-to-ask).
#' -   The [R-help mailing list](https://stat.ethz.ch/mailman/listinfo/r-help): it
#'     is used by a lot of people (including most of the R core team). If your
#'     question is valid (read its [Posting
#'     Guide](https://www.r-project.org/posting-guide.html)), you are likely to get
#'     an answer very fast, but the tone can be pretty dry and it is not always
#'     very welcoming to new users.
#' -   If your question is about a specific package rather than a base R function,
#'     see if there is a mailing list for the package. Usually it's included in the
#'     DESCRIPTION file of the package that can be accessed using
#'     `packageDescription("<package-name>")`.
#' -   You can also try to contact the package author directly, by emailing them or
#'     opening an issue on the code repository (e.g., on GitHub).
#' -   There are also some topic-specific mailing lists (GIS, phylogenetics,
#'     etc...).  The complete list is [on the R mailing lists website](https://www.r-project.org/mail.html).
#'
#' The key to receiving help from someone is for them to rapidly grasp your
#' problem. Thus, you should be as precise as possible when describing your problem
#' and help others to pinpoint where the issue might be. Try to...
#'
#' -   Use the correct words to describe your problem. Otherwise you might get an
#'     answer pointing to the misuse of your words rather than answering your
#'     question.
#'
#' -   Generalize what you are trying to do, so people outside your field can
#'     understand the question.
#'
#' -   Reduce what does not work to a simple *reproducible example*. For instance,
#'     instead of using your real data set, create a small generic one. For more
#'     information on how to write a reproducible example see [this article from
#'     the reprex
#'     package](https://reprex.tidyverse.org/articles/reprex-dos-and-donts.html).
#'     Learning how to use the [reprex](https://cran.r-project.org/package=reprex)
#'     package is also very helpful for this.
#'
#' -   Include the output of `sessionInfo()` in your question. It provides
#'     information about your platform, the versions of R and the packages that you
#'     are using. As an example, here you can see the versions of R and all the
#'     packages that we are using to run the code in this lesson:
#'

#'

#'

#'
#' ## How to learn more after the workshop?
#'
#' The material we cover during this workshop will give you a taste of how you can
#' use R to analyze data for your own research. However, to do advanced operations
#' such as cleaning your dataset, using statistical methods, or creating beautiful
#' graphics you will need to learn more.
#'
#' The best way to become proficient and efficient at R, as with any other tool, is
#' to use it to address your actual research questions. As a beginner, it can feel
#' daunting to have to write a script from scratch, and given that many people make
#' their code available online, modifying existing code to suit your purpose might
#' get first hands-on experience using R for your own work and help you become
#' comfortable eventually creating your own scripts.
#'

#'
#' ## More resources
#'
#' #### More about R
#'
#' -   The [Introduction to R](https://cran.r-project.org/doc/manuals/R-intro.pdf)
#'     can also be dense for people with little programming experience but it is a
#'     good place to understand the underpinnings of the R language.
#' -   The [R FAQ](https://cran.r-project.org/doc/FAQ/R-FAQ.html) is dense and
#'     technical but it is full of useful information.
#' -   To stay up to date, follow `#rstats` on twitter. Twitter can also be a way
#'     to get questions answered and learn about useful R packages and tipps (e.g.,
#'     [@RLangTips])
#'
#' #### How to ask good programming questions?
#'
#' -   The rOpenSci community call "How to ask questions so they get answered",
#'     ([rOpenSci site](https://ropensci.org/commcalls/2017-03-07/) and [video
#'     recording](https://vimeo.com/208749032)) includes a presentation of the
#'     reprex package and of its philosophy.
#' -   [blog.Revolutionanalytics.com](https://blog.revolutionanalytics.com/2014/01/how-to-ask-for-r-help.html)
#'     and [this blog post by Jon Skeet](https://codeblog.jonskeet.uk/2010/08/29/writing-the-perfect-question/)
#'     have comprehensive advice on how to ask programming questions.
#'
## ---- child="_page_built_on.Rmd"------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#'
#' <p style="text-align: right; font-size: small;">Page built on: `r format(Sys.time(), "📆 %Y-%m-%d ‒ 🕢 %H:%M:%S")`</p>

#' ---
#' title: "Introduction to R"
#' author: "Data Carpentry contributors"
#' minutes: 45
#' ---
#'
#'
## ---- echo = FALSE, purl = TRUE, message = FALSE--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#'
#' ------------
#'
#' > ### Learning Objectives
#' >
#' > * Define the following terms as they relate to R: object, assign, call,
#' >   function, arguments, options.
#' > * Create objects and assign values to them  in R.
#' > * Learn how to _name_ objects.
#' > * Save a script file for later use.
#' > * Use comments to inform script.
#' > * Solve simple arithmetic operations in R.
#' > * Call functions and use arguments to change their default options.
#' > * Inspect the content of vectors and manipulate their content.
#' > * Subset and extract values from vectors.
#' > * Analyze vectors with missing data.
#'
#' ------------
#'
#' ## Creating objects in R
#'
## ---- echo = FALSE, purl = TRUE-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Creating objects in R

#'
#' You can get output from R simply by typing math in the console:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
3 + 5
12 / 7

#'
#' However, to do useful and interesting things, we need to assign _values_ to
#' _objects_. To create an object, we need to give it a name followed by the
#' assignment operator `<-`, and the value we want to give it:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
weight_kg <- 55

#'
#' `<-` is the assignment operator. It assigns values on the right to objects on
#' the left. So, after executing `x <- 3`, the value of `x` is `3`.   For historical reasons, you can also use `=`
#' for assignments, but not in every context. Because of the
#' [slight](https://blog.revolutionanalytics.com/2008/12/use-equals-or-arrow-for-assignment.html)
#' [differences](https://renkun.me/2014/01/28/difference-between-assignment-operators-in-r/)
#' in syntax, it is good practice to always use `<-` for assignments.
#'
#' In RStudio, typing <kbd>Alt</kbd> + <kbd>-</kbd> (push <kbd>Alt</kbd> at the
#' same time as the <kbd>-</kbd> key) will write ` <- ` in a single keystroke in a PC, while typing <kbd>Option</kbd> + <kbd>-</kbd> (push <kbd>Option</kbd> at the
#' same time as the <kbd>-</kbd> key) does the same in a Mac.
#'
#' Objects can be given almost any name such as `x`, `current_temperature`, or `subject_id`. Here are some further guidelines on naming objects:
#'
#' * You want your object names to be explicit and not too long.
#' * They cannot start with a number (`2x` is not valid, but `x2` is).
#' * R is case sensitive, so for example, `weight_kg` is different from `Weight_kg`.
#' * There are some names that cannot be used because they are the names of fundamental functions in R (e.g., `if`, `else`, `for`, see
#' [here](https://stat.ethz.ch/R-manual/R-devel/library/base/html/Reserved.html)
#' for a complete list). In general, even if it's allowed, it's best to not use
#' other function names (e.g., `c`, `T`, `mean`, `data`, `df`, `weights`). If in
#' doubt, check the help to see if the name is already in use.
#' * It's best to avoid dots (`.`) within names. Many function names in R itself have them and dots also have a special meaning (methods) in R and other programming languages. To avoid confusion, don't include dots in names.
#' * It is recommended to use nouns for object names and verbs for function names.
#' * Be consistent in the styling of your code, such as where you put spaces, how you name objects, etc. Styles can include "lower_snake", "UPPER_SNAKE", "lowerCamelCase", "UpperCamelCase", etc. Using a consistent coding style makes your code clearer to read for your future self and your collaborators. In R, three popular style guides come from [Google](https://google.github.io/styleguide/Rguide.xml), [Jean
#' Fan](https://jef.works/R-style-guide/) and the
#' [tidyverse](https://style.tidyverse.org/). The tidyverse style is very comprehensive and may seem overwhelming at first. You can install the [**`lintr`**](https://github.com/jimhester/lintr) package to automatically check for issues in the styling of your code.
#'
#' > ### Objects vs. variables
#' >
#' > What are known as `objects` in `R` are known as `variables` in many other
#' > programming languages. Depending on the context, `object` and `variable` can
#' > have drastically different meanings. However, in this lesson, the two words
#' > are used synonymously. For more information see:
#' > https://cran.r-project.org/doc/manuals/r-release/R-lang.html#Objects
#'
#'
#' When assigning a value to an object, R does not print anything. You can force R to print the value by using parentheses or by typing the object name:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
weight_kg <- 55    # doesn't print anything
(weight_kg <- 55)  # but putting parenthesis around the call prints the value of `weight_kg`
weight_kg          # and so does typing the name of the object

#'
#' Now that R has `weight_kg` in memory, we can do arithmetic with it. For
#' instance, we may want to convert this weight into pounds (weight in pounds is 2.2 times the weight in kg):
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
2.2 * weight_kg

#'
#' We can also change an object's value by assigning it a new one:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
weight_kg <- 57.5
2.2 * weight_kg

#'
#' This means that assigning a value to one object does not change the values of
#' other objects. For example, let's store the animal's weight in pounds in a new
#' object, `weight_lb`:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
weight_lb <- 2.2 * weight_kg

#'
#' and then change `weight_kg` to 100.
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
weight_kg <- 100

#'
#' What do you think is the current content of the object `weight_lb`? 126.5 or 220?
#'
#' ### Saving your code
#'
#' Up to now, your code has been in the console. This is useful for quick queries
#' but not so helpful if you want to revisit your work for any reason.
#' A script can be opened by pressing <kbd>Ctrl</kbd> + <kbd>Shift</kbd> +
#' <kbd>N</kbd>.
#' It is wise to save your script file immediately. To do this press
#' <kbd>Ctrl</kbd> + <kbd>S</kbd>. This will open a dialogue box where you
#' can decide where to save your script file, and what to name it.
#' The `.R` file extension is added automatically and ensures your file
#' will open with RStudio.
#'
#' Don't forget to save your work periodically by pressing <kbd>Ctrl</kbd> +
#' <kbd>S</kbd>.
#'
#'
#' ### Comments
#'
#' The comment character in R is `#`.  Anything to the right of a `#` in a script
#' will be ignored by R. It is useful to leave notes and explanations in your
#' scripts.
#' For convenience, RStudio provides a keyboard shortcut to comment or uncomment a paragraph: after selecting the
#' lines you  want to comment, press at the same time on your keyboard
#' <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>C</kbd>. If you only want to comment
#' out one line, you can put the cursor at any location of that line (i.e. no need
#' to select the whole line), then press <kbd>Ctrl</kbd> + <kbd>Shift</kbd> +
#' <kbd>C</kbd>.
#'
#' > ### Challenge
#' >
#' > What are the values after each statement in the following?
#' >
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
mass <- 47.5            # mass?
age  <- 122             # age?
mass <- mass * 2.0      # mass?
age  <- age - 20        # age?
mass_index <- mass/age  # mass_index?

#'
## ---- echo = FALSE, purl = TRUE-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Challenge
##
## What are the values after each statement in the following?
##
## mass <- 47.5            # mass?
## age  <- 122             # age?
## mass <- mass * 2.0      # mass?
## age  <- age - 20        # age?
## mass_index <- mass/age  # mass_index?

#'
#' ### Functions and their arguments
#'
#' Functions are "canned scripts" that automate more complicated sets of commands
#' including operations assignments, etc. Many functions are predefined, or can be
#' made available by importing R *packages* (more on that later). A function
#' usually takes one or more inputs called *arguments*. Functions often (but not
#' always) return a *value*. A typical example would be the function `sqrt()`. The
#' input (the argument) must be a number, and the return value (in fact, the
#' output) is the square root of that number. Executing a function ('running it')
#' is called *calling* the function. An example of a function call is:
#'
## ---- eval = FALSE, purl = TRUE-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## weight_kg <- sqrt(10)

#'
#' Here, the value of 10 is given to the `sqrt()` function, the `sqrt()` function
#' calculates the square root, and returns the value which is then assigned to
#' the object `weight_kg`. This function takes one argument, other functions might take several.
#'
#' The return 'value' of a function need not be numerical (like that of `sqrt()`),
#' and it also does not need to be a single item: it can be a set of things, or
#' even a dataset. We'll see that when we read data files into R.
#'
#' Arguments can be anything, not only numbers or filenames, but also other
#' objects. Exactly what each argument means differs per function, and must be
#' looked up in the documentation (see below). Some functions take arguments which
#' may either be specified by the user, or, if left out, take on a *default* value:
#' these are called *options*. Options are typically used to alter the way the
#' function operates, such as whether it ignores 'bad values', or what symbol to
#' use in a plot.  However, if you want something specific, you can specify a value
#' of your choice which will be used instead of the default.
#'
#' Let's try a function that can take multiple arguments: `round()`.
#'
## ---- results = 'show', purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
round(3.14159)

#'
#' Here, we've called `round()` with just one argument, `3.14159`, and it has
#' returned the value `3`.  That's because the default is to round to the nearest
#' whole number. If we want more digits we can see how to do that by getting
#' information about the `round` function.  We can use `args(round)` to find what
#' arguments it takes, or look at the
#' help for this function using `?round`.
#'
## ---- results = 'show', purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
args(round)

#'
## ---- eval = FALSE, purl = TRUE-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## ?round

#'
#' We see that if we want a different number of digits, we can
#' type `digits = 2` or however many we want.
#'
## ---- results = 'show', purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
round(3.14159, digits = 2)

#'
#' If you provide the arguments in the exact same order as they are defined you
#' don't have to name them:
#'
## ---- results = 'show', purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
round(3.14159, 2)

#'
#' And if you do name the arguments, you can switch their order:
#'
## ---- results = 'show', purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
round(digits = 2, x = 3.14159)

#'
#' It's good practice to put the non-optional arguments (like the number you're
#' rounding) first in your function call, and to then specify the names of all optional
#' arguments.  If you don't, someone reading your code might have to look up the
#' definition of a function with unfamiliar arguments to understand what you're
#' doing.
#'
#'
#' ## Vectors and data types
#'
## ---- echo = FALSE, purl = TRUE-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Vectors and data types

#'
#' A vector is the most common and basic data type in R, and is pretty much
#' the workhorse of R. A vector is composed by a series of values, which can be
#' either numbers or characters. We can assign a series of values to a vector using
#' the `c()` function. For example we can create a vector of animal weights and assign
#' it to a new object `weight_g`:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
weight_g <- c(50, 60, 65, 82)
weight_g

#'
#' A vector can also contain characters:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
animals <- c("mouse", "rat", "dog")
animals

#'
#' The quotes around "mouse", "rat", etc. are essential here. Without the quotes R
#' will assume objects have been created called `mouse`, `rat` and `dog`. As these objects
#' don't exist in R's memory, there will be an error message.
#'
#' There are many functions that allow you to inspect the content of a
#' vector. `length()` tells you how many elements are in a particular vector:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
length(weight_g)
length(animals)

#'
#' An important feature of a vector, is that all of the elements are the same type of data.
#' The function `class()` indicates what kind of object you are working with:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
class(weight_g)
class(animals)

#'
#' The function `str()` provides an overview of the structure of an object and its
#' elements. It is a useful function when working with large and complex
#' objects:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
str(weight_g)
str(animals)

#'
#' You can use the `c()` function to add other elements to your vector:
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
weight_g <- c(weight_g, 90) # add to the end of the vector
weight_g <- c(30, weight_g) # add to the beginning of the vector
weight_g

#'
#' In the first line, we take the original vector `weight_g`,
#' add the value `90` to the end of it, and save the result back into
#' `weight_g`. Then we add the value `30` to the beginning, again saving the result
#' back into `weight_g`.
#'
#' We can do this over and over again to grow a vector, or assemble a dataset.
#' As we program, this may be useful to add results that we are collecting or
#' calculating.
#'
#' An **atomic vector** is the simplest R **data type** and is a linear vector of a single type. Above, we saw
#' 2 of the 6 main **atomic vector** types  that R
#' uses: `"character"` and `"numeric"` (or `"double"`). These are the basic building blocks that
#' all R objects are built from. The other 4 **atomic vector** types are:
#'
#' * `"logical"` for `TRUE` and `FALSE` (the boolean data type)
#' * `"integer"` for integer numbers (e.g., `2L`, the `L` indicates to R that it's an integer)
#' * `"complex"` to represent complex numbers with real and imaginary parts (e.g.,
#'   `1 + 4i`) and that's all we're going to say about them
#' * `"raw"` for bitstreams that we won't discuss further
#'
#' You can check the type of your vector using the `typeof()` function and inputting your vector as the argument.
#'
#' Vectors are one of the many **data structures** that R uses. Other important
#' ones are lists (`list`), matrices (`matrix`), data frames (`data.frame`)
#'
#'
#' > ### Challenge
#' >
#' >
#' > * We’ve seen that atomic vectors can be of type character,
#' >   numeric (or double), integer, and logical. But what happens if we try to mix these types in
#' >   a single vector?
#' >
## R implicitly converts them to all be the same type

#' >
#' > * What will happen in each of these examples? (hint: use `class()`
#' >   to check the data type of your objects):
#' >
#' >     ```r
#' >     num_char <- c(1, 2, 3, "a")
#' >     num_logical <- c(1, 2, 3, TRUE)
#' >     char_logical <- c("a", "b", "c", TRUE)
#' >     tricky <- c(1, 2, 3, "4")
#' >     ```
#' >
#' > * Why do you think it happens?
#' >
## Vectors can be of only one data type. R tries to

## convert (coerce) the content of this vector to find a "common

## denominator" that doesn't lose any information.

#' >
#' > * How many values in `combined_logical` are `"TRUE"` (as a character) in the
#' >   following example (reusing the 2 `..._logical`s from above):
#' >
#' >     ```r
#' >     combined_logical <- c(num_logical, char_logical)
#' >     ```
#' >
## Only one. There is no memory of past data types, and the coercion happens the

## first time the vector is evaluated. Therefore, the `TRUE` in `num_logical`

## gets converted into a `1` before it gets converted into `"1"` in

## `combined_logical`.

#' >
#' > * You've probably noticed that objects of different types get
#' >   converted into a single, shared type within a vector. In R, we
#' >   call converting objects from one class into another class
#' >   _coercion_. These conversions happen according to a hierarchy,
#' >   whereby some types get preferentially coerced into other
#' >   types. Can you draw a diagram that represents the hierarchy of how
#' >   these data types are coerced?
#' >
## logical &#8594; numeric &#8594; character &#8592; logical

#'
## ---- echo = FALSE, eval = FALSE, purl = TRUE-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## ## We’ve seen that atomic vectors can be of type character, numeric, integer, and
## ## logical. But what happens if we try to mix these types in a single
## ## vector?
##
## ## What will happen in each of these examples? (hint: use `class()` to
## ## check the data type of your object)
## num_char <- c(1, 2, 3, "a")
##
## num_logical <- c(1, 2, 3, TRUE)
##
## char_logical <- c("a", "b", "c", TRUE)
##
## tricky <- c(1, 2, 3, "4")
##
## ## Why do you think it happens?
##
##
## ## How many values in `combined_logical` are `"TRUE"` (as a character) in the
## ## following example:
## combined_logical <- c(num_logical, char_logical)
##
## ## You've probably noticed that objects of different types get
## ## converted into a single, shared type within a vector. In R, we call
## ## converting objects from one class into another class
## ## _coercion_. These conversions happen according to a hierarchy,
## ## whereby some types get preferentially coerced into other types. Can
## ## you draw a diagram that represents the hierarchy of how these data
## ## types are coerced?

#'
#' ## Subsetting vectors
#'
#' If we want to extract one or several values from a vector, we must provide one
#' or several indices in square brackets. For instance:
#'
## ---- results = 'show', purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
animals <- c("mouse", "rat", "dog", "cat")
animals[2]
animals[c(3, 2)]

#'
#' We can also repeat the indices to create an object with more elements than the
#' original one:
#'
## ---- results = 'show', purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
more_animals <- animals[c(1, 2, 3, 2, 1, 4)]
more_animals

#'
#' R indices start at 1. Programming languages like Fortran, MATLAB, Julia, and R start
#' counting at 1, because that's what human beings typically do. Languages in the C
#' family (including C++, Java, Perl, and Python) count from 0 because that's
#' simpler for computers to do.
#'
#' ### Conditional subsetting
#'
#' Another common way of subsetting is by using a logical vector. `TRUE` will
#' select the element with the same index, while `FALSE` will not:
#'
## ---- results = 'show', purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
weight_g <- c(21, 34, 39, 54, 55)
weight_g[c(TRUE, FALSE, FALSE, TRUE, TRUE)]

#'
#' Typically, these logical vectors are not typed by hand, but are the output of
#' other functions or logical tests. For instance, if you wanted to select only the
#' values above 50:
#'
## ---- results = 'show', purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
weight_g > 50    # will return logicals with TRUE for the indices that meet the condition
## so we can use this to select only the values above 50
weight_g[weight_g > 50]

#'
#' You can combine multiple tests using `&` (both conditions are true, AND) or `|`
#' (at least one of the conditions is true, OR):
#'
## ---- results = 'show', purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
weight_g[weight_g > 30 & weight_g < 50]
weight_g[weight_g <= 30 | weight_g == 55]
weight_g[weight_g >= 30 & weight_g == 21]

#'
#' Here, `>` for "greater than", `<` stands for "less than", `<=` for "less than
#' or equal to", and `==` for "equal to". The double equal sign `==` is a test for
#' numerical equality between the left and right hand sides, and should not be
#' confused with the single `=` sign, which performs variable assignment (similar
#' to `<-`).
#'
#' A common task is to search for certain strings in a vector.  One could use the
#' "or" operator `|` to test for equality to multiple values, but this can quickly
#' become tedious. The function `%in%` allows you to test if any of the elements of
#' a search vector are found:
#'
## ---- results = 'show', purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
animals <- c("mouse", "rat", "dog", "cat", "cat")

# return both rat and cat
animals[animals == "cat" | animals == "rat"]

# return a logical vector that is TRUE for the elements within animals
# that are found in the character vector and FALSE for those that are not
animals %in% c("rat", "cat", "dog", "duck", "goat", "bird", "fish")

# use the logical vector created by %in% to return elements from animals
# that are found in the character vector
animals[animals %in% c("rat", "cat", "dog", "duck", "goat", "bird", "fish")]

#'
#' > ### Challenge (optional){.challenge}
#' >
#' > * Can you figure out why `"four" > "five"` returns `TRUE`?
#' >
## When using ">" or "<" on strings, R compares their alphabetical order.

## Here "four" comes after "five", and therefore is "greater than" it.

#'
## ---- echo = FALSE, purl = TRUE-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Challenge (optional)
##
## * Can you figure out why `"four" > "five"` returns `TRUE`?

#'
#'
#' ## Missing data
#'
#' As R was designed to analyze datasets, it includes the concept of missing data
#' (which is uncommon in other programming languages). Missing data are represented
#' in vectors as `NA`.
#'
#' When doing operations on numbers, most functions will return `NA` if the data
#' you are working with include missing values. This feature
#' makes it harder to overlook the cases where you are dealing with missing data.
#' You can add the argument `na.rm = TRUE` to calculate the result as if the missing
#' values were removed (`rm` stands for ReMoved) first.
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
heights <- c(2, 4, 4, NA, 6)
mean(heights)
max(heights)
mean(heights, na.rm = TRUE)
max(heights, na.rm = TRUE)

#'
#' If your data include missing values, you may want to become familiar with the
#' functions `is.na()`, `na.omit()`, and `complete.cases()`. See below for
#' examples.
#'
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## Extract those elements which are not missing values.
heights[!is.na(heights)]

## Returns the object with incomplete cases removed.
#The returned object is an atomic vector of type `"numeric"` (or #`"double"`).
na.omit(heights)

## Extract those elements which are complete cases.
#The returned object is an atomic vector of type `"numeric"` (or #`"double"`).
heights[complete.cases(heights)]

#' Recall that you can use the `typeof()` function to find the type of your atomic vector.
#'
#' > ### Challenge
#' >
#' > 1. Using this vector of heights in inches, create a new vector, `heights_no_na`, with the NAs removed.
#' >
#' >     ```r
#' >     heights <- c(63, 69, 60, 65, NA, 68, 61, 70, 61, 59, 64, 69, 63, 63, NA, 72, 65, 64, 70, 63, 65)
#' >     ```
#' > 2. Use the function `median()` to calculate the median of the `heights` vector.
#' >
#' > 3. Use R to figure out how many people in the set are taller than 67 inches.
#' >
## ---- answer=TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
heights <- c(63, 69, 60, 65, NA, 68, 61, 70, 61, 59, 64, 69, 63, 63, NA, 72, 65, 64, 70, 63, 65)

# 1.
heights_no_na <- heights[!is.na(heights)]
# or
heights_no_na <- na.omit(heights)
# or
heights_no_na <- heights[complete.cases(heights)]

# 2.
median(heights, na.rm = TRUE)

# 3.
heights_above_67 <- heights_no_na[heights_no_na > 67]
length(heights_above_67)

#'
#'
## ---- echo = FALSE, purl = TRUE-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## ### Challenge
## 1. Using this vector of heights in inches, create a new vector with the NAs removed.
##
##    heights <- c(63, 69, 60, 65, NA, 68, 61, 70, 61, 59, 64, 69, 63, 63, NA, 72, 65, 64, 70, 63, 65)
##
## 2. Use the function `median()` to calculate the median of the `heights` vector.
##
## 3. Use R to figure out how many people in the set are taller than 67 inches.

#'
#' Now that we have learned how to write scripts, and the basics of R's data
#' structures, we are ready to start working with the Portal dataset we have been
#' using in the other lessons, and learn about data frames.
#'
#'
## ---- child="_page_built_on.Rmd"------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#'
#' <p style="text-align: right; font-size: small;">Page built on: `r format(Sys.time(), "📆 %Y-%m-%d ‒ 🕢 %H:%M:%S")`</p>

#' ---
#' title: "Starting with data"
#' author: "Data Carpentry contributors"
#' minutes: 20
#' ---
#'
## ---- echo=FALSE, purl = TRUE, message = FALSE----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#'
#'
#' ### Reading the data into R
#'
#' The file has now been downloaded to the destination you specified, but R has not
#' yet loaded the data from the file into memory. To do this, we can use the
#' `read_excel()` function from the **`readxl`** package.
#'
#' Packages in R are basically sets of additional functions that let you do more
#' stuff. The functions we've been using so far, like `round()`, `sqrt()`, or `c()`
#' come built into R. Packages give you access to additional functions beyond base R.
#' A similar function to `read_csv()` from the tidyverse package is `read.csv()` from
#' base R. We don't have time to cover their differences but notice that the exact
#' spelling determines which function is used.
#' Before you use a package for the first time you need to install it on your
#' machine, and then you should import it in every subsequent R session when you
#' need it.
#'
#' To install the **`tidyverse`** package, we can type
#' `install.packages("tidyverse")` straight into the console. In fact, it's better
#' to write this in the console than in our script for any package, as there's no
#' need to re-install packages every time we run the script.
#' Then, to load the package type:
#'
## ---- message = FALSE, purl = TRUE----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## load the tidyverse packages, incl. dplyr
library(tidyverse)
library(readxl)
#'
#' Now we can use the functions from the **`tidyverse`** package.
#' Let's use `read_excel()` to read the data into R, into a an object called a "data frame"
#' (we will learn more about data frames later):
#'
bioplex <- read_excel("example_bioplex_data.xlsx")
bioplex
bioplex <- read_excel("example_bioplex_data.xlsx", skip = 6)

#' Often you get data as CSV.  This is usually cleaner. We can import data from
#' a CSV with read_csv(),
#' `read_csv()` assumes that fields are delineated by commas. However, in several
#' > countries, the comma is used as a decimal separator and the semicolon (;) is
#' > used as a field delineator. If you want to read in this type of files in R,
#' > you can use the `read_csv2()` function. It behaves like `read_csv()` but
#' > uses different parameters for the decimal and the field separators.
#' There is also the `read_tsv()` for tab separated data files and `read_delim()`
#' > for less common formats.
#' > Check out the help for `read_csv()` by typing `?read_csv` to learn more.

read_csv("example_bioplex_data.csv")


#'
#' When you execute `read_excel` or `read_csv()` on a data file, it looks through the first 1000 rows
#' of each column and guesses its data type. For example, in this dataset,
#' `read_excel()` reads `Well` and `Type` as `col_character` abd our other rows
#' as `dbl` - numeric values.
#'
#' We can see the contents of the first few lines of the data by typing its
#' name: `bioplex`. By default, this will show you as many rows and columns of
#' the data as fit on your screen.
#' If you wanted the first 50 rows, you could type `print(bioplex, n = 50)`
#'
#' We can also extract the first few lines of this data using the function
#' `head()`:
#'
head(bioplex)
#'
#' Unlike the `print()` function, `head()` returns the extracted data. You could
#' use it to assign the first 100 rows of `bioplex` to an object using
#' `bioplex_sample <- head(bioplex, 50)`. This can be useful if you want to try
#' out complex computations on a subset of your data before you apply them to the
#' whole data set.
#' There is a similar function that lets you extract the last few lines of the data
#' set. It is called (you might have guessed it) `tail()`.
#'
#' To open the dataset in RStudio's Data Viewer, use the `view()` function:
#'
## ---- eval = FALSE, purl = TRUE-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
view(bioplex)

#'
#' ## What are data frames?
#'
#' When we loaded the data into R, it got stored as an object of class `tibble`,
#' which is a special kind of data frame (the difference is not important for our
#' purposes, but you can learn more about tibbles
#' [here](https://tibble.tidyverse.org/)).
#' Data frames are the _de facto_ data structure for most tabular data, and what we
#' use for statistics and plotting.
#' Data frames can be created by hand, but most commonly they are generated by
#' functions like `read_csv()`; in other words, when importing
#' spreadsheets from your hard drive or the web.
#'
#' A data frame is the representation of data in the format of a table where the
#' columns are vectors that all have the same length. Because columns are
#' vectors, each column must contain a single type of data (e.g., characters, integers,
#' ). For example, here is a figure depicting a data frame comprising a
#' numeric, a character, and a logical vector.
#'
#' ![](./img/data-frame.svg)
#'
#' We can see this also when inspecting the <b>str</b>ucture of a data frame
#' with the function `str()`:
#'
str(bioplex)
#'
#' ## Inspecting data frames
#'
#' We already saw how the functions `head()` and `str()` can be useful to check the
#' content and the structure of a data frame. Here is a non-exhaustive list of
#' functions to get a sense of the content/structure of the data. Let's try them out!
#'
#' * Size:
#'     * `dim(bioplex)` - returns a vector with the number of rows in the first element,
#'           and the number of columns as the second element (the **dim**ensions of
#'           the object)
#'     * `nrow(bioplex)` - returns the number of rows
#'     * `ncol(bioplex)` - returns the number of columns
#'
#' * Content:
#'     * `head(bioplex)` - shows the first 6 rows
#'     * `tail(bioplex)` - shows the last 6 rows
#'
#' * Names:
#'     * `names(bioplex)` - returns the column names (synonym of `colnames()` for `data.frame`
#' 	   objects)
#'
#' * Summary:
#'     * `str(bioplex)` - structure of the object and information about the class, length and
#' 	   content of  each column
#'     * `summary(bioplex)` - summary statistics for each column
#'
#' Note: most of these functions are "generic", they can be used on other types of
#' objects besides `data.frame`.
#'
#'
#' > ### Challenge
#' >
#' > Based on the output of `str(bioplex)`, can you answer the following questions?
#' >
#' > * What is the class of the object `bioplex`?
#' > * How many rows and how many columns are in this object?
#' >

#'
#'
## ---- echo=FALSE, purl=TRUE-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Challenge
## Based on the output of `str(bioplex)`, can you answer the following questions?
##
## * What is the class of the object `bioplex`?
## * How many rows and how many columns are in this object?


str(bioplex)

## * class: data frame
## * how many rows: 34786,  how many columns: 13


#'
#'
## ---- echo=FALSE, purl=TRUE-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Challenge
## Based on the output of `str(bioplex)`, can you answer the following questions?
##
## * What is the class of the object `bioplex`?
## * How many rows and how many columns are in this object?


#'
#'
#'
#' ## Indexing and subsetting data frames
#'
## ---- echo=FALSE, purl=TRUE-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Indexing and subsetting data frames

#'
#'
#' Our survey data frame has rows and columns (it has 2 dimensions), if we want to
#' extract some specific data from it, we need to specify the "coordinates" we
#' want from it. Row numbers come first, followed by column numbers. However, note
#' that different ways of specifying these coordinates lead to results with
#' different classes.
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# We can extract specific values by specifying row and column indices
# in the format:
# data_frame[row_index, column_index]
# For instance, to extract the first row and column from bioplex:
bioplex[1, 1]

# First row, sixth column:
bioplex[1, 6]

# We can also use shortcuts to select a number of rows or columns at once
# To select all columns, leave the column index blank
# For instance, to select all columns for the first row:
bioplex[1, ]

# The same shortcut works for rows --
# To select the first column across all rows:
bioplex[, 1]

# An even shorter way to select first column across all rows:
bioplex[1] # No comma!

# To select multiple rows or columns, use vectors!
# To select the first three rows of the 5th and 6th column
bioplex[c(1, 2, 3), c(5, 6)]

# We can use the : operator to create those vectors for us:
bioplex[1:3, 5:6]

# This is equivalent to head_bioplex <- head(bioplex)
head_bioplex <- bioplex[1:6, ]

# As we've seen, when working with tibbles
# subsetting with single square brackets ("[]") always returns a data frame.
# If you want a vector, use double square brackets ("[[]]")

# For instance, to get the first column as a vector:
bioplex[[1]]

# To get the first value in our data frame:
bioplex[[1, 1]]

#'
#' `:` is a special function that creates numeric vectors of integers in increasing
#' or decreasing order, test `1:10` and `10:1` for instance.
#'
#' You can also exclude certain indices of a data frame using the "`-`" sign:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bioplex[, -1]                 # The whole data frame, except the first column
bioplex[-(7:nrow(bioplex)), ] # Equivalent to head(bioplex)

#'
#' Data frames can be subset by calling indices (as shown previously), but also by calling their column names directly:
#'
## ---- eval = FALSE, purl = TRUE-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## # As before, using single brackets returns a data frame:
## bioplex["Well"]
## bioplex[, "Type"]
##
## # Double brackets returns a vector:
## bioplex[["Type"]]
##
## # We can also use the $ operator with column names instead of double brackets
## # This returns a vector:
## bioplex$Type

#'
#' In RStudio, you can use the autocompletion feature to get the full and correct names of the columns.
#'
#' > ### Challenge
#' >
#' > 1. Create a `data.frame` (`surveys_50`) containing only the data in
#' >    row 50 of the `bioplex` dataset.
#' >
#' > 2. Notice how `nrow()` gave you the number of rows in a `data.frame`?
#' >
#' >      * Use that number to pull out just that last row in the data frame.
#' >      * Compare that with what you see as the last row using `tail()` to make
#' >        sure it's meeting expectations.
#' >      * Pull out that last row using `nrow()` instead of the row number.
#' >      * Create a new data frame (`bioplex_last`) from that last row.
#' >
#' > 3. Use `nrow()` to extract the row that is in the middle of the data
#' >    frame. Store the content of this row in an object named `bioplex_middle`.
#' >
#' > 4. Combine `nrow()` with the `-` notation above to reproduce the behavior of
#' >    `head(bioplex)`, keeping just the first through 6th rows of the bioplex
#' >    dataset.
#' >
## ---- answer=TRUE, purl = TRUE--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## 1.
bioplex_50 <- bioplex[50, ]
## 2.
# Saving `n_rows` to improve readability and reduce duplication
n_rows <- nrow(bioplex)
bioplex_last <- bioplex[n_rows, ]
## 3.
bioplex_middle <- bioplex[n_rows / 2, ]
## 4.
bioplex_head <- bioplex[-(7:n_rows), ]

#' > ### Challenge
#' >
#' > 1. We have seen how data frames are created when using `read_csv()`, but
#' >   they can also be created by hand with the `data.frame()` function.  There are
#' >   a few mistakes in this hand-crafted `data.frame`. Can you spot and fix them?
#' >   Don't hesitate to experiment!
#' >
## ---- eval=FALSE, purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## animal_data <- data.frame(
##           animal = c(dog, cat, sea cucumber, sea urchin),
##           feel = c("furry", "squishy", "spiny"),
##           weight = c(45, 8 1.1, 0.8)
##           )

#' >
## ---- eval=FALSE, purl=TRUE, echo=FALSE-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## ## Challenge:
## ##  There are a few mistakes in this hand-crafted `data.frame`,
## ##  can you spot and fix them? Don't hesitate to experiment!
## animal_data <- data.frame(
##       animal = c(dog, cat, sea cucumber, sea urchin),
##       feel = c("furry", "squishy", "spiny"),
##       weight = c(45, 8 1.1, 0.8)
##       )

#' >
#' > 2. Can you predict the class for each of the columns in the following example?
#' >    Check your guesses using `str(country_climate)`:
#' >      * Are they what you expected?  Why? Why not?
#' >      * What would you need to change to ensure that each column had the accurate data type?
#' >
## ---- eval=FALSE, purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## country_climate <- data.frame(
##        country = c("Canada", "Panama", "South Africa", "Australia"),
##        climate = c("cold", "hot", "temperate", "hot/temperate"),
##        temperature = c(10, 30, 18, "15"),
##        northern_hemisphere = c(TRUE, TRUE, FALSE, "FALSE"),
##        has_kangaroo = c(FALSE, FALSE, FALSE, 1)
##        )

#' >
## ---- eval=FALSE, purl=TRUE, echo=FALSE-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## ## Challenge:
## ##   Can you predict the class for each of the columns in the following
## ##   example?
## ##   Check your guesses using `str(country_climate)`:
## ##   * Are they what you expected? Why? why not?
## ##   * What would you need to change to ensure that each column had the
## ##     accurate data type?
## country_climate <- data.frame(country = c("Canada", "Panama", "South Africa", "Australia"),
##                                climate = c("cold", "hot", "temperate", "hot/temperate"),
##                                temperature = c(10, 30, 18, "15"),
##                                northern_hemisphere = c(TRUE, TRUE, FALSE, "FALSE"),
##                                has_kangaroo = c(FALSE, FALSE, FALSE, 1))

#' >
## * missing quotations around the names of the animals

## * missing one entry in the `feel` column (probably for one of the furry animals)

## * missing one comma in the `weight` column

## * `country`, `climate`, `temperature`, and `northern_hemisphere` are

##    characters; `has_kangaroo` is numeric

## * removing the quotes in `temperature` and `northern_hemisphere` and replacing 1

##   by TRUE in the `has_kangaroo` column would give what was probably

##   intended

#' >
#'
#' The automatic conversion of data type is sometimes a blessing, sometimes an
#' annoyance. Be aware that it exists, learn the rules, and double check that data
#' you import in R are of the correct type within your data frame. If not, use it
#' to your advantage to detect mistakes that might have been introduced during data
#' entry (for instance, a letter in a column that should only contain numbers).
#'
#' Learn more in this [RStudio tutorial](https://support.rstudio.com/hc/en-us/articles/218611977-Importing-Data-with-RStudio)
#'
#' ## Formatting dates
#'
#' A common issue that new (and experienced!) R users have is
#' converting date and time information into a variable that is suitable for
#' analyses. One way to store date information is to store each component of the
#' date in a separate column. Using `str()`, we can confirm that our data frame
#' does indeed have a separate column for day, month, and year, and that each of
#' these columns contains integer values.
#'
## ---- eval=FALSE, purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## str(surveys)

#'
#' ------------
#'
#' > ### Learning Objectives
#' >
#' > * Describe the purpose of the **`dplyr`** and **`tidyr`** packages.
#' > * Select certain columns in a data frame with the **`dplyr`** function `select`.
#' > * Extract certain rows in a data frame according to logical (boolean) conditions with the **`dplyr`** function `filter` .
#' > * Link the output of one **`dplyr`** function to the input of another function with the 'pipe' operator `%>%`.
#' > * Add new columns to a data frame that are functions of existing columns with `mutate`.
#' > * Use the split-apply-combine concept for data analysis.
#' > * Use `summarize`, `group_by`, and `count` to split a data frame into groups of observations, apply summary statistics for each group, and then combine the results.
#' > * Describe the concept of a wide and a long table format and for which purpose those formats are useful.
#' > * Describe what key-value pairs are.
#' > * Reshape a data frame from long to wide format and back with the `spread` and `gather` commands from the **`tidyr`** package.
#' > * Export a data frame to a .csv file.
#'
#' ------------
#'
#' # Data manipulation using **`dplyr`** and **`tidyr`**
#'
#' Bracket subsetting is handy, but it can be cumbersome and difficult to read,
#' especially for complicated operations. Enter **`dplyr`**. **`dplyr`** is a package for
#' helping with tabular data manipulation. It pairs nicely with **`tidyr`** which enables you to swiftly convert between different data formats for plotting and analysis.
#'
#' The **`tidyverse`** package is an
#' "umbrella-package" that installs **`tidyr`**, **`dplyr`**, and several other useful packages for data analysis, such as  **`ggplot2`**, **`tibble`**, etc.
#'
#' The **`tidyverse`** package tries to address 3 common issues that arise when
#' doing data analysis in R:
#'
#' 1. The results from a base R function sometimes depend on the type of data.
#' 2. R expressions are used in a non standard way, which can be confusing for new
#'    learners.
#' 3. The existence of hidden arguments having default operations that new learners are not aware
#'    of.
#'
#' You should already have installed and loaded the **`tidyverse`** package.
#' If you haven't already done so, you can type `install.packages("tidyverse")` straight into the console. Then, type `library(tidyverse)` to load the package.
#'
#' ## What are **`dplyr`** and **`tidyr`**?
#'
#' The package **`dplyr`** provides helper tools for the most common data manipulation
#' tasks. It is built to work directly with data frames, with many common tasks
#' optimized by being written in a compiled language (C++). An additional feature is the
#' ability to work directly with data stored in an external database. The benefits of
#' doing this are that the data can be managed natively in a relational database,
#' queries can be conducted on that database, and only the results of the query are
#' returned.
#'
#' This addresses a common problem with R in that all operations are conducted
#' in-memory and thus the amount of data you can work with is limited by available
#' memory. The database connections essentially remove that limitation in that you
#' can connect to a database of many hundreds of GB, conduct queries on it directly, and pull
#' back into R only what you need for analysis.
#'
#' The package **`tidyr`** addresses the common problem of wanting to reshape your data for
#' plotting and usage by different R functions. For example, sometimes we want data sets where we have one
#' row per measurement. Other times we want a data frame where each measurement type has its
#' own column, and rows are instead more aggregated groups
#' (e.g., a time period, an experimental unit like a plot or a batch number).
#' Moving back and forth between these formats is non-trivial, and **`tidyr`** gives you tools
#' for this and more sophisticated  data manipulation.
#'
#' To learn more about **`dplyr`** and **`tidyr`** after the workshop, you may want to check out this
#' [handy data transformation with **`dplyr`** cheatsheet](https://raw.githubusercontent.com/rstudio/cheatsheets/main/data-transformation.pdf)
#' and this [one about **`tidyr`**](https://raw.githubusercontent.com/rstudio/cheatsheets/main/data-import.pdf).
#'
#' As before, we'll read in our data using the `read_csv()` function from the
#' tidyverse package **`readr`**.
#'
#'
## ---- results = 'hide', purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
library(tidyverse)
library(readxl)
bioplex <- read_excel("example_bioplex_data.xlsx", skip = 6)

#'
## ---- results = 'hide', purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## inspect the data
str(bioplex)

#'
## ---- eval=FALSE, purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## ## preview the data
## view(surveys)

#'
#' Next, we're going to learn some of the most common **`dplyr`** functions:
#'
#' - `select()`: subset columns
#' - `filter()`: subset rows on conditions
#' - `mutate()`: create new columns by using information from other columns
#' - `group_by()` and `summarize()`: create summary statistics on grouped data
#' - `arrange()`: sort results
#' - `count()`: count discrete values
#'
#' ## Selecting columns and filtering rows
#'
#' To select columns of a data frame, use `select()`. The first argument
#' to this function is the data frame (`bioplex`), and the subsequent
#' arguments are the columns to keep.
#'
## ---- results = 'hide', purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select(bioplex, Well, Type, NIV)

#'
#' To select all columns *except* certain ones, put a "-" in front of
#' the variable to exclude it.
#'
## ---- results = 'hide', purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select(bioplex, -RESTVM, -RESTVP, -MOCK)

#'
#' This will select all the variables in `bioplex` except `RESTVM`
#' and `RESTVP`, and `MOCK`.
#'
#' To choose rows based on a specific criterion, use `filter()`:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
filter(bioplex, Type == "PBS")

#'
#' ## Pipes
#'
#' What if you want to select and filter at the same time? There are three
#' ways to do this: use intermediate steps, nested functions, or pipes.
#'
#' With intermediate steps, you create a temporary data frame and use
#' that as input to the next function, like this:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bioplexB <- filter(bioplex, Type != "PBS")
bioplex_real <- select(bioplexB, -MOCK)

#'
#' This is readable, but can clutter up your workspace with lots of objects that you have to name individually. With multiple steps, that can be hard to keep track of.
#'
#' You can also nest functions (i.e. one function inside of another), like this:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bioplex_real <- select(filter(bioplex, Type != "PBS"), -MOCK)

#'
#' This is handy, but can be difficult to read if too many functions are nested, as
#' R evaluates the expression from the inside out (in this case, filtering, then selecting).
#'
#' The last option, *pipes*, are a recent addition to R. Pipes let you take
#' the output of one function and send it directly to the next, which is useful
#' when you need to do many things to the same dataset.  Pipes in R look like
#' `%>%` and are made available via the **`magrittr`** package, installed automatically
#' with **`dplyr`**. If you use RStudio, you can type the pipe with <kbd>Ctrl</kbd>
#' + <kbd>Shift</kbd> + <kbd>M</kbd> if you have a PC or <kbd>Cmd</kbd> +
#' <kbd>Shift</kbd> + <kbd>M</kbd> if you have a Mac.
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bioplex %>%
  filter(Type != "PBS") %>%
  select(-MOCK)

#'
#' In the above code, we use the pipe to send the `bioplex` dataset first through
#' `filter()`  then through `select()`
#' Since `%>%` takes
#' the object on its left and passes it as the first argument to the function on
#' its right, we don't need to explicitly include the data frame as an argument
#' to the `filter()` and `select()` functions any more.
#'
#' Some may find it helpful to read the pipe like the word "then." For instance,
#' in the example above, we took the data frame `surveys`, *then* we `filter`ed,
#' *then* we `select`ed columns  The **`dplyr`** functions by themselves are somewhat simple,
#' but by combining them into linear workflows with the pipe we can accomplish
#' more complex manipulations of data frames.
#'
#' If we want to create a new object with this smaller version of the data, we
#' can assign it a new name:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bioplex_real <- bioplex %>%
  filter(Type != "PBS") %>%
  select(-MOCK)

bioplex_real

#'
#' Note that the final data frame is the leftmost part of this expression.
#'
#' > ### Challenge {.challenge}
#' >
#' >  Using pipes, subset the `bioplex` data to include PBS, Positive or Negative Controls
#' >  and Well, Type, NIV, MINV, and MOCK data
#' >
#' >
## ---- answer=TRUE, eval=FALSE, purl = TRUE--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## bioplex %>%
##     filter(Type == "PBS" | Type == "Negative" | Type == "Positive) %>%
##     select(Well, Type, NIV, MENV)


#'
#' ### Mutate
#'
#' Frequently you'll want to create new columns based on the values in existing
#' columns, for example to do unit conversions, or to find the ratio of values in two
#' columns. For this we'll use `mutate()`.
#'
#' To create a new column of weight in kg:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bioplex %>%
  mutate(NIV_log10 = log10(NIV))

#'
#' You can also create a second new column based on the first new column within the same call of `mutate()`:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bioplex %>%
  mutate(NIV_log10 = log10(NIV),
         MENV_log10 = log10(MENV))

#'
#' If this runs off your screen and you just want to see the first few rows, you
#' can use a pipe to view the `head()` of the data. (Pipes work with non-**`dplyr`**
#' functions, too, as long as the **`dplyr`** or `magrittr` package is loaded).
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bioplex %>%
  mutate(NIV_log10 = log10(NIV)) %>%
  head()


#' `if_else()` is also useful, as is %in%
bioplex2 <- bioplex %>%
  mutate(Type = if_else(Type %in% c("PBS", "Positive", "Negative"), Type, "Sample"))
bioplex2

#'
#' The first few rows of the output are full of `NA`s, so if we wanted to remove
#' those we could insert a `filter()` in the chain:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bioplex2 %>%
  filter(!is.na(CEDV)) %>%
  mutate(NIV_log10 = log10(NIV))

#'
#' `is.na()` is a function that determines whether something is an `NA`. The `!`
#' symbol negates the result, so we're asking for every row where weight *is not* an `NA`.
#'
#' > ### Challenge
#' >
#' >  Create a new data frame from the `bioplex` data that meets the following
#' >  criteria: contains only the `Well` and `Type` columns, a new column called
#' >  `MOJV_log10` and  `MOCK_log10` containing the `MOJV` and `MOCK` values,
#' >   and a modified `Type2` column where all the Type values strating with `X`
#' >  Are called `sample`.
#' >  In this data frame, there are records where MOCK was over 1000
#' >
#' >  **Hint**: think about how the commands should be ordered to produce this data frame!
#' >

#' ### Split-apply-combine data analysis and the `summarize()` function
#'
#' Many data analysis tasks can be approached using the *split-apply-combine*
#' paradigm: split the data into groups, apply some analysis to each group, and
#' then combine the results. Key function of **`dplyr`** for this workflow are
#' `group_by()` and `summarize()`.
#'
#'
#' #### The `group_by()` and `summarize()` functions
#'
#' `group_by()` is often used together with `summarize()`, which collapses each
#' group into a single-row summary of that group.  `group_by()` takes as arguments
#' the column names that contain the **categorical** variables for which you want
#' to calculate the summary statistics. So to compute the mean `weight` by sex:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bioplex2 %>%
  group_by(Type) %>%
  summarize(mean_NIV = mean(NIV))


bioplex2 %>%
  group_by(Type) %>%
  summarize(mean_NIV = mean(CEDV))

bioplex2 %>%
  group_by(Type) %>%
  summarize(mean_NIV = mean(CEDV, na.rm = TRUE))


#'
#' Once the data are grouped, you can also summarize multiple variables at the same
#' time (and not necessarily on the same variable). For instance, we could add a
#' column indicating the minimum weight for each species for each sex:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bioplex2 %>%
  filter(!is.na(CEDV)) %>%
  group_by(Type) %>%
  summarize(mean_NIV = mean(NIV),
            min_MENV = min(MENV))

#'
#' It is sometimes useful to rearrange the result of a query to inspect the values. For instance, we can sort on `min_weight` to put the lighter species first:
#'
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bioplex2 %>%
  arrange(NIV)

#'
#' To sort in descending order, we need to add the `desc()` function. If we want to sort the results by decreasing order of mean weight:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bioplex2 %>%
  arrange(desc(NIV))

#'
#'
#' #### Counting
#'
#' When working with data, we often want to know the number of observations found
#' for each factor or combination of factors. For this task, **`dplyr`** provides
#' `count()`. For example, if we wanted to count the number of rows of data for
#' each sex, we would do:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bioplex %>%
  count(Type)

bioplex2 %>%
  count(Type)



#'
#' The `count()` function is shorthand for something we've already seen: grouping by a variable, and summarizing it by counting the number of observations in that group. In other words, `surveys %>% count()` is equivalent to:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bioplex2 %>%
  group_by(Type) %>%
  summarise(count = n())

#'
#' For convenience, `count()` provides the `sort` argument:
#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bioplex2 %>%
  count(Type, sort = TRUE)


#'
#' From the table above, we may learn that, for instance, there are 75 observations of
#' the *albigula* species that are not specified for its sex (i.e. `NA`).
#'
#' > ### Challenge {.challenge}
#' >
#' >  Use `group_by()` and `summarize()` to find the median, min, and max NIV value
#' > length for each Type in `bioplex2`. Also add the number of
#' > observations (hint: see `?n`).
#' >
## ---- answer=TRUE, purl = TRUE--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#'
#' ### Reshaping with pivot_longer and pivot_wider
#'
#' Long vs wide data
#' We can do both these of transformations with two `tidyr` functions, `spread()`
#' and `gather()`.

library(tidyverse)
bioplex <- read_excel("example_bioplex_data.xlsx", skip = 6)
bioplex2 <- bioplex %>%
  mutate(Type = if_else(Type %in% c("PBS", "Positive", "Negative"), Type, "Sample"))
bioplex2
#' #### Spreading
#'
#' `pivot_longer()` takes three principal arguments:
#'
#' 1. the data
#' 2. the columns that we want to pivot.
#' 3. What we want to call our columns

#'
#' Let's use `pivot_longer()` to transform surveys to find the mean value of
#' of each Bioplex bead

#'
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bioplex_long <- bioplex2 %>%
  pivot_longer(c(-Well, -Type), names_to = "Bead", values_to = "MFI")
bioplex_long

# Now we can transform everything at once
bioplex_long %>%
  mutate(log10_MFI = log10(MFI))


#' No we can spread the data back with pivot_wider
## ---- purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
bioplex_long %>%
  mutate(log10_MFI = log10(MFI)) %>%
  select(-MFI) %>%
  pivot_wider(values_from = "log10_MFI", names_from = "Bead")

#'
#' ------------
#'
#' > ### Learning Objectives
#' >
#' > * Produce scatter plots, boxplots, and time series plots using ggplot.
#' > * Set universal plot settings.
#' > * Describe what faceting is and apply faceting in ggplot.
#' > * Modify the aesthetics of an existing ggplot plot (including axis labels and color).
#' > * Build complex and customized plots from data in a data frame.
#'
#' --------------
#'
#' We start by loading the required packages. **`ggplot2`** is included in the **`tidyverse`** package.
#'
## ----load-package, message=FALSE, purl = TRUE-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
library(tidyverse)
library(ggplot2)

#'
#' If not still in the workspace, load the data we saved in the previous lesson.
#'
#'
## ----load-data, eval = FALSE, purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## surveys_complete <- read_csv("data/surveys_complete.csv")

#'
#' ## Plotting with **`ggplot2`**
#'
#' **`ggplot2`** is a plotting package that provides helpful commands to create complex plots
#' from data in a data frame. It provides a more programmatic interface for
#' specifying what variables to plot, how they are displayed, and general visual
#' properties. Therefore, we only need minimal changes if the underlying data
#' change or if we decide to change from a bar plot to a scatterplot. This helps in
#' creating publication quality plots with minimal amounts of adjustments and
#' tweaking.
#'
#' **`ggplot2`** refers to the name of the package itself. When using the package we use the
#' function **`ggplot()`** to generate the plots, and so references to using the function will
#' be referred to as **`ggplot()`** and the package as a whole as **`ggplot2`**
#'
#' **`ggplot2`** plots work best with data in the 'long' format, i.e., a column for every variable,
#' and a row for every observation. Well-structured data will save you lots of time
#' when making figures with **`ggplot2`**
#'
#' ggplot graphics are built layer by layer by adding new elements. Adding layers in
#' this fashion allows for extensive flexibility and customization of plots.
#'
#' To build a ggplot, we will use the following basic template that can be used for different types of plots:
#'
#' ```
#' ggplot(data = <DATA>, mapping = aes(<MAPPINGS>)) +  <GEOM_FUNCTION>()
#' ```
#'
#' - use the `ggplot()` function and bind the plot to a specific data frame using
#'   the `data` argument
#'
## ---- eval = FALSE, purl = TRUE-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## ggplot(data = bioplex_long)

#'
#' - define an aesthetic mapping (using the aesthetic (`aes`) function), by
#' selecting the variables to be plotted and specifying how to present them in the
#' graph, e.g., as x/y positions or characteristics such as size, shape, color, etc.
#'
## ---- eval = FALSE, purl = TRUE-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## ggplot(data = surveys_complete, mapping = aes(x = weight, y = hindfoot_length))

#'
#' - add 'geoms' – graphical representations of the data in the plot (points,
#'   lines, bars). **`ggplot2`** offers many different geoms; we will use some
#'   common ones today, including:
#'
#'   * `geom_point()` for scatter plots, dot plots, etc.
#'   * `geom_boxplot()` for, well, boxplots!
#'   * `geom_line()` for trend lines, time series, etc.
#'
#' To add a geom to the plot use `+` operator. Because we have two continuous
#' variables, let's use `geom_point()` first:
#'
## ----first-ggplot, purl = TRUE--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ggplot(data = bioplex2, aes(x = NIV, y = MENV)) +
  geom_point()


#' You can also have categorical variables, but for this, you need long data

ggplot(data = bioplex_long, aes(x = Bead, y = MFI)) +
  geom_point()
#'
#' The `+` in the **`ggplot2`** package is particularly useful because it allows
#' you to modify existing `ggplot` objects. This means you can easily set up plot
#' "templates" and conveniently explore different types of plots, so the above
#' plot can also be generated with code like this:
#'
## ---- first-ggplot-with-plus, eval = FALSE, purl = TRUE-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## # Assign plot to a variable
mfi_plot <- ggplot(data = bioplex_long, aes(x = Bead, y = MFI))

mfi_plot
# Draw the plot
mfi_plot +
    geom_point()
#'
#' **Notes**
#'
#' - Anything you put in the `ggplot()` function can be seen by any geom layers
#'   that you add (i.e., these are universal plot settings). This includes the x-
#'   and y-axis you set up in `aes()`.
#' - You can also specify aesthetics for a given geom independently of the
#'   aesthetics defined globally in the `ggplot()` function.
#' - The `+` sign used to add layers must be placed at the end of each line
#'   containing a layer. If, instead, the `+` sign is added in the line before the
#'   other layer, **`ggplot2`** will not add the new layer and will return an error
#'   message.
#' - You may notice that we sometimes reference 'ggplot2' and sometimes 'ggplot'.
#'   To clarify, 'ggplot2' is the name of the most recent version of the package.
#'   However, any time we call the function itself, it's just called 'ggplot'.
#' - The previous version of the **`ggplot2`** package, called **`ggplot`**,
#'   which also contained the `ggplot()` function is now unsupported and has
#'   been removed from CRAN in order to reduce accidental installations
#'   and further confusion.
#'
## ---- ggplot-with-plus-position, eval=FALSE, purl = TRUE------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## # This is the correct syntax for adding layers
mfi_plot +
  geom_point()
##
## # This will not add the new layer and will return an error message
mfi_plot
  + geom_point()

#'
#'
#' ## Building your plots iteratively
#'
#' Building plots with **`ggplot2`** is typically an iterative process. We start by
#' defining the dataset we'll use, lay out the axes, and choose a geom:
#'
## ----create-ggplot-object, purl = TRUE------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ggplot(data = surveys_complete, aes(x = weight, y = hindfoot_length)) +
  geom_point()

#'
#' Then, we start modifying this plot to extract more information from it. For
#' instance, we can add transparency (`alpha`) to avoid overplotting:
#'
## ----adding-transparency, purl = TRUE-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ggplot(data = bioplex_long, aes(x = Bead, y = MFI)) +
  geom_point(alpha = 0.3)


ggplot(data = bioplex_long, aes(x = Bead, y = MFI)) +
  geom_point(color="blue", alpha = 0.3)
#' We can also add colors for all the points:


#' #' Or to color each Bead in the plot differently
ggplot(data = bioplex_long, aes(x = Bead, y = MFI)) +
  geom_point(aes(color = Bead), alpha = 0.3)

#' > ### Challenge
#' >
#' Make the two plots that we just did, but plot the log10 of the MFI values
#' rather than the MFI values


#'
#' ## Boxplot
#'
#' We can use boxplots to visualize the distribution of weight within each species:
#'
## ----boxplot, purl = TRUE-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ggplot(data = bioplex_long, aes(x = Bead, y = log10(MFI))) +
  geom_boxplot()

#'
#' By adding points to the boxplot, we can have a better idea of the number of
#' measurements and of their distribution:
#'
## ----boxplot-with-points, purl = TRUE-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ggplot(data = bioplex_long, aes(x = Bead, y = log10(MFI))) +
  geom_boxplot(alpha = 0) +
  geom_jitter(alpha = 0.3, color = "red")

#'
#' Notice how the boxplot layer is behind the jitter layer? What do you need to
#' change in the code to put the boxplot in front of the points such that it's not
#' hidden?
#'
#' > ### Challenges
#' >
#' > Boxplots are useful summaries, but hide the *shape* of the distribution. For
#' > example, if there is a bimodal distribution, it would not be observed with a
#' > boxplot. An alternative to the boxplot is the violin plot (sometimes known as
#' > a beanplot), where the shape (of the density of points) is drawn.
#' >
#' > - Replace the box plot with a violin plot; see `geom_violin()`.
#' >
#' > - Color the points according to whether they are PBS samples, Positive controls,
#' > - Negative controls, or real samples
#' >
#' > So far, we've looked at the distribution of MFI for each bead.  Now,
#' > create plots that compare the log values of multiple beads
#'
#'
#'
#' ## Faceting
#'
#' `ggplot` has a special technique called *faceting* that allows the user to split
#' one plot into multiple plots based on a category included in the dataset. We will
#' use it to make a plot for each bead:
#'
## ----first-facet, purl = TRUE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ggplot(data = bioplex_long, aes(x = log10(MFI))) +
  geom_histogram() +
  facet_wrap(vars(Bead))

bioplex_long %>%
  filter(Bead == "MENV" | Bead == "NIV") %>%
ggplot(aes(x = log10(MFI))) +
  geom_histogram() +
  facet_grid(vars(Type), vars(Bead))


bioplex_long %>%
  filter(Bead == "MENV" | Bead == "NIV") %>%
  ggplot(aes(x = log10(MFI))) +
  geom_histogram() +
  facet_grid(vars(Bead), vars(Type))


#'
#' **Note:**
#' `ggplot2` before version 3.0.0 used formulas to specify how plots are faceted.
#' If you encounter `facet_grid`/`wrap(...)` code containing `~`, please read
#' <https://ggplot2.tidyverse.org/news/#tidy-evaluation>.
#'
#'
#' ## **`ggplot2`** themes
#'
#' Usually plots with white background look more readable when printed.
#' Every single component of a `ggplot` graph can be customized using the generic
#' `theme()` function, as we will see below. However, there are pre-loaded themes
#' available that change the overall appearance of the graph without much effort.
#'
#' For example, we can change our previous graph to have a simpler white background
#' using the `theme_bw()` function:
#'
## ----facet-by-species-and-sex-white-bg, purl = TRUE-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ggplot(data = bioplex_long, aes(x = Bead, y = log10(MFI))) +
  geom_boxplot(alpha = 0) +
  geom_jitter(alpha = 0.3, color = "red") +
  theme_bw()

ggplot(data = bioplex_long, aes(x = Bead, y = log10(MFI))) +
  geom_boxplot(alpha = 0) +
  geom_jitter(alpha = 0.3, color = "red") +
  theme_minimal()
#'
#' In addition to `theme_bw()`, which changes the plot background to white, **`ggplot2`**
#' comes with several other themes which can be useful to quickly change the look
#' of your visualization. The complete list of themes is available
#' at <https://ggplot2.tidyverse.org/reference/ggtheme.html>. `theme_minimal()` and
#' `theme_light()` are popular, and `theme_void()` can be useful as a starting
#' point to create a new hand-crafted theme.
#'
#'
#'
#' ## Customization
#'
#' Take a look at the [**`ggplot2`** cheat sheet](https://raw.githubusercontent.com/rstudio/cheatsheets/main/data-visualization-2.1.pdf), and
#' think of ways you could improve the plot.
#'
#' Now, let's change names of axes to something more informative
#'
## ----number-species-year-with-right-labels, purl = TRUE-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ggplot(data = bioplex_long, aes(x = Bead, y = log10(MFI))) +
  geom_boxplot(data = filter(bioplex_long, Type == "Sample"), alpha = 0) +
  geom_jitter(alpha = 0.3, aes(color = Type)) +
  labs(title = "Multiplex Luminex Response",
       x = "Virus",
       y = "Log10 of MFI response") +
  theme_bw()

#'
#' The axes have more informative names, but their readability can be improved by
#' increasing the font size. This can be done with the generic `theme()` function:
#'
## ----number-species-year-with-right-labels-xfont-size, purl = TRUE--------------------------------------------------------------------------------------------------------------------------------------------------------------
ggplot(data = bioplex_long, aes(x = Bead, y = log10(MFI))) +
  geom_boxplot(data = filter(bioplex_long, Type == "Sample"), alpha = 0) +
  geom_jitter(alpha = 0.3, aes(color = Type)) +
  labs(title = "Multiplex Luminex Response",
       x = "Virus",
       y = "Log10 of MFI response") +
  theme_bw() +
  theme(text=element_text(size = 14))

ggplot(data = bioplex_long, aes(x = Bead, y = log10(MFI))) +
  geom_boxplot(data = filter(bioplex_long, Type == "Sample"), alpha = 0) +
  geom_jitter(alpha = 0.3, aes(color = Type)) +
  labs(title = "Multiplex Luminex Response",
       x = "Virus",
       y = "Log10 of MFI response") +
  theme_bw() +
  theme(text=element_text(size = 14))

#'
#' Note that it is also possible to change the fonts of your plots. If you are on
#' Windows, you may have to install
#' the [**`extrafont`** package](https://github.com/wch/extrafont), and follow the
#' instructions included in the README for this package.
#'
#' After our manipulations, you may notice that the values on the x-axis are still
#' not properly readable. Let's change the orientation of the labels and adjust
#' them vertically and horizontally so they don't overlap. You can use a 90 degree
#' angle, or experiment to find the appropriate angle for diagonally oriented
#' labels. We can also modify the facet label text (`strip.text`) to italicize the genus
#' names:
#'
## ----number-species-year-with-theme, purl = TRUE--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#'
#' If you like the changes you created better than the default theme, you can save
#' them as an object to be able to easily apply them to other plots you may create:
#'
#'
## ----number-species-year-with-right-labels-xfont-orientation, purl = TRUE-------------------------------------------------------------------------------------------------------------------------------------------------------
my_theme <- theme(text=element_text(size = 14))

ggplot(data = bioplex_long, aes(x = Bead, y = log10(MFI))) +
  geom_boxplot(data = filter(bioplex_long, Type == "Sample"), alpha = 0) +
  geom_jitter(alpha = 0.3, aes(color = Type)) +
  my_theme

#'
#' > ### Challenge
#'
#' With all of this information in hand, you have a challenge for this afternoon:
#'
#' - Import data from your luminex exercises
#' - Calculate the average response of the PBS values for each bead
#' - For all the remaining values (Sample, Positive, and Negative), subtract the
#' average PBS response from the MFI
#' - Manipulate your data and produce a series of plots
#' - Histograms of the PBS-adjusted values, faceted by Bead
#' - Dotplot/violinplots/boxplots by bead
#' - Explore options in `theme()` to make your plots as nice as possible!
#'
#' Not all of you have data, so work in pairs, and if you still don't, use the
#' example data
