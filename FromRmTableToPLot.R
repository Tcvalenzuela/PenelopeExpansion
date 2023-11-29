library(ggplot2)
library(cowplot)
setwd ("Google Drive/Phd/STR/DerCor/")
DerCorLandscape<-read.table("DerCorLandscape", sep = "\t", header = T)
head (DerCorLandscape)
DerCor <- ggplot(DerCorLandscape, aes(fill=Category, y=Percentage, x=Kimura, group=Category)) + 
  geom_bar(position="stack", stat="identity") +
  scale_fill_manual(values = c("Unknown"="#999999",
                               "Other"="#4D4D4D",
                               "DNA/Academ"="#FF0000",
                               "DNA/CMC"="#FF200B",
                               "DNA/Crypton"="#FF3115",
                               "DNA/Harbinger"="#FF4825",
                               "DNA/hAT"="#FF512D",
                               "DNA/Kolobok"="#FF5A34",
                               "DNA/Maverick"="#FF623B",
                               "DNA"="#FF6A42",
                               "DNA/TcMar"="#FF936C",
                               "RC/Helitron"="#FF00FF",
                               "LTR/DIRS"="#006400",
                               "LTR/Ngaro"="#197214",
                               "LTR/Copia"="#3A8F33",
                               "LTR/Gypsy"="#489E42",
                               "LTR/ERVL"="#57AE51",
                               "LTR"="#65BD61",
                               "LTR/ERV1"="#73CD70",
                               "LTR/ERV"="#81DD80",
                               "LTR/ERVK"="#90ED90",
                               "LINE/L1"="#00008B",
                               "LINE/RTE"="#38299A",
                               "LINE/CR1"="#483AA2",
                               "LINE/L2"="#625CB1",
                               "LINE/Jockey-I"="#8FA1CF",
                               "LINE/R2"="#A3C5DE",
                               "LINE/Penelope"="#ACD8E5",
                               "SINE/5S"="#A637F1",
                               "SINE/tRNA"="#B966F4",
                               "SINE/Deu"="#CE9BF7",
                               "SINE/MIR"="#D7B4F8"))+
  theme(legend.position="bottom")
setwd ("Google\ Drive/Phd/STR/CheMyd/")
CheMydLandscape<-read.table("CheMydLandscape", sep = "\t", header = T)
head (CheMydLandscape)
CheMyd<- ggplot(CheMydLandscape, aes(fill=Category, y=Percentage, x=Kimura, group=Category)) + 
  geom_bar(position="stack", stat="identity") +
  scale_fill_manual(values = c("Unknown"="#999999",
                               "Other"="#4D4D4D",
                               "DNA/Academ"="#FF0000",
                               "DNA/CMC"="#FF200B",
                               "DNA/Crypton"="#FF3115",
                               "DNA/Harbinger"="#FF4825",
                               "DNA/hAT"="#FF512D",
                               "DNA/Kolobok"="#FF5A34",
                               "DNA/Maverick"="#FF623B",
                               "DNA"="#FF6A42",
                               "DNA/PiggyBac"="#FF865E",
                               "DNA/TcMar"="#FF936C",
                               "LTR/DIRS"="#006400",
                               "LTR/Ngaro"="#197214",
                               "RC/Helitron"="#FF00FF",
                               "LTR/Gypsy"="#489E42",
                               "LTR"="#65BD61",
                               "LTR/ERV1"="#73CD70",
                               "LTR/ERV"="#81DD80",
                               "LTR/ERVK"="#90ED90",
                               "LINE/L1"="#00008B",
                               "LINE/RTE"="#38299A",
                               "LINE/CR1"="#483AA2",
                               "LINE/L2"="#625CB1",
                               "LINE/Jockey-I"="#8FA1CF",
                               "LINE/Dong-R4"="#99B3D7",
                               "LINE/R2"="#A3C5DE",
                               "LINE/Penelope"="#ACD8E5",
                               "SINE"="#9F1FF0",
                               "SINE/5S"="#A637F1",
                               "SINE/tRNA"="#B966F4",
                               "SINE/Deu"="#CE9BF7",
                               "SINE/MIR"="#D7B4F8"))+
  theme(legend.position="bottom")

Mix<-plot_grid(CheMyd, DerCor, labels = c('A', 'B'), label_size = 12)
pdf("~/Google Drive/Phd/STR/KimuraLandscape.pdf",  width = 297, height = 210)
plot_grid(CheMyd, DerCor, labels = c('A', 'B'), label_size = 12)
dev.off()
