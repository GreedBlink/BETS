#database update


database.update<-function(...){
  #data-raw director
  #setwd("data-raw/")
  #verificando se o diretorio de banco de dados está vazio:
  #usaremos a base antiga, a principio, fgv_informação.csv
  if(length(dir(all.files=TRUE)) !=0){
    print("cheking for updates...")
    #renomeando a base existente para diferenciação
    file.rename(from="base_modeloparametrico.csv",to="base_modeloparametrico_des.csv" )
    #k=read.csv2("data-raw\\base_modeloparametrico.csv")
    aux1=as.Date(file.mtime("data-raw\\base_modeloparametrico_des.csv"))
    aux2=download.file("https://sourceforge.net/projects/banco-de-dados-teste/files/base_modeloparametrico.csv/download",destfile = "base_modeloparametrico2.csv")
    aux3=as.Date(file.mtime("base_modeloparametrico.csv"))
    if(aux1 < aux2){
      print("the database is being updated ...")
      #deletando a base desatualizada
      file.remove("data-raw\\base_modeloparametrico_des.csv")
      #update("base_modeloparametrico.csv")
    }
  }else{
    setwd("data-raw\\")
    download.file("https://sourceforge.net/projects/banco-de-dados-teste/files/base_modeloparametrico.csv/download",destfile = "base_modeloparametrico.csv")
  }
}
