setwd("/home/ssnyde11/scratch/may_tsrchitect/tsrchitect")

library("TSRchitect")
library("farver")
library("tidyr", lib.loc="/packages/7x/R/3.6.2/lib64/R/library")
library("tsrexplorer")
library("ggplot2")
library("viridis")
library("GenomicRanges")
library("dplyr")

load("PdSTRIPE_complete.RData")
CzSTRIPE <- PdSTRIPE #to keep the naming predicable/consistent

#creating the annotation and assembly files
Cz.annot <- "/home/ssnyde11/scratch/genomes/pulex_genome_files/PA42.4.0.gff"
Cz.assembly <- "/home/ssnyde11/scratch/genomes/pulex_genome_files/PA42.4.1.fasta"

#writing the tss files to the workspace
#tss.1 <- CzSTRIPE@tssCountData[[1]]
#tss.2 <- CzSTRIPE@tssCountData[[2]]
#tss.3 <- CzSTRIPE@tssCountData[[3]]
#tss.4 <- CzSTRIPE@tssCountData[[4]]
#tss.5 <- CzSTRIPE@tssCountData[[5]]
#tss.6 <- CzSTRIPE@tssCountData[[6]]
#tss.7 <- CzSTRIPE@tssCountData[[7]]
#tss.8 <- CzSTRIPE@tssCountData[[8]]
#tss.9 <- CzSTRIPE@tssCountData[[9]]
#tss.10 <- CzSTRIPE@tssCountData[[10]]
#tss.11 <- CzSTRIPE@tssCountData[[11]]
#tss.12 <- CzSTRIPE@tssCountData[[12]]
#tss.13 <- CzSTRIPE@tssCountData[[13]]
#tss.14 <- CzSTRIPE@tssCountData[[14]]
#tss.15 <- CzSTRIPE@tssCountData[[15]]
#tss.16 <- CzSTRIPE@tssCountData[[16]]
#tss.17 <- CzSTRIPE@tssCountData[[17]]
#tss.18 <- CzSTRIPE@tssCountData[[18]]
tss.19 <- CzSTRIPE@tssCountData[[19]]
tss.20 <- CzSTRIPE@tssCountData[[20]]
tss.21 <- CzSTRIPE@tssCountData[[21]]
#tss.22 <- CzSTRIPE@tssCountData[[22]]
#tss.23 <- CzSTRIPE@tssCountData[[23]]
#tss.24 <- CzSTRIPE@tssCountData[[24]]
#tss.25 <- CzSTRIPE@tssCountData[[25]]



#tss.1.gr <- makeGRangesFromDataFrame(tss.1,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.2.gr <- makeGRangesFromDataFrame(tss.2,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.3.gr <- makeGRangesFromDataFrame(tss.3,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.4.gr <- makeGRangesFromDataFrame(tss.4,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.5.gr <- makeGRangesFromDataFrame(tss.5,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.6.gr <- makeGRangesFromDataFrame(tss.6,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.7.gr <- makeGRangesFromDataFrame(tss.7,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.8.gr <- makeGRangesFromDataFrame(tss.8,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.9.gr <- makeGRangesFromDataFrame(tss.9,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.10.gr <- makeGRangesFromDataFrame(tss.10,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.11.gr <- makeGRangesFromDataFrame(tss.11,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.12.gr <- makeGRangesFromDataFrame(tss.12,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.13.gr <- makeGRangesFromDataFrame(tss.13,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.14.gr <- makeGRangesFromDataFrame(tss.14,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.15.gr <- makeGRangesFromDataFrame(tss.15,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.16.gr <- makeGRangesFromDataFrame(tss.16,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.17.gr <- makeGRangesFromDataFrame(tss.17,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.18.gr <- makeGRangesFromDataFrame(tss.18,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

tss.19.gr <- makeGRangesFromDataFrame(tss.19,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

tss.20.gr <- makeGRangesFromDataFrame(tss.20,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

tss.21.gr <- makeGRangesFromDataFrame(tss.21,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.22.gr <- makeGRangesFromDataFrame(tss.22,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.23.gr <- makeGRangesFromDataFrame(tss.23,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.24.gr <- makeGRangesFromDataFrame(tss.24,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")

#tss.25.gr <- makeGRangesFromDataFrame(tss.25,keep.extra.columns = TRUE,seqnames.field="seq",start.field="TSS",end.field="TSS",strand.field = "strand")


#writing the tsr files to the workspace
#tsr.1 <- CzSTRIPE@tsrData[[1]]
#tsr.2 <- CzSTRIPE@tsrData[[2]]
#tsr.3 <- CzSTRIPE@tsrData[[3]]
#tsr.4 <- CzSTRIPE@tsrData[[4]]
#tsr.5 <- CzSTRIPE@tsrData[[5]]
#tsr.6 <- CzSTRIPE@tsrData[[6]]
#tsr.6 <- CzSTRIPE@tsrData[[6]]
#tsr.7 <- CzSTRIPE@tsrData[[7]]
#tsr.8 <- CzSTRIPE@tsrData[[8]]
#tsr.9 <- CzSTRIPE@tsrData[[9]]
#tsr.10 <- CzSTRIPE@tsrData[[10]]
#tsr.11 <- CzSTRIPE@tsrData[[11]]
#tsr.12 <- CzSTRIPE@tsrData[[12]]
#tsr.13 <- CzSTRIPE@tsrData[[13]]
#tsr.14 <- CzSTRIPE@tsrData[[14]]
#tsr.15 <- CzSTRIPE@tsrData[[15]]
#tsr.16 <- CzSTRIPE@tsrData[[16]]
#tsr.17 <- CzSTRIPE@tsrData[[17]]
#tsr.18 <- CzSTRIPE@tsrData[[18]]
tsr.19 <- CzSTRIPE@tsrData[[19]]
tsr.20 <- CzSTRIPE@tsrData[[20]]
tsr.21 <- CzSTRIPE@tsrData[[21]]
#tsr.22 <- CzSTRIPE@tsrData[[22]]
#tsr.23 <- CzSTRIPE@tsrData[[23]]
#tsr.24 <- CzSTRIPE@tsrData[[24]]
#tsr.25 <- CzSTRIPE@tsrData[[25]]



#making granges files from tss data frames
#tsr.1.gr <- makeGRangesFromDataFrame(tsr.1,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.2.gr <- makeGRangesFromDataFrame(tsr.2,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.3.gr <- makeGRangesFromDataFrame(tsr.3,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.4.gr <- makeGRangesFromDataFrame(tsr.4,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.5.gr <- makeGRangesFromDataFrame(tsr.5,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.6.gr <- makeGRangesFromDataFrame(tsr.6,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.7.gr <- makeGRangesFromDataFrame(tsr.7,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.8.gr <- makeGRangesFromDataFrame(tsr.8,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.9.gr <- makeGRangesFromDataFrame(tsr.9,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.10.gr <- makeGRangesFromDataFrame(tsr.10,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.11.gr <- makeGRangesFromDataFrame(tsr.11,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.12.gr <- makeGRangesFromDataFrame(tsr.12,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.13.gr <- makeGRangesFromDataFrame(tsr.13,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.14.gr <- makeGRangesFromDataFrame(tsr.14,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.15.gr <- makeGRangesFromDataFrame(tsr.15,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.16.gr <- makeGRangesFromDataFrame(tsr.16,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.17.gr <- makeGRangesFromDataFrame(tsr.17,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.18.gr <- makeGRangesFromDataFrame(tsr.18,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

tsr.19.gr <- makeGRangesFromDataFrame(tsr.19,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

tsr.20.gr <- makeGRangesFromDataFrame(tsr.20,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

tsr.21.gr <- makeGRangesFromDataFrame(tsr.21,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.22.gr <- makeGRangesFromDataFrame(tsr.22,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.23.gr <- makeGRangesFromDataFrame(tsr.23,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.24.gr <- makeGRangesFromDataFrame(tsr.24,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")

#tsr.25.gr <- makeGRangesFromDataFrame(tsr.25,keep.extra.columns = TRUE, seqnames.field="seq",start.field="start",end.field="end",strand.field = "strand")




#making the exp files with all three replicates
W17.tss <- list(tss.19.gr, tss.20.gr, tss.21.gr) 
names(W17.tss) <- c("W17_r1", "W17_r2", "W17_r3")

TSRs_W17 <- list(tsr.19.gr, tsr.20.gr, tsr.21.gr)
names(TSRs_W17) <- c("W17_r1", "W17_r2", "W17_r3")

exp <- tsr_explorer(W17.tss, TSRs_W17)
exp <- count_normalization(exp, data_type = "tss", threshold = 3, n_samples = 1)

#for tsrs: 
#exp <- count_normalization(exp, data_type = "tsr", threshold = 5, n_samples = 1)

#making the exp files with two replicates
#POV12.tss <- list(tss.13.gr, tss.14.gr)
#names(POV12.tss) <- c("POV12_r1", "POV12_r2")

#TSRs_POV12 <- list(tsr.13.gr, tsr.14.gr)
#names(TSRs_POV12) <- c("POV12_r1", "POV12_r2")

#exp2 <- tsr_explorer(POV12.tss, TSRs_POV12)
#exp2 <- count_normalization(exp2, data_type = "tss", threshold = 3, n_samples = 1)

p <- plot_correlation(exp, data_type = "tss") +
  ggplot2::theme_bw() +
  ggplot2::theme(text = element_text(size = 6))

ggsave("tss_correlation_W17.png", plot = p, device = "png", type = "cairo", height = 3, width = 3)

