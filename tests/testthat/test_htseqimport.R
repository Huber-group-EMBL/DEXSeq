context("HTSeq count file import")

test_that("quoted and unquoted count file IDs give the same DEXSeqDataSet", {
  ids <- c(
    "ENSG00000000003.16:001",
    "ENSG00000000003.16:002",
    "ENSG00000000013.9:001"
  )
  counts <- list(c(6, 0, 8), c(7, 0, 9))

  write_counts <- function(quoted) {
    vapply(
      seq_along(counts),
      function(i) {
        f <- tempfile(fileext = ".txt")
        id <- if (quoted) sub("^([^:]+):(.+)$", '"\\1":"\\2"', ids) else ids
        writeLines(paste(id, counts[[i]], sep = "\t"), f)
        f
      },
      character(1)
    )
  }

  sampleData <- data.frame(
    row.names = c("s1", "s2"),
    condition = factor(c("ctrl", "treat"))
  )

  dxd_plain <- suppressWarnings(suppressMessages(
    DEXSeqDataSetFromHTSeq(
      write_counts(quoted = FALSE),
      sampleData,
      design = ~ sample + exon + condition:exon
    )
  ))
  dxd_quoted <- suppressWarnings(suppressMessages(
    DEXSeqDataSetFromHTSeq(
      write_counts(quoted = TRUE),
      sampleData,
      design = ~ sample + exon + condition:exon
    )
  ))

  expect_s4_class(dxd_quoted, "DEXSeqDataSet")
  expect_equal(rownames(dxd_quoted), rownames(dxd_plain))
  expect_equal(groupIDs(dxd_quoted), groupIDs(dxd_plain))
  expect_equal(featureIDs(dxd_quoted), featureIDs(dxd_plain))
  expect_equal(
    featureCounts(dxd_quoted),
    featureCounts(dxd_plain),
    check.attributes = FALSE
  )
})
