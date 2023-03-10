data "aws_api_gateway_rest_api" "my_rest_api" {
  name = "example"
}

resource "aws_api_gateway_resource" "MyDemoResource" {
  rest_api_id = data.aws_api_gateway_rest_api.my_rest_api.id
  parent_id   = data.aws_api_gateway_rest_api.my_rest_api.root_resource_id
  path_part   = "branchedpath"
}