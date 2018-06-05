FostInitTime <- function(divtime=14) {
  nowH <- as.numeric(format(Sys.time(),"%H"))
  now <- Sys.time()
  if(nowH<divtime) {ymdh <- now-(nowH+4)*3600} else
  {ymdh <- now-(nowH-8)*3600}
  #ymdh <- "17122708"
  return(ymdh)
}
