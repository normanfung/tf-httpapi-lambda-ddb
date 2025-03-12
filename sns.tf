resource "aws_sns_topic" "sns_topic" {
  name = "${local.name_prefix}-lambda-info-breach"
}

resource "aws_sns_topic_subscription" "email_subscription" {
  topic_arn = aws_sns_topic.sns_topic.arn
  protocol  = "email"
  endpoint  = "normanfung96@gmail.com" # Replace with your email
}
