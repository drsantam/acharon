library(limer)
options(lime_api = 'https://survey.chavi.ai/index.php/admin/remotecontrol')
options(lime_username = Sys.getenv("lime_username"))
options(lime_password =Sys.getenv("lime_password"))
get_session_key()

responses <- get_responses(727486,
                           sCompletionStatus = "complete",
                           sHeadingType = "code",
                           sResponseType = "long"
)

write.csv(responses,"data.csv",row.names = F,na="")