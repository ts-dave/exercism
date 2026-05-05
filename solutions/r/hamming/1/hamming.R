# This is a stub function to take two strings
# and calculate the hamming distance
hamming <- function(strand1, strand2) {
  distance <- 0
  
  if (nchar(strand1) == nchar(strand2)) {

    if (nchar(strand1) == 0)
      return(distance)
    
    chars1 <- strsplit(strand1, split="")[[1]]
    chars2 <- strsplit(strand2, split="")[[1]]

    for (index in 1:length(chars1)) {

      if (chars1[index] != chars2[index]) {
        distance <- distance + 1
      }
    }
    return(distance)
  } else {
    stop("Error: Both strands must be of equal length")
  }
  
}
