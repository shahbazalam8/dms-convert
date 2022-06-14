resource "aws_cloudformation_stack" "dms-stack-websocket" {
  name = "dms-cf-stack-websocket"

  template_url = "https://jsonbuckettemplates.s3.amazonaws.com/websocket-template.json"
    
  parameters = {
    # AdminEmail       = "shahbaz.alam@synectiks.com"
    AppEnvironment   = "stage"
    # EnablePublicUrls = "true"
    CognitoUserPoolClientId = "fsdsdf"
    CognitoUserPoolId = "sdfsdf"
  }
  capabilities = ["CAPABILITY_IAM", "CAPABILITY_AUTO_EXPAND", "CAPABILITY_NAMED_IAM"]
}