# Plot dispersion estimates

A simple helper function that plots the per-gene dispersion estimates
together with the fitted mean-dispersion relationship. Internally, it is
a wrapper for the pltoDispEsts method from DESeq2.

## Usage

``` r
# S4 method for class 'DEXSeqDataSet'
plotDispEsts(object, ymin,
  genecol = "black", fitcol = "red", finalcol = "dodgerblue",
  legend=TRUE, xlab, ylab, log = "xy", cex = 0.45, ...)
```

## Arguments

- object:

  a DESeqDataSet

- ymin:

  the lower bound for points on the plot, points beyond this are drawn
  as triangles at ymin

- genecol:

  the color for gene-wise dispersion estimates

- fitcol:

  the color of the fitted estimates

- finalcol:

  the color of the final estimates used for testing

- legend:

  logical, whether to draw a legend

- xlab:

  xlab

- ylab:

  ylab

- log:

  log

- cex:

  cex

- ...:

  further arguments to `plot`
