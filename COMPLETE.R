complete<-function(directory,id=1:332){
        x<-id
        y <- list.files(path= directory, full.names= TRUE)
        z <- y[x]
        datt<-data.frame()
        c <- data.frame("id" = NULL, "nobs" = NULL)
        for(i in x) {
                
                dat <- read.csv(y[i])
                b<-complete.cases(dat)
                a<-sum(complete.cases(dat))
                dframe<-data.frame("id"=i,"nobs"=a)
                c <- rbind( c,dframe)
        }  
        c
        
}


