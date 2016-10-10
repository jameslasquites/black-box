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
GC_percent <- GC.percent(houseelf$dnaseq)

#Problem # 7

get_size_class <- function(ear_length){
  # Calculate the size class for one or more earth lengths
  ear_lengths <- ifelse(ear_length > 10, "large", "small")
  return(ear_lengths)
}
size_class <- print(get_size_class(houseelf$earlength))
house_elf.analyzed <- data.frame(houseelf$id,size_class,GC_percent)
write.csv(house_elf.analyzed, file = "house_elf.analyzed.csv")







