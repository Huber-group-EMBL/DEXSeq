# Accessor functions for DEXSeqDataSet details

Accessor functions of the DEXSeqDataSet object.

## Usage

``` r
featureCounts(object, normalized=FALSE)

  featureIDs( object )
featureIDs(object) <- value

  exonIDs( object )
exonIDs(object) <- value

  groupIDs( object )
groupIDs(object) <- value

  geneIDs( object )
geneIDs(object) <- value

  sampleAnnotation( object )
```

## Arguments

- object:

  An DEXSeqDataSet object.

- value:

  A character vector to replace previous values.

- normalized:

  Logical indicating whether or not to divide the counts by the size
  factors or normalization factors before returning (normalization
  factors always preempt size factors)

## Value

'featureCounts' access the counts per exonic region or feature region
names. 'featureIDs' and 'exonIDs' are accessor functions for the exon
bin or features identifiers. 'groupIDs' and 'geneIDs' are accessor
functions for the character vector grouping the features, for example
exonIDs from the same gene are grouped together by having the same value
in the geneIDs. 'sampleAnnotation' is an accessor for the information
from the samples.

## Examples

``` r
  data(pasillaDEXSeqDataSet, package="pasilla")
  head( featureCounts( dxd ) )
#>                  treated1fb treated2fb treated3fb untreated1fb untreated2fb
#> FBgn0000256:E001         92         28         43           54          131
#> FBgn0000256:E002        124         80         91           76          224
#> FBgn0000256:E003        340        241        262          347          670
#> FBgn0000256:E004        250        189        201          219          507
#> FBgn0000256:E005         96         38         39           71           76
#> FBgn0000256:E006          1          0          1            0            2
#>                  untreated3fb untreated4fb
#> FBgn0000256:E001           51           49
#> FBgn0000256:E002           82           95
#> FBgn0000256:E003          260          297
#> FBgn0000256:E004          242          250
#> FBgn0000256:E005           57           62
#> FBgn0000256:E006            0            2
  head( featureIDs(dxd))
#> [1] "E001" "E002" "E003" "E004" "E005" "E006"
  head( exonIDs(dxd))
#> [1] "E001" "E002" "E003" "E004" "E005" "E006"
```
