# Estimate the dispersions for a DEXSeqDataSet

This function obtains dispersion estimates for negative binomial
distributed data for the specific case for DEXSeq.

## Usage

``` r
# S4 method for class 'DEXSeqDataSet'
estimateDispersions(
  object,
  fitType = c("parametric", "local", "mean", "glmGamPoi"),
  maxit = 100,
  niter = 10,
  quiet = FALSE,
  formula = design(object),
  BPPARAM = SerialParam()
)
```

## Arguments

- object:

  A DEXSeqDataSet.

- fitType:

  Either "parametric", "local", "mean" or "glmGamPoi" for the type of
  fitting of dispersions to the mean intensity. See
  ?estimateDispersions,DESeqDataSet-method for details. If "glmGamPoi"
  is selected, the GLM fitter from "glmGamPoi" is also used for
  estimating the dispersion estimates.

- maxit:

  Control parameter: maximum number of iterations to allow for
  convergence

- niter:

  Number of times to iterate between estimation of means and estimation
  of dispersion.

- quiet:

  Whether to print messages at each step.

- formula:

  Formula used to fit the dispersion estimates.

- BPPARAM:

  A "BiocParallelParam" instance. See `?bplapply` for details.

## Value

A DEXSeqDataSet with the dispersion information filled in as metadata
columns.

## Details

See ?estimateDispersions,DESeqDataSet-method for details.

## Examples

``` r
data(pasillaDEXSeqDataSet, package="pasilla")
dxd <- estimateSizeFactors( dxd )
dxd <- estimateDispersions( dxd )
```
