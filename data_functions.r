# Handy functions for working with data

# Sorted names of a dateset
sn <- function(dat) {
  sort(names(dat))
}

# Remove duplicates from dataset
RemoveDupes <- function(dat) {
  dat[!duplicated(dat),]
}
