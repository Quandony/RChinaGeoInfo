dq.antipoly.china <- function(anticol="gray") {
ch <- readShapePoly(system.file("extdata/bou1_4p.shp",package="chinaGeoInfo"))
tem_ply <- slot(ch,"polygons")
china <- tem_ply[[196]]; china <- slot(china,"Polygons"); china <- china[[1]]; china <- slot(china,"coords");
taiwa <- tem_ply[[633]]; taiwa <- slot(taiwa,"Polygons"); taiwa <- taiwa[[1]]; taiwa <- slot(taiwa,"coords");
haina <- tem_ply[[886]]; haina <- slot(haina,"Polygons"); haina <- haina[[1]]; haina <- slot(haina,"coords");
u <- par("usr")
x1 <- c(china[1:15000,1],taiwa[,1],taiwa[1,1],china[15000:23127,1],haina[,1],haina[1,1],china[23127:46220,1],china[1,1],u[1],u[1],u[2],u[2],u[1])
y1 <- c(china[1:15000,2],taiwa[,2],taiwa[1,2],china[15000:23127,2],haina[,2],haina[1,2],china[23127:46220,2],china[1,2],u[4],u[3],u[3],u[4],u[4])
polygon(x1,y1,col=anticol,border="white")
}
