library(httr)


my_key <- Sys.getenv('IFTTT_KEY') # from a GitHub secret
print(nchar(my_key))
event <- 'R_post'
value1 <- 'space+test'
value2 <- 'GitHub%20Action'

webhookURL <- paste0('https://maker.ifttt.com/trigger/', event, '/with/key/', my_key, '?&value1=', value1, '&value2=', value2)

POST(webhookURL)
