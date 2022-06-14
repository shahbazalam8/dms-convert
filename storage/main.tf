resource "aws_cloudformation_stack" "dms-stack-storage" {
  name = "dms-cf-stack-storage"

  template_url = "https://jsonbuckettemplates.s3.amazonaws.com/template_storage.json"
    
  parameters = {
    # AdminEmail       = "shahbaz.alam@synectiks.com"
    AppEnvironment   = "stage"
    # EnablePublicUrls = "true"
  }
  capabilities = ["CAPABILITY_IAM", "CAPABILITY_AUTO_EXPAND", "CAPABILITY_NAMED_IAM"]
}