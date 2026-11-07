# Generate an MA plot

This function generates an MA plot.

## Usage

``` r
# S4 method for class 'DEXSeqDataSet'
plotMA( object, alpha=0.1, ylim=c(-2, 2), foldChangeColumn=NULL, ... )

  # S4 method for class 'DEXSeqResults'
plotMA( object, alpha=0.1, ylim=c(-2, 2), foldChangeColumn=NULL, ... )
```

## Arguments

- object:

  Either a `DEXSeqDataSeq` or a `DEXSeqResults`.

- alpha:

  the false discovery rate, i.e., threshold to the adjusted p values, to
  be used to colour the dots

- ylim:

  y-limits of the plot

- foldChangeColumn:

  Name of the column containing the fold changes to plot. If NULL, the
  first fold change column from the object will be taken.

- ...:

  Further parameters to be passed through to
  [`plot`](https://rdrr.io/r/graphics/plot.default.html).

## Examples

``` r
 if (FALSE) { # \dontrun{
    data(pasillaDEXSeqDataSet, package="pasilla")
    dxd <- estimateSizeFactors( dxd )
    dxd <- estimateDispersions( dxd )
    dxd <- testForDEU( dxd )
    dxd <- estimateExonFoldChanges( dxd )
    dxr <- DEXSeqResults( dxd )

    plotMA( dxr )

    plotMA( dxd )
    
 } # }
```
