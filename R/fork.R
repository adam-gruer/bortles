#' fork
#'
#' Holy shirtballs, display a gif
#' @export
fork <- function(){
  gif_temp <- fs::path(tempdir(), "bortles_gifs")

  gif_files <- list.files(gif_temp, pattern = ".+\\.gif$")
  gif_files <- fs::path(gif_temp, gif_files)


  gif <- gif_files[sample(seq_along(gif_files),1)]
  rstudioapi::viewer(gif)
}


