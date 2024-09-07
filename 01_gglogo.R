# ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~
#      /\_/\
#     ( o.o )
#      > ^ <
#
# Author: Johan Hanekom
# Date: September 2024
#
# ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~

library(grid)
library(png)
library(magick)

gglogo <- function(logo_path, x_npc = 0.5, y_npc = 0.5, scale = 1, dpi = 400) {
  # Function to create a high-quality raster grob from a PNG file
  get_logo_grob <- function(filename, scale, dpi) {
    # Read the image with magick for high-quality processing
    img <- magick::image_read(filename)
    
    # Increase the resolution
    img <- magick::image_scale(img, paste0(dpi, "x"))
    
    # Convert to raster
    img_raster <- as.raster(img)
    
    aspect_ratio <- dim(img_raster)[2] / dim(img_raster)[1]
    
    width <- unit(0.1 * scale, "npc")
    height <- unit(0.1 * scale / aspect_ratio, "npc")
    
    grid::rasterGrob(
      img_raster,
      interpolate = TRUE,
      x = unit(x_npc, "npc"),
      y = unit(y_npc, "npc"),
      width = width,
      height = height,
      just = c("center", "center")
    )
  }
  
  # Create the logo grob
  logo_grob <- get_logo_grob(logo_path, scale, dpi)
  
  # Return the annotation_custom layer
  annotation_custom(grob = logo_grob)
}