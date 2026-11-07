# Subset and replacements of DEXSeqDataSet slots

Subset and replacements of DEXSeqDataSet slots.

## Usage

``` r
# S4 method for class 'DEXSeqDataSet'
x[i, j, ..., drop = TRUE]
    # S4 method for class 'DEXSeqDataSet'
x$name <- value
```

## Arguments

- x:

  A DEXSeqDataSet object.

- i:

  Indices specifying elements to extract.

- j:

  Indices specifying elements to extract.

- name:

  A symbol representing the name of a column of `colData`.

- value:

  An object of a class specified in the S4 method signature.

- ...:

  Other arguments passed to lower functions

- drop:

  Ignored for subsetting DEXSeqDataSet objects.
