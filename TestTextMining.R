cname <- file.path("C:","texts")
cname
dir(cname)

###custom functions###
removeHtmlTags <- function(arg1){
  result <- gsub("<[a-zA-Z/\\s=\"]*>"," ",arg1)
  return (result)
}


###load lib####
library(tm)
#Corpus is a tm lib function
docs <- Corpus(DirSource(cname))

test <- gsub("<[a-zA-Z/\\s=\"]*>", " ",docs[[5]])
print(test)
#summary(docs)
#inspect(docs[1])

#preprocessing
docs <- tm_map(docs,removeHtmlTags)
docs[[5]]$content
docs <- tm_map(docs,removePunctuation)
docs[[5]]$content
#docs[[5]]$content (should be rid of punctuation)


