nmcRainColor <- function (alp=1) {
  re <- c(166,56,97,1,250,128,246)
  gr <- c(242,167,184,0,2,6,4)
  bl <- c(142,0,253,254,250,62,4)
  return(rgb(re/255,gr/255,bl/255,alp))
}