library(maptools)
plot_china <- function(COL="gray",LTY=1,LWD=1) {
  river <- readShapeLines(system.file("extdata/hyd1_4l.shp",package="chinaGeoInfo"))
  ch_sh <- readShapeLines(system.file("extdata/bou2_4p.shp",package="chinaGeoInfo"))
  ch_bou<- readShapeLines(system.file("extdata/bou1_4l.shp",package="chinaGeoInfo"))
  lines(ch_sh,col=COL,lty=LTY,lwd=LWD)
  lines(river,col=COL,lty=LTY,lwd=LWD)
  lines(ch_bou,col=COL,lty=LTY,lwd=LWD)
}
