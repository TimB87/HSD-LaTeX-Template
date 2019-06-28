library(tidyverse)
library(cowplot)
#plot Verschuldung
plot_debt <- ggplot(data=Staatsverschuldung, aes(x=Jahr, y=Verschuldung, colour=factor(Land)))+
  geom_line()+
  geom_point()+
  labs(title = "Verschuldung", x="Jahr", y="in Mrd. Euro",colour="Land")
   #+scale_x_date(date_labels = as.Date(Staatsverschuldung$Jahr))
#plot BIB
plot_BIB <- ggplot(data=Staatsverschuldung, aes(x=Jahr, y=BIP, colour=factor(Land)))+
  geom_line()+
  geom_point()+
  labs(title = "Bruttoinlandsprodukt p. Kopf", x="Jahr", y="in Mrd. Euro",colour="Land")
  #+scale_x_date(date_labels = as.Date(Staatsverschuldung$Jahr))
#plot AL-Quote
plot_AL <- ggplot(data=Staatsverschuldung, aes(x=Jahr, y=AL, colour=factor(Land)))+
  geom_line()+
  geom_point()+
  labs(title = "Arbeitslosenquote", x="Jahr", y="in %",colour="Land")
  #+scale_x_date(date_labels = as.Date(Staatsverschuldung$Jahr))

grid_plot <- plot_grid(plot_debt, 
          plot_BIB, 
          plot_AL,
          labels = "AUTO",
          #labels = c("Verschuldung", "Bruttoinlandsprodukt pro Kopf", "Arbeitslosenquote"),
          label_size = 12,
          #label_x = 1,
          #label_y = 1,
          label_fontfamily = "Helvetica",
          align = "h")

save_plot("grid_plot.png", grid_plot, ncol = 2, nrow = 2, base_aspect_ratio = 1.3)