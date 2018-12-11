.onLoad <- function(...){
  bortles_temp_dir2341 <<- tempfile()

  dir <- bortles_temp_dir2341
  dir.create(dir)
  gif_files <- system.file(package = "bortles",
                           paste0("fork",
                                  1:7,
                                  ".gif"))
  file.copy(gif_files,
            dir,
            overwrite = TRUE)
}

pkg_gif_paths <- function(){
  list.files(system.file(package = "bortles"))
}
