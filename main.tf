resource "aws_cloudformation_stack" "dms-stack" {
  name = "dms-cf-stack"

  template_url = "https://trainingusbatch.s3.amazonaws.com/template.json"
    
  parameters = {
    AdminEmail       = "shahbaz.alam@synectiks.com"
    AppEnvironment   = "stage"
    EnablePublicUrls = "true"
  }
  capabilities = ["CAPABILITY_IAM", "CAPABILITY_AUTO_EXPAND", "CAPABILITY_NAMED_IAM"]
}