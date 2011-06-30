# Handy functions for working with data

# Sorted names of a dateset
sn <- function(dat) {
  sort(names(dat))
}

# Remove duplicates from dataset
RemoveDupes <- function(dat) {
  dat[!duplicated(dat),]
}

# Top & bottom code a vector
TopCode <- function(vec, level=100) {
  ifelse(vec > level, level, vec)
}

BottomCode <- function(vec, level=0) {
  ifelse(vec < level, level, vec)
}

