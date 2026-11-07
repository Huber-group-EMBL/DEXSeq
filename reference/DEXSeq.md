# Performs the differential exon usage test in a single command

This function is a wrapper that calls the necessary functions to perform
a differential exon usage test in a single command.

## Usage

``` r
DEXSeq(object, 
    fullModel=design(object),
    reducedModel = ~ sample + exon, 
    BPPARAM=MulticoreParam(workers=1), 
    fitExpToVar="condition", quiet=TRUE )
```

## Arguments

- object:

  An DEXSeqDataSet object.

- fullModel:

  The full model formula

- reducedModel:

  Null model formula.

- BPPARAM:

  A "BiocParallelParam" instance. See `?bplapply` for details.

- fitExpToVar:

  A variable name contained in the sample data. The expression values
  will be fitted to this variable using the the formula " ~ sample +
  fitExpToVar \* exon".

- quiet:

  Whether to print messages at each step

## Value

A `DEXSeqResults` object.

## Examples

``` r
  if (FALSE) { # \dontrun{
      data(pasillaDEXSeqDataSet, package="pasilla")
      dxr <- DEXSeq( dxd )
  } # }
```
