#database update
#teste
getwd()
dir()
info.file(dir())

aux=file.mtime("data-raw\\base_modeloparametrico.csv")

aux2=as.Date(aux)

as.numeric(aux2)
getwd()

database.update<-function(...){
  #data-raw director
  #setwd("data-raw/")
  
  aux1=as.Date(file.mtime("base_modeloparametrico.csv"))
  aux=download.file("https://sourceforge.net/projects/banco-de-dados-teste/files/base_modeloparametrico.csv/download",destfile = "base_modeloparametrico2.csv")
  aux2=as.Date(file.mtime("base_modeloparametrico2.csv"))
  if(aux1 < aux2){
    update("base_modeloparametrico.csv")
  }
  
}

database.update()
