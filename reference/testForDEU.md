# Test for Differential Exon Usage

This will perform a likelihood ratio test for differential exon usage.
Internally, it calls the DESeq2 function `nbinomLRT`.

## Usage

``` r
testForDEU(
  object,
  fullModel = design(object),
  reducedModel = ~sample + exon,
  BPPARAM = SerialParam(),
  fitType = c("DESeq2", "glmGamPoi")
)
```

## Arguments

- object:

  A DEXSeqDataSet object.

- fullModel:

  The full model formula.

- reducedModel:

  Null model formula.

- BPPARAM:

  A "BiocParallelParam" instance. See `?bplapply` for details.

- fitType:

  Specifies what internal engine to use for fitting the GLMs. Options
  are "DESeq2" or "glmGamPoi".

## Value

A `DEXSeqDataSet` with slots filled with information about the test.

## Details

The information of the variables of the formulas should be present in
the `colData` of the `DEXSeqDataSet` object.

## Examples

``` r

data(pasillaDEXSeqDataSet, package="pasilla")
dxd <- estimateSizeFactors( dxd )
dxd <- estimateDispersions( dxd )
dxd <- testForDEU( dxd )
```
