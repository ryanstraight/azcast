
<!-- README.md is generated from README.Rmd. Please edit that file -->

# azcast <img src="man/figures/logo.png" align="right" width=200 />

<!-- badges: start -->

[![](https://img.shields.io/github/last-commit/ryanstraight/azcast.svg)](https://github.com/ryanstraight/azcast/commits/master)
[![](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
![](https://img.shields.io/github/license/ryanstraight/azcast)
![](https://img.shields.io/github/v/release/ryanstraight/azcast?include_prereleases)
<!-- badges: end -->

The `azcast` R-package is a utility package with consolidated tools and
templates prepared for the University of Arizona’s College of Applied
Science and Technology. It contains a variety of templates that I have
been using and tweaking for some time, as well as new-to-me templates
from the wonderful `numbats/monash` package. A good amount of the
original Monash content is still here and will be altered or removed as
appropriate. The package is mainly templates and easy access to assets
like logos and colors.

## Installation

You can install the `azcast` R-package like this:

``` r
# install.packages("remotes")
remotes::install_github("ryanstraight/azcast")
```

## Templates

-   Exam: a paper exam.
    [Example](/inst/rmarkdown/templates/exam/skeleton/skeleton.pdf)
-   Letter: letter with CAST banner at top left.
    [Example](/inst/rmarkdown/templates/letter/skeleton/skeleton.pdf)
-   Memo: a casual memo with optional branding.
    [Example](/inst/rmarkdown/templates/memo/skeleton/skeleton.pdf)
-   Report: for reports sent to external clients.
    [Example](/inst/rmarkdown/templates/report/skeleton/skeleton.pdf)
-   Working paper: a mask-able working paper template.
    [Example](/inst/rmarkdown/templates/working-paper/skeleton/skeleton.pdf)
-   Xaringan: a themed Xaringan slide deck.

(The original `monash` package includes theses templates. These were not
updated and included in this package. Using [kelseygonzalez/beardown: An
updated R Markdown thesis template using the bookdown package for
University of Arizona](https://github.com/kelseygonzalez/beardown) is
preferred.)

## Get azcast logo

You can get a copy of the logo into the directory you wish with below.

``` r
# default logo
azcast::logo_get()
# monochrome block version of the logo
azcast::logo_get(color = "black", style = "block")
```

And then you can reference the logo file that you copied.

![](man/figures/ua_horiz_rgb.png)
![](man/figures/ua_block_rgb_black.png)

## Get azcast brand colors

These are handy commands to quickly see University of Arizona brand
colors and be able to copy-and-paste the hex color codes. You can find
more info like `cmyk`, `rgb`, and `Pantone` codes and formulas here:
[Colors \| University of Arizona Brand
Resources](https://brand.arizona.edu/applying-the-brand/colors)

``` r
azcast::color_show()
```

<img src="man/figures/README-colors-1.png" width="100%" />

    #> arizonablue  arizonared       bloom         sky       oasis       chili 
    #>   "#0C234B"   "#AB0520"   "#EF4056"   "#81D3EB"   "#378DBD"   "#8B0015" 
    #>     azurite    midnight       black       white    warmgray    coolgray 
    #>   "#1E5288"   "#001C48"   "#000000"   "#FFFFFF"   "#F4EDE5"   "#E2E9EB" 
    #>        leaf       river      silver        mesa 
    #>   "#70B865"   "#007D84"   "#9EABAE"   "#A95C42"

## Settings

(WIP) The azcast package makes use of some values, listed below, from
your R profile. You can modify this by using `usethis::edit_r_profile()`
and adding below with values modified to your own values.

    options(azcast.full_name = "Dr. Ryan Straight",
            azcast.email = "ryanstraight@arizona.edu",
            azcast.orgunit = "College of Applied Science and Technology",
            azcast.teaching_dir = "~/teaching/azcast/",
            azcast.workshop_dir = "~/workshop/")
