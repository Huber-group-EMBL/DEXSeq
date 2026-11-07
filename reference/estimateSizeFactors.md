# Estimate the size factors for a DEXSeqDataSet

Estimate the size factors for a DEXSeqDataSet

## Usage

``` r
# S4 method for class 'DEXSeqDataSet'
estimateSizeFactors(object,locfunc=median,geoMeans)
```

## Arguments

- object:

  a DEXSeqDataSet

- locfunc:

  a function to compute a location for a sample. By default, the median
  is used. However, especially for low counts, the
  [`shorth`](https://rdrr.io/pkg/genefilter/man/shorth.html) function
  from the genefilter package may give better results.

- geoMeans:

  by default this is not provided and the geometric means of the counts
  are calculated within the function. A vector of geometric means from
  another count matrix can be provided for a "frozen" size factor
  calculation

## Value

The DEXSeqDataSet passed as parameters, with the size factors filled in.

## Details

This function calls the method estimateSizeFactors for the DESeqDataSet
object, and adapts it to the specific use to the DEXSeqDataSet.

## References

- Simon Anders, Wolfgang Huber: Differential expression analysis for
  sequence count data. Genome Biology 11 (2010) R106,
  <http://dx.doi.org/10.1186/gb-2010-11-10-r106>
