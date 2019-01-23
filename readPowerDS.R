#Download dataset
sourceUrl <-
    "http://archive.ics.uci.edu/ml/machine-learning-databases/00235/"
zipFile <- "household_power_consumption.zip"
txtFile <- "household_power_consumption.txt"

if (!file.exists(txtFile)) {
    if (!file.exists(zipFile)) {
        download.file(
            paste(sourceUrl, zipFile, sep = ""),
            zipFile,
            method = "curl",
            quiet = TRUE
        )
    }
    unzip(zipfile = zipFile, exdir = ".")
}


library(data.table)
library(dplyr)

powerDS <- fread(input = txtFile, na.strings = "?")
powerDS[, DateTime := as.Date(Date, format = "%d/%m/%Y")]
powerDS <-
    filter(powerDS,
           DateTime >= as.Date("2007-02-01"),
           DateTime <= as.Date("2007-02-02"))
powerDS$DateTime <-
    with(powerDS, strptime(paste(Date, Time), "%d/%m/%Y %X"))