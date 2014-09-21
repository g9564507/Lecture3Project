

codebook<- data.frame(colnames(data),colnames(data))
colnames(codebook)<-c("V1","V2")


codebook$V2<-gsub("(?!^)(?=[[:upper:]])", " ", codebook$V2, perl=T) ## seperate capital letters
codebook$V2<-sub("^Avg","The average of", codebook$V2 )

codebook$V2<-sub("Time","time domain", codebook$V2 )
codebook$V2<-sub("Frequency","frequency domain", codebook$V2 )


codebook$V2<-sub("Body","body", codebook$V2 )
codebook$V2<-sub("Acc","acceleration", codebook$V2 )

codebook$V2<-sub("Mean Freq","mean frequency", codebook$V2 )
codebook$V2<-sub("Mean","mean", codebook$V2 )
codebook$V2<-sub("Std","standard deviation", codebook$V2 )

codebook$V2<-sub("Mag","magnitude", codebook$V2 )


codebook$V2<-sub("Gravity","gravity", codebook$V2 )
codebook$V2<-sub("Gyro","Gyroscope", codebook$V2 )
codebook$V2<-sub("X","in X direction", codebook$V2 )
codebook$V2<-sub("Y","in Y direction", codebook$V2 )
codebook$V2<-sub("Z","in Z direction", codebook$V2 )
codebook$V1<-sub("^Avg","* Avg", codebook$V1 )

write.table(codebook,"codedata.txt",row.name=FALSE)