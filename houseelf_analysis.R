houseelf <- read.csv("C:/Users/james/Desktop/Rstudio project/ASSIGNmenT_8/data/houseelf_earlength_dna_data_1.csv", header = TRUE)
houseelf
library(stringr)

GC.percent <- function(sequence){
  Gs <- str_count(sequence, "G")
  Cs <- str_count(sequence, "C")
  GC <- round((Gs + Cs) / str_length(sequence) * 100, digits = 2)
  return(GC)
}

for(sequence in houseelf$dnaseq){
  print(round(GC.percent(sequence), digits = 2))
}
