result <- predict(RFpml, cleantest)
# write prediction answers to files
preditmodelfiles = function(x){
  n = length(x)
  for(i in 1:n){
    filename = paste0("finalresult", i, ".txt")
    write.table(x[i], file = filename, quote = FALSE, row.names = FALSE, col.names = FALSE)
  }
}

preditmodelfiles(result)
