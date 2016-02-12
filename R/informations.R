


informations <- function(name,code,n){
  require("dplyr")
  a <- readRDS("data\\FGV_dados.rds")
  dados1=read.csv2("data-raw\\fgv_informação.csv")
  lista=list()
  if(missing(name) && missing(code) && missing(n)){
    stop("Enter someone parameter: name or code or n")
  }
  if(missing(code) && missing(n)){
    if(!is.character(name)){stop("erro, the parameter (name) must been a character")
      #name
    }else{
      lista[[1]] = as.character(dados1[dados1[,2] == name,2])
      lista[[2]] = a[,names(a[1,])==paste("ST","_",dados1[dados1[,2] == name,1],sep="")]
      lista[[3]] = analise(a[,n])
      y= decompose(a[,n])
      lista[[4]] = plot(y)
      
      return(lista)
    }
  }else{
    if(missing(name)  && missing(n)){
      #code
      lista[[1]]= code.of.series(code)
      lista[[2]]= a[,names(a[1,]) == paste("ST","_",code,sep="")]
      lista[[3]] = analise(a[,n])
      y= decompose(a[,n])
      lista[[4]] = plot(y)
      
      return(lista)
    }  
  }
  if(missing(name)  && missing(code)){
    lista[[1]] = name.of.series(n)
    lista[[2]] = a[,n]
    lista[[3]] = analise(a[,n])
    y= decompose(a[,n])
    lista[[4]] = plot(y)
    
    return(lista)
  }else{
    
    lista[[1]]=name.of.series(n)
    lista[[2]]=a[,n]
    lista[[3]] = analise(a[,n])
    y= decompose(a[,n])
    lista[[4]] = plot(y)
    return(lista)
  }
}






