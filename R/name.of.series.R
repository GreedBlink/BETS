



name.of.series <- function(n){
  a <- readRDS("data\\FGV_dados.rds")
  dados1=read.csv2("data-raw\\fgv_informação.csv")
  aux <-as.character(names(a[1,n]))
  if(length(dados1[(paste("ST","_",dados1[,1],sep="")) == aux,2])){
    #aux2=paste("ST","_",dados1[i,1],sep="")
    #if(aux == aux2){ 
    return(as.character(dados1[(paste("ST","_",dados1[,1],sep="")) == aux,2] ))
  }else{
    return("Não há série com esse código")
  }
}



