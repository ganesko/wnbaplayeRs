library(hexSticker)
library(magick)
library(ggplot2)



p <- "https://png.pngtree.com/png-vector/20230303/ourmid/pngtree-basketball-line-icon-vector-png-image_6630761.png"

sticker(p, package="wnbaplayeRs", p_size=10, s_x=1, s_y=.75, s_width=.7, s_height=2, 
        h_fill="#f98", h_color="#f9690e",
        filename="data-raw/wnba_sticker.png")



