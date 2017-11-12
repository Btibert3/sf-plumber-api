options(stringsAsFactors = FALSE)

########################### initialize the data

## get the data for the model
URL = "https://stats.idre.ucla.edu/stat/data/binary.csv"
df = read.csv(URL)

## fit a model
mod = glm(admit ~ ., data=df, family = binomial())

########################### Build out the endpoints

#' Score a basic model to predict admit staths
#' @param rank The admissions rank
#' @param gpa the applicants gpa
#' @param gre the applicants gre
#' @get /score
function(rank, gpa, gre){
  ## make sure they are numeric
  df = data.frame(rank = as.numeric(rank) ,
                  gpa = as.numeric(gpa) ,
                  gre = as.numeric(gre) )
  ## fit the model
  score = predict(mod, df, type="response")
  
  ## score the model
  score_clean = unname(score[1])
  
  ## return the data
  list(score = score_clean, 
       prediction_status = (is.numeric(score_clean) & length(score_clean)==1) )
}



