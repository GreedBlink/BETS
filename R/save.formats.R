if(require(foreign)==F){
  install.packages("foreign")
  require(foreign)
}

save.formats<-function(current.row,n){
  mydata=informations(n=n)[[2]]
  print("after using the function informations")
  print("Do you want to save the series into any  of formats below?")
  print("Excel, Sas, Stata, spss or txt")
  response <- readline("Yes or No? ")
  if(tolower(response) %in% c("y", "yes")){
    print("what format do you want to save?")
    #print("1-Excel, 2-Sas, 3 -Stata, 4 - Spss or 5 - Txt?")
    response <- readline("1-Excel, 2-Sas, 3 -Stata, 4 - Spss or 5 - Txt?")
    if(tolower(response) %in% c(seq(1,5,1))){
      if(tolower(response)==1){
        library(xlsx)
        write.xlsx(mydata, "c:/mydata.xlsx")
        
      }else if(tolower(response)==2){
        library(foreign)
        write.foreign(mydata, "c:/mydata.txt", "c:/mydata.sas",   package="SAS")
      }else if(tolower(response)==3){
        library(foreign)
        write.dta(mydata, "c:/mydata.dta")
      }else if(tolower(response)==4){
        library(foreign)
        write.foreign(mydata, "c:/mydata.txt", "c:/mydata.sps",   package="SPSS")
      }else{
        write.table(mydata, "c:/mydata.txt", sep="\t")
      }
    }
  }
}


