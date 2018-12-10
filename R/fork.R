
#' fork
#'
#' Holy shirtballs, display a gif
#' @return
#' @export
#'
#' @examples
#' fork()
fork <- function(){

gif <- sample(1:7,1)
rstudioapi::viewer(paste0(bortles_temp_dir2341,"/","fork",gif,".gif"))

#file.remove(file.path(dir, list.files(dir)))

}


