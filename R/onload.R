.onLoad <- function(...){
  copy_gifs_to_temp()
}

pkg_gif_paths <- function(){
  pkg_gif_dir <- system.file("gifs", package = "bortles")
  gif_files <- list.files(pkg_gif_dir, pattern = ".+\\.gif$")
  fs::path(pkg_gif_dir, gif_files)
}

copy_gifs_to_temp <- function(){
  gif_temp <- fs::path(tempdir(), "bortles_gifs")
  if (!dir.exists(gif_temp)) dir.create(gif_temp)
  file.copy(pkg_gif_paths(),
            gif_temp,
            overwrite = TRUE)

}


