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

## Add your own gifs

Once installed add your own gifs to the folder on your PC returned by `system.file("gifs", package = "bortles")`. I have a naming convention for the current files in there but that is not required its just a throwback to my development process.

The package *works* by copying these gifs to the R session temp directory whenever the package is loaded by either `library(bortles)` or `bortles::fork()`.  Having lots of gif files will probably slow loading down.

If you ever reinstall the package any gifs you added will be deleted.

