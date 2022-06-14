#code block for the stack 
# resource "aws_cloudformation_stack" "dms-stack-storage" {
#   name = "dms-cf-stack-console-storage"

#   template_url = "https://jsonbuckettemplates.s3.amazonaws.com/template_console.json"
    
#   parameters = {
#     AdminEmail       = "shahbaz.alam@synectiks.com"
#     AppEnvironment   = "stage"
#     # EnablePublicUrls = "true"
#   }
#   capabilities = ["CAPABILITY_IAM", "CAPABILITY_AUTO_EXPAND", "CAPABILITY_NAMED_IAM"]
# }

## Independently executing template-install json to later integrate with main stack
# s3://jsonbuckettemplates/template-install.json

resource "aws_cloudformation_stack" "dms-stack-storage" {
  name = "dms-cf-stack-console-storage"

  template_url = "https://jsonbuckettemplates.s3.amazonaws.com/template-install.json"
    
  parameters = {
    AdminEmail       = "shahbaz.alam@synectiks.com"
    AppEnvironment   = "stage"
    # EnablePublicUrls = "true"
  }
  capabilities = ["CAPABILITY_IAM", "CAPABILITY_AUTO_EXPAND", "CAPABILITY_NAMED_IAM"]
}