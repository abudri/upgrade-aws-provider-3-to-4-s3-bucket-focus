# upgrade-aws-provider-3-to-4-s3-bucket-focus
Upgrade Terraform AWS provider from Version 3 to 4, S3 Bucket Focus

### Summary

1. Start off on AWS 3.x Terraform provider
2. Have an `aws_s3_bucket` and `terraform apply`
3. Upgrade to AWS 4.x Terraform provider
4. Handle all "similar" warnings and move to new stand-alone resources in 4.x
5. Observe any changes in state to the `aws_s3_bucket` as you make changes