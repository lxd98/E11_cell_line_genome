library(ggplot2)
library(patchwork)

k15 <- read.csv("e11_15m.histo", sep = " ", header = F)
names(k15) <- c("depth", "frequency")
k15["frequency"] <- k15["frequency"]/1000000
p1 <- ggplot(data=k15,aes(x=depth, y=frequency))+
  geom_line() + 
  xlim(1,700) +
  ylim(0,4) + 
  theme_bw() + 
  ylab("Number (×1e6)") + xlab("15-mer depth")


k17 <- read.csv("e11_17m.histo", sep = " ", header = F)
names(k17) <- c("depth", "frequency")
k17["frequency"] <- k17["frequency"]/1000000
p2 <- ggplot(data=k17,aes(x=depth, y=frequency))+
  geom_line() + 
  theme_bw() + 
  scale_y_continuous(name = "Number (×1e6)", limits = c(0,8), breaks=seq(0,8,1)) + 
  scale_x_continuous(name = "17-mer depth", limits = c(0,500), breaks=seq(0,700,50)) + 
  theme(axis.title=element_text(size=14, colour = "black"),
        axis.text=element_text(size=14, colour = "black"))
p2


