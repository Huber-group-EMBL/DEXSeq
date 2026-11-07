# Summarize per-exon p-values into per-gene q-values.

The use case for this function is the following analysis: given per-exon
p-values for null hypothesis H0, we can determine the number of genes in
which at least for one exon H0 is rejected. What is the associated false
disovery rate?

## Usage

``` r
perGeneQValue(object, p = "pvalue", method = perGeneQValueExact)
```

## Arguments

- object:

  An `DEXSeqResults` object.

- p:

  A character string indicating the name of the columns in
  `DEXSeqResults` from which to take the per-exon p-values.

- method:

  Use the default value. This is for debugging only.

## Details

Details

## Value

A named numeric vector, values are per-gene q-values, names are gene.

## Examples

``` r

  data(pasillaDEXSeqDataSet, package="pasilla")
  dxd <- estimateSizeFactors( dxd )
  dxd <- estimateDispersions( dxd )
  dxd <- testForDEU( dxd )
  dxr <- DEXSeqResults( dxd )

  perGeneQValue(dxr)
#>  FBgn0000256  FBgn0000578  FBgn0002921  FBgn0003089  FBgn0010226  FBgn0010280 
#> 3.983813e-12 2.252844e-08 2.259578e-02 1.000000e+00 1.000000e+00 5.973451e-01 
#>  FBgn0010638  FBgn0010808  FBgn0010909  FBgn0011300  FBgn0013811  FBgn0015278 
#> 1.000000e+00 9.938660e-01 0.000000e+00 5.204589e-01 1.000000e+00 1.000000e+00 
#>  FBgn0020309  FBgn0020372  FBgn0026777  FBgn0027084  FBgn0027579  FBgn0028341 
#> 1.613712e-03 1.000000e+00 1.000000e+00 1.000000e+00 3.968176e-03 1.000000e+00 
#>  FBgn0030170  FBgn0030302  FBgn0031108  FBgn0032003  FBgn0032785  FBgn0032979 
#> 1.000000e+00 9.703793e-01 1.000000e+00 1.000000e+00 1.000000e+00 1.000000e+00 
#>  FBgn0034158  FBgn0034180  FBgn0034420  FBgn0037050  FBgn0037683  FBgn0037926 
#> 3.720118e-01 1.000000e+00 1.000000e+00 1.000000e+00 1.000000e+00 1.000000e+00 
#>  FBgn0038725  FBgn0039776  FBgn0039914  FBgn0040297  FBgn0050460  FBgn0051021 
#> 1.000000e+00 1.000000e+00 1.000000e+00 1.000000e+00 5.891757e-02 9.908623e-01 
#>  FBgn0051352  FBgn0051790  FBgn0051847  FBgn0085442  FBgn0250871  FBgn0259735 
#> 1.000000e+00 1.000000e+00 1.000000e+00 1.104926e-09 1.000000e+00 1.000000e+00 
#>  FBgn0261573 
#> 3.617344e-03 

```
