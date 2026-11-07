# Accessors for the 'counts' slot of a DEXSeqResults object.

The counts slot holds the count data as a matrix of non-negative integer
count values, one row for each observational unit (gene or the like),
and one column for each sample.

## Usage

``` r
# S4 method for class 'DEXSeqResults'
counts(object,normalized=FALSE)
```

## Arguments

- object:

  a `DEXSeqResults` object.

- normalized:

  logical indicating whether or not to divide the counts by the size
  factors or normalization factors before returning (normalization
  factors always preempt size factors)

## Value

an integer matrix

## Examples

``` r
  data(pasillaDEXSeqDataSet, package="pasilla")
  head( counts( dxd ))
#>                  [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11] [,12]
#> FBgn0000256:E001   92   28   43   54  131   51   49 1390  829   923  1115  2495
#> FBgn0000256:E002  124   80   91   76  224   82   95 1358  777   875  1093  2402
#> FBgn0000256:E003  340  241  262  347  670  260  297 1142  616   704   822  1956
#> FBgn0000256:E004  250  189  201  219  507  242  250 1232  668   765   950  2119
#> FBgn0000256:E005   96   38   39   71   76   57   62 1386  819   927  1098  2550
#> FBgn0000256:E006    1    0    1    0    2    0    2 1481  857   965  1169  2624
#>                  [,13] [,14]
#> FBgn0000256:E001  1054  1052
#> FBgn0000256:E002  1023  1006
#> FBgn0000256:E003   845   804
#> FBgn0000256:E004   863   851
#> FBgn0000256:E005  1048  1039
#> FBgn0000256:E006  1105  1099
```
