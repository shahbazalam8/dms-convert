resource "aws_cloudformation_stack" "dms-stack-cognito" {
  name = "dms-cf-stack-cognito"

  template_url = "https://jsonbuckettemplates.s3.amazonaws.com/cognito-template.json"
    
  parameters = {
    # AdminEmail       = "shahbaz.alam@synectiks.com"
    # AppEnvironment   = "stage"
    # EnablePublicUrls = "true"
    RedirectUrl = "abc"
    UserPoolName = "tryit"
    Domain = "ddddc"

  }
  capabilities = ["CAPABILITY_IAM", "CAPABILITY_AUTO_EXPAND", "CAPABILITY_NAMED_IAM"]
}