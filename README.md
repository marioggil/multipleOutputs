## multipleOutputs documentation
*By Emanuel Valero*

*2017-04-21*

---

### Description

multipleOutputs is a project to allow you generate multiple output reports by passing parameters (see [Markdown Parameter](http://rmarkdown.rstudio.com/lesson-6.html) documentation) to a `.Rmd` template file. Outputs files are saved in `outputs` directory.

### How to use

#### Install packages

In order to use `multipleOutputs` you should to install some R packages. Open your R instalation in a terminal or RStudio and run the folowing lines

```R
packages <- c("ggplot2", "pander", "rmarkdown", "knitr", "purrr")
install.packages(packages)
```

#### Edit and run `multipleOutputs`

1. Open the **`render.R`** file in root directory of `multipleOutputs` with your RStudio or any text editor you prefer.

2. Set up your own parameters to the `param_list`. See the next title (Setting up parameters) to detailed step by step procedure.

3. Run the **`render.R`** script by using the R `source()` function

```R
setwd("path/to/your/multipleOutputs")
source("render.R")
```
After folowing this three steps, you may generate the count of files deteminated by length of lists `varx` and `vary` in `param_list`.

#### Setting up parameters.

The `param_list` is the way to to pass parameters to `document.Rmd` template. You can find it at top of `render.R` script file in root directory of `multipleOutputs`. Default values for this list are:

- **`title`**. "Motor Trend Car Road Tests"
- **`author`**. "Emanuel Valero"
- **`date`**. "2017-04-20"
- **`data`**. mtcars
- **`varx`**. list("mpg", "mpg", "mpg")
- **`desx`**. list("Miles/(US) gallon", "Miles/(US) gallon", "Miles/(US) gallon")
- **`varx`**. list("drat", "wt", "qsec")
- **`desy`**. list("Rear axle ratio", "Weight (1000 lbs)", "1/4 mile time")
# friendly-lamp
