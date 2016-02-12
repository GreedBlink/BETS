

code.of.series<- function(n){
  a <- readRDS("data\\FGV_dados.rds")
  dados1=read.csv2("data-raw\\fgv_informação.csv")
  aux1 = paste("ST","_",n,sep ="")  
  if(length(dados1[(paste("ST","_",dados1[,1],sep="")) == aux1,2])){
    return((as.character(dados1[(paste("ST","_",dados1[,1],sep="")) == aux1,2] )))
  }else{
    return("Não há série com esse código")
  }
}



