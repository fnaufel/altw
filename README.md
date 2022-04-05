
<!-- README.md is generated from README.Rmd. Please edit that file -->

# altw: an RStudio addin to copy selection to clipboard

<!-- badges: start -->
<!-- badges: end -->

In my installation of RStudio, even with Emacs keybindings, I was not
able to use `M-w` (i.e., `Alt-W`) for copying.

`C-w` and `C-y` work fine for killing and yanking, respectively.

`altw` is an RStudio addin to copy the current selection to the
clipboard.

If there are multiple selections in the active document (made with
multiple cursors), the `altw` concatenates them with `\n` as the
separator before copying.

As any addin, it can be bound to a keyboard shortcut.

Now I can use `M-w` to copy text to the clipboard, as in Emacs.

## Installation

You can install `altw` from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("fnaufel/altw")
```

After installation, go to **Tools \| Addins \| Browse Addins…**, find
`altw`, select it, and click on `Keyboard shortcuts` to bind it to your
favorite key.

## Dependencies

This addin uses [the great `clipr`
package](http://matthewlincoln.net/clipr/index.html).

If you’re using any distribution of GNU-Linux with X11, you need to have
the [`xclip` program](https://github.com/astrand/xclip) installed.
