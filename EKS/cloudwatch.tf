resource "aws_cloudwatch_log_group" "cloudwatch-application" {
  count             = var.enable_cloudwatch_agent ? 1 : 0
  name              = "/aws/containerinsights/${var.eks_cluster_name}/application"
  retention_in_days = var.log_retention_in_days
}

resource "aws_cloudwatch_log_group" "cloudwatch-dataplane" {
  count             = var.enable_cloudwatch_agent ? 1 : 0
  name              = "/aws/containerinsights/${var.eks_cluster_name}/dataplane"
  retention_in_days = var.log_retention_in_days
}

resource "aws_cloudwatch_log_group" "cloudwatch-host" {
  count             = var.enable_cloudwatch_agent ? 1 : 0
  name              = "/aws/containerinsights/${var.eks_cluster_name}/host"
  retention_in_days = var.log_retention_in_days
}

resource "aws_cloudwatch_log_group" "cloudwatch-performance" {
  count             = var.enable_cloudwatch_agent ? 1 : 0
  name              = "/aws/containerinsights/${var.eks_cluster_name}/performance"
  retention_in_days = var.log_retention_in_days
}

resource "aws_cloudwatch_log_group" "fluentbit" {
  count             = var.enable_fluentbit && var.log_preserve_legacy_log_group ? 1 : 0
  name              = "/aws/eks/fluentbit-cloudwatch/logs"
  retention_in_days = var.log_retention_in_days
}