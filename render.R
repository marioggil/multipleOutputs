load("EjemploTurpialSencillo.rda")
largo=length(BDTurpial)

## Input parameters to add to the header of document.Rmd template
param_list <- list(
    Version = "V1",
    data   = "BDTurpial",
    varx   = list(1:largo)
)

## function to render reports based on parameters that are passed to
## document.Rmd template
render_report <- function(Version, data, varx) {
    temp = "document.Rmd"
    of <- sprintf("outputs/%s_%s.docx", Version, varx)
    pars <- list(
        Version = Version, data = data,
        varx   = varx
    )
    
    rmarkdown::render(temp, output_file = of, params = pars)
    invisible(TRUE)
}

## render reports  over multiple params
##urrr::pmap(param_list, render_report)
render_report(param_list$Version,param_list$data,1)
