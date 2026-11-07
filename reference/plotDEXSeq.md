# Visualization of the per gene DEXSeq results.

The function provides a plot to visualize read count data, expression
and exon usage coefficients estimated from fitting a GLM model 'counts ~
fitExpToVar \* exon'. The model frame used can be found in
`object@modelFrameBM`. One GLM is fitted for each gene.

## Usage

``` r
plotDEXSeq(object, geneID, FDR=0.1, fitExpToVar="condition", 
    norCounts=FALSE, expression=TRUE, splicing=FALSE, 
    displayTranscripts=FALSE, names=FALSE, legend=FALSE, 
    color=NULL, color.samples=NULL, transcriptDb=NULL,
    additionalAnnotation=NULL, maxRowsMF=2400, ...)
```

## Arguments

- object:

  A DEXSeqResults object. A DEXSeqDataSet object is also accepted, but
  only with the possibility of plotting the normalized read counts for
  each exon bin.

- geneID:

  Gene identifier to visualize.

- FDR:

  A false discovery rate.

- fitExpToVar:

  A variable contained in the sample annotation of the `DEXSeqDataSet`,
  the expression values will be fitted to this variable using the
  formula `count ~ fitExpToVar * exon`.

- norCounts:

  If TRUE, provides a plot of the counts normalized by the size factors.

- expression:

  If TRUE, the function plots the fitted EXPRESSION estimates from the
  glm regression.

- splicing:

  If TRUE, the samples gene expression effects are averaged out, leaving
  only exon usage coefficients.

- displayTranscripts:

  If TRUE, the transcripts are displayed in the plot.

- names:

  If TRUE, the names of the transcripts are shown.

- legend:

  If TRUE, a legend is displayed.

- color:

  A vector of colors for each of the levels of the factor in the design
  of the ExonCountSet object indicated by "fitExpToVar".

- color.samples:

  A vector of colors for each of the samples. If NULL, the colors of
  each sample will be assigned according to its corresponding level from
  "fitExpToVar". This option is useful to visualize complex experimental
  designs.

- transcriptDb:

  A TxDb object, as defined in the GenomicFeatures package. This
  parameter is optional. If present and if 'displayTranscripts=TRUE',
  the transcript UTRs will be distinguished from the coding regions.

- additionalAnnotation:

  A GRangesList object specifying the genomic coordinates of annotation
  features that should be plotted. This parameter is useful, for
  example, when one wants to show protein domain annotations.

- maxRowsMF:

  See
  [`?estimateExonFoldChanges`](https://huber-group-embl.github.io/DEXSeq/reference/estimateExonFoldChanges.md)
  for details.

- ...:

  Further graphical parameters (see `par`).

## See also

graphics, `segments`

## Examples

``` r
if (FALSE) { # \dontrun{
  data(pasillaDEXSeqDataSet, package="pasilla")
  dxd <- estimateSizeFactors( dxd )
  dxd <- estimateDispersions( dxd )
  dxd <- testForDEU( dxd )
  dxr <- DEXSeqResults( dxd )

  plotDEXSeq( dxr, "FBgn0010909" )
} # }
```
