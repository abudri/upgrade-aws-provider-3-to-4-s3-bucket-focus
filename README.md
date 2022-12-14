# upgrade-aws-provider-3-to-4-s3-bucket-focus
Upgrade Terraform AWS provider from Version 3 to 4, S3 Bucket Focus

### Summary

1. Start off on AWS 3.x Terraform provider
2. Have an `aws_s3_bucket` and `terraform apply`
3. Upgrade to AWS 4.x Terraform provider
4. Handle all "similar" warnings and move to new stand-alone resources in 4.x
5. Observe any changes in state to the `aws_s3_bucket` as you make changes

### AWS 3 and Initial `aws_s3_bucket`

`terraform init`:

![image](https://user-images.githubusercontent.com/17362519/198348905-42d6f82d-852a-4ce8-ab3a-03c712be23b9.png)

`terraform validate`:

![image](https://user-images.githubusercontent.com/17362519/198349050-f0170a7e-d0ff-4f88-8b6b-7b6389efc27b.png)

`terraform plan`:

![image](https://user-images.githubusercontent.com/17362519/198349186-b8f45624-fdc0-4636-99be-4d82b497e231.png)

Note the "3 more similar warnings elsewhere"

`terraform apply`:

![image](https://user-images.githubusercontent.com/17362519/198349623-88f30900-5c50-4969-bc5e-945e4bbe13dc.png)

`terraform state show`:

![image](https://user-images.githubusercontent.com/17362519/198349747-8c4ccfb8-6adb-4538-9c96-0f5872b4f0c8.png)

### Upgrade to AWS 4

ran this:
```
rm -rf .terraform
rm .terraform.lock.hcl 
```

then in `provider.tf`, change the AWS version to 4:

```
version = "~> 4.0"
```

`terraform init`:

![image](https://user-images.githubusercontent.com/17362519/198352438-213f39e6-5bbf-44a7-ab4c-d2b17e6d3d13.png)

`terraform validate`:

![image](https://user-images.githubusercontent.com/17362519/198352488-1cec2312-ee35-4ba2-bd17-fa55f4341b97.png)

`terraform plan`:

![image](https://user-images.githubusercontent.com/17362519/198352539-770b7d29-1b7d-45e1-a421-8e2758464511.png)

### `terraform apply` After the AWS 4 Upgrade

`terraform apply`:

![image](https://user-images.githubusercontent.com/17362519/198353344-645ff664-37de-43b1-90e9-ca6c0ca6741d.png)

(no changes)

`terraform state show`:

![image](https://user-images.githubusercontent.com/17362519/198353424-c9da700d-18df-4183-a190-dc824029c591.png)

Looks the same as before when it was on AWS 3.

### Extracting ACL and Versioning to AWS 4 Stand-alone Resources for Each

`terraform validate`:
