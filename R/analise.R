


analise<- function(x){
  x.matrix <- matrix(x, ncol=12, byrow = T)
  w=list()
  m <- ts(apply(x.matrix,1,mean, na.rm = T), start = start(x))
  dp <- ts(apply(x.matrix,1,sd, na.rm = T), start = start(x))
  inicio = start(x)
  fim = end(x)
  y=as.character(seq(from=inicio[1],to=fim[1],by=1))
  
  aux1=matrix(as.vector(m),1,length(as.vector(m)),byrow = T,dimnames=list(c("obs:"),c(y[1:length(y)])))
  
  aux2=matrix(as.vector(dp),1,length(as.vector(dp)),byrow = T,dimnames=list(c("obs:"),c(y[1:length(y)])))
  
  #w=list(media.anual = m, desvio.padrao.anual= dp)
  w[[1]]=aux1
  w[[2]]=aux2
  
  #y=seq(from=inicio[1],to=fim[1],by=1)
  
  #w2=matrix(w[[1]][1],n,1,dinames=y,byrow=TRUE)
  
  return(w)
}
