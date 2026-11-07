# DEXSeqResults object

The `DEXSeqResults` object is a subclass of a `DataFrame`. It collects
relevant information from a `DEXSeqDataSet` object with the results
generated from testing for differences in exon usage.

## Usage

``` r
DEXSeqResults( object, independentFiltering=TRUE, filter)
```

## Arguments

- object:

  A `DEXSeqDataSet` object.

- independentFiltering:

  Logical indicating whether independent filtering should be applied
  automatically.

- filter:

  A vector of filter statistics over which the independent filtering
  will be optimized. The default is the normalized exon means.

## Value

A DEXSeqResults object.

## Examples

``` r
  data(pasillaDEXSeqDataSet, package="pasilla")
  dxd <- estimateSizeFactors( dxd )
  dxd <- estimateDispersions( dxd )
  dxd <- testForDEU( dxd )
  dxr <- DEXSeqResults( dxd )
```
