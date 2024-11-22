library(hexSticker)
library(magick)
library(ggplot2)
library(showtext)

font_add_google("Space Grotesk", "Medium 500")

p <- "https://png.pngtree.com/png-vector/20230303/ourmid/pngtree-basketball-line-icon-vector-png-image_6630761.png"

#sticker(p, package="wnbaplayeRs", p_size=10, s_x=1, s_y=.75, s_width=.7, s_height=2, 
        #h_fill="#f98", h_color="#f9690e",
        #filename="data-raw/wnba_sticker.png")

g <- "https://images.vexels.com/content/229710/preview/female-basketball-player-athlete-cut-out-877a9b.png"

sticker(g, package="wnbaplayeRs", p_size=15, s_x=1, s_y=.75, s_width=.5, s_height=2, p_family = "Medium 500",
        h_fill="white", h_color="#fa4d00", p_color="#fa4d00",
        filename="data-raw/wnba_sticker.png")


