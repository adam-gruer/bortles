[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)   [![Travis build status](https://travis-ci.org/adam-gruer/bortles.svg?branch=master)](https://travis-ci.org/adam-gruer/bortles)  [![AppVeyor build status](https://ci.appveyor.com/api/projects/status/github/adam-gruer/bortles?branch=master&svg=true)](https://ci.appveyor.com/project/adam-gruer/bortles)    [![Coverage status](https://codecov.io/gh/adam-gruer/bortles/branch/master/graph/badge.svg)](https://codecov.io/github/adam-gruer/bortles?branch=master)



![bortles hex sticker](inst/figures/imgfile.png "Package hex sticker")

### Display a random forking gif in your RStudio viewer pane

## Installation

You can install the development version of `bortles` from [github](https://www.github.com) with:

``` r
# install.packages("remotes")
remotes::install_github("adam-gruer/bortles")
```
Note, installing this package will copy about 10 mb of gif files to your computer at the location returned by this R expression:

``` r
system.file("gifs", package = "bortles")
```
Installation may take a minute or two.


## Example

``` r
library(bortles)

fork()

fork()
```
You can also call fork() at any time without calling `library(bortles)`

``` r
bortles::fork()
```
Set option to call bortles::fork whenever your code has a forking error.
Terrific use case courtesy of [John Blischak](https://twitter.com/jdblischak)

``` r
options(error = bortles::fork)
log(1 + "a")
```

## Add your own gifs

Once installed add your own gifs to the folder on your PC returned by `system.file("gifs", package = "bortles")`. I have a naming convention for the current files in there but that is not required its just a throwback to my development process.

The package *works* by copying these gifs to the R session temp directory whenever the package is loaded by either `library(bortles)` or `bortles::fork()`.  Having lots of gif files will probably slow loading down.

If you ever reinstall the package any gifs you added will be deleted.

