# Estimates exon usage coefficients from the fitted terms of the GLM.

This function calculates the exon usage coefficients and fold changes
(on log2 scale) between the different conditions.

## Usage

``` r
estimateExonFoldChanges( object, 
     fitExpToVar = "condition", denominator = "",
     BPPARAM=SerialParam(), maxRowsMF=2400,
   independentFiltering=FALSE, filter)
```

## Arguments

- object:

  An DEXSeqDataSet object.

- fitExpToVar:

  A variable contained in `design(ecs)`. The expression values will be
  fitted to this variable using the the formula " ~ fitExpToVar \*
  exon".

- denominator:

  A value of the sample annotation (e.g. condition) to use as a
  denominator in the log2 fold change. As a default, the function will
  take the annotation of the first sample.

- BPPARAM:

  A "BiocParallelParam" instance. See `?bplapply` for details.

- maxRowsMF:

  For the exon fold change estimation, the size of the model matrix for
  the fitted glm increases with the number of samples and the number of
  exons for a specific gene (see the DEXSeq paper for details). Since
  the glm fit for big models is very slow, the maxRowsMF parameter
  allows to set a threshold on the number of rows from the model matrix
  (the number of rows of the model matrix will be number of samples
  times the number of exons of a gene). For all genes passing this
  threshold, the exon fold changes will be estimated by fitting a
  slightly different but equivalent model. The formula remains the same,
  but instead of fitting one model per gene that considers all its
  exons, it considers, for each exon, the counts from the specific exon
  and the sum of the rest of exons of the same gene.

- independentFiltering:

  Logical indicating whether independent filtering should be applied
  automatically. For the exons that were discarded, fold changes won't
  be estimated.

- filter:

  A vector of filter statistics over which the independent filtering
  will be optimized. The default is the normalized exon means.

## Details

Exon usage coefficients are calculated by fitting a GLM from the joint
data of all exons of the same gene. The model frame can be found in the
slot object@modelFrameBM of a `DEXSeqDataSet` object. The model '~
fitExpToVar \* exon' is fitted. The resulted coefficients are arranged
and reformatted in order to remove gene expression effects, leaving only
exon usage effects for each individual exon in each level of
'fitExpToVar'. These values are used by the function `plotDEXSeq`. For
specific details please check the DEXSeq paper.

## Examples

``` r
  data(pasillaDEXSeqDataSet, package="pasilla")
  dxd <- estimateSizeFactors( dxd )
  dxd <- estimateDispersions( dxd )
  dxd <- testForDEU( dxd )
  dxd <- estimateExonFoldChanges( dxd )
```
