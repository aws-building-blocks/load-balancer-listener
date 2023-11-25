variable "AWS_ACCESS_KEY_ID" {
  description = "AWS Access Key"
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS Secret Key"
}

variable "AWS_SESSION_TOKEN" {
  type        = string
  default     = null
  description = "AWS Session Token"
}

variable "AWS_REGION" {
  description = "AWS Region"
}

variable "load_balancer_arn" {
  type        = string
  description = "(Required, Forces New Resource) ARN of the load balancer."
}

variable "port" {
  type        = number
  default     = null
  description = "(Optional) Port on which the load balancer is listening. Not valid for Gateway Load Balancers."
}

variable "protocol" {
  type        = string
  default     = "HTTPS"
  description = "(Optional) Protocol for connections from clients to the load balancer. For Application Load Balancers, valid values are HTTP and HTTPS, with a default of HTTP. For Network Load Balancers, valid values are TCP, TLS, UDP, and TCP_UDP. Not valid to use UDP or TCP_UDP if dual-stack mode is enabled. Not valid for Gateway Load Balancers."
}

variable "ssl_policy" {
  type        = string
  default     = null # "ELBSecurityPolicy-2016-08"
  description = "(Optional) Name of the SSL Policy for the listener. Required if protocol is HTTPS or TLS."
}

variable "certificate_arn" {
  type        = string
  default     = null
  description = "(Optional) ARN of the default SSL server certificate. Exactly one certificate is required if the protocol is HTTPS."
}

variable "default_action_type" {
  type        = string
  default     = "forward"
  description = "(Required) Type of routing action. Valid values are forward, redirect, fixed-response, authenticate-cognito and authenticate-oidc."
}

variable "default_action_target_group_arn" {
  type        = string
  default     = null
  description = "(Optional) ARN of the Target Group to which to route traffic. Specify only if type is forward and you want to route to a single target group. To route to one or more target groups, use a forward block instead."
}

variable "listener_tags" {
  type        = map(string)
  description = "Load balancer listener tags"
}
