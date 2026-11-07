# Methods from GRanges overlaps for the DEXSeq object

This function generates an MA plot.

## Usage

``` r
# S4 method for class 'DEXSeqResults,GenomicRanges'
subsetByOverlaps( x, ranges, maxgap = -1L, 
    minoverlap = 0L, type = c("any", "start", "end", "within", "equal"),
    ignore.strand = FALSE )

  # S4 method for class 'DEXSeqResults,GenomicRanges'
findOverlaps( query, subject, maxgap = -1L, 
    minoverlap = 0L, type = c("any", "start", "end", "within", "equal"),
    ignore.strand = FALSE )
```

## Arguments

- query, x:

  Either a `DEXSeqResults` object.

- subject, ranges:

  A GRanges or GRangesList object.

- maxgap, minoverlap, type:

  See `findOverlaps` in the IRanges package for a description of these
  arguments.

- ignore.strand:

  See `findOverlaps` in the GenomicRanges package for a description of
  this.

## Examples

``` r
  data(pasillaDEXSeqDataSet, package="pasilla")
  dxd <- estimateSizeFactors( dxd )
  dxd <- estimateDispersions( dxd )
  dxd <- testForDEU( dxd )
  dxr <- DEXSeqResults( dxd )

  interestingRegion = GRanges("chr2L", IRanges(start=3872658, end=3875302))

  subsetByOverlaps( x=dxr, ranges=interestingRegion )
#> 
#> LRT p-value: full vs reduced
#> 
#> DataFrame with 4 rows and 10 columns
#>                      groupID   featureID exonBaseMean dispersion        stat
#>                  <character> <character>    <numeric>  <numeric>   <numeric>
#> FBgn0000256:E001 FBgn0000256        E001      58.3431 0.01719172 8.23523e-06
#> FBgn0000256:E002 FBgn0000256        E002     103.3328 0.00734737 1.57577e+00
#> FBgn0000256:E003 FBgn0000256        E003     326.4763 0.01048065 3.57358e-02
#> FBgn0000256:E004 FBgn0000256        E004     253.6548 0.01100420 1.69541e-01
#>                     pvalue      padj             genomicData       countData
#>                  <numeric> <numeric>               <GRanges>        <matrix>
#> FBgn0000256:E001  0.997710         1 chr2L:3872658-3872947:-    92:28:43:...
#> FBgn0000256:E002  0.209370         1 chr2L:3873019-3873322:-   124:80:91:...
#> FBgn0000256:E003  0.850062         1 chr2L:3873385-3874395:- 340:241:262:...
#> FBgn0000256:E004  0.680520         1 chr2L:3874450-3875302:- 250:189:201:...
#>                                              transcripts
#>                                                   <list>
#> FBgn0000256:E001 FBtr0077511,FBtr0077513,FBtr0077512,...
#> FBgn0000256:E002 FBtr0077511,FBtr0077513,FBtr0077512,...
#> FBgn0000256:E003 FBtr0077511,FBtr0077513,FBtr0077512,...
#> FBgn0000256:E004 FBtr0077511,FBtr0077513,FBtr0077512,...
  findOverlaps( query=dxr, subject=interestingRegion )
#> Hits object with 4 hits and 0 metadata columns:
#>       queryHits subjectHits
#>       <integer>   <integer>
#>   [1]         1           1
#>   [2]         2           1
#>   [3]         3           1
#>   [4]         4           1
#>   -------
#>   queryLength: 498 / subjectLength: 1
```
