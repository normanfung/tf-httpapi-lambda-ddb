resource "aws_cloudwatch_metric_alarm" "metric-alarm" {
  alarm_name                = "norman-ce9-alarm-tf"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = 1
  metric_name               = "info-count"
  namespace                 = "/moviedb-api/norman-ce9"
  period                    = 60
  statistic                 = "Sum"
  threshold                 = 10
  alarm_description         = "This metric monitors lambda invocation count"
  insufficient_data_actions = []
}
