resource "aws_ram_resource_share" "resource_share" {
  name                      = var.resource_share_name
  allow_external_principals = var.allow_external_principals
  tags                      = var.tags
}

resource "aws_ram_principal_association" "principal_association" {
  for_each           = toset(var.principals)
  principal          = each.key
  resource_share_arn = aws_ram_resource_share.resource_share.arn
}

resource "aws_ram_resource_association" "resource_association" {
  for_each           = toset(var.associated_resources)
  resource_arn       = each.key
  resource_share_arn = aws_ram_resource_share.resource_share.arn
}
