plot_nanhai <- function(figarea=c(0.78,0.95,0.20,0.45)) {
  library(sp)
  library(raster)
  library(rgdal)
  china.bou<-readOGR(dsn=system.file("extdata/bou1_4l.shp",package="chinaGeoInfo"),layer="bou1_4l")
  projection(china.bou) <- CRS("+proj=longlat +ellps=WGS84 +towgs84=0,0,0,0,0,0,0 +no_defs")
  ext<-extent(china.bou)
  par(fig=figarea,new=TRUE,mar=c(0,0,0,0))
  plot(china.bou,xlim=c(ext[1]+32,ext[2]-11),ylim=c(ext[3]+2,ext[4]-32))
  box(lty="1373",lwd=2)
}
