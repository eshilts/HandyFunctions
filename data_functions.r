# Handy functions for working with data

############################
# Functions to describe data

# Sorted names of a dateset
sn <- function(dat) {
  sort(names(dat))
}

# Class of each variable in a dataset
classes <- function(dat) {
  cbind(sapply(dat, class))
}

DFInfo <- function(dat) {
  df <- data.frame(vars = names(dat),
                   class = classes(dat),
                   missing = sapply(dat, function(x) sum(is.na(x))))
  df[order(df$vars),]
}

############################
# Functions to change data

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

