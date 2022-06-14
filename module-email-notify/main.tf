resource "aws_cloudformation_stack" "dms-stack-email" {
  name = "dms-cf-stack-eamil"

  template_url = "https://jsonbuckettemplates.s3.amazonaws.com/email-template.json"
    
  parameters = {
    # AdminEmail       = "shahbaz.alam@synectiks.com"
    Email = "shahbaz.alam@synectiks.com"
    AppEnvironment   = "stage"
    # EnablePublicUrls = "true"
  }
  capabilities = ["CAPABILITY_IAM", "CAPABILITY_AUTO_EXPAND", "CAPABILITY_NAMED_IAM"]
}