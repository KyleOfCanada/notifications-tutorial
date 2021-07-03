library(httr)


my_key <- Sys.getenv('IFTTT_KEY') # from a GitHub secret
event <- 'R_post'
value1 <- 'test'
value2 <- 'GitHubAction'

webhookURL <- paste0('https://maker.ifttt.com/trigger/', event, '/with/key/', my_key, '?&value1=', value1, '&value2=', value2)

POST(webhookURL)
