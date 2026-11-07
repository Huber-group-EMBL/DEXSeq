# This functions are deprecated and will become defunct.

The ExonCountSet object has been deprecated and substituted by the
DEXSeqDataSet object. Therefore, all the functions and methods for the
ExonCountSet object were deprecated. These functions have been
subsituted by new functions and methods designed for DEXSeqDataSet
objects.

## Details

The replacements of defunct functions are summarized in the following
items.

- newExonCountSet: `DEXseqDataSet`

- DEUresultTable: `DEXseqResults`

- subsetByGenes:

- geneCountTable:

- estimateExonDispersionsForModelFrame_BM:
  estimateDispersions-DEXSeqDataSet

- estimateDispersions_BM: estimateDispersions-DEXSeqDataSet

- testGeneForDEU_BM: `testForDEU`

- testForDEU_BM: `testForDEU`

- doCompleteDEUAnalysis: `DEXSeq`

- makeCompleteDEUAnalysis_BM: `DEXSeq`

- read.HTSeqCounts: `DEXSeqDataSetFromHTSeq`

- countTableForGene:

- fitDispersionFunction: estimateDispersions-DEXSeqDataSet

- estimatelog2FoldChange: `estimateExonFoldChanges`

- modelFrameForGene:

- buildExonCountSet: `DEXSeqDataSetFromSE`

- constructModelFrame:

- getCountVector:

- estimateExonDispersion: estimateDispersions-DEXSeqDataSet

- testExonForDEU: `testForDEU`

- doCompleteDEUAnalysis: `DEXSeq`
