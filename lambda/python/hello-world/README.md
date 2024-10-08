### ☁️⚙️ What resources will be created

1. AWS ECR Repository (with the AWS Lambda name);
2. AWS ECR Image (with the Lambda code version, eg: variable **function_version**);
3. AWS Lambda with containers compatibility already using the ECR image;

### 📘 Project Diagram

You can check the diagram below to understand more about what this terraform + localstack project is for.

![Alt text](img/diagram.png)

### 🌍 Terraform Local

First, you'll need use the infrastructure folder

```
cd infrastructure
````

After that, you'll can use the terraform local commands. You can follow the commands bellow.

Terraform Apply:

```bash
tflocal init
```

```bash
tflocal apply -var-file="values.tfvars"
```

Terraform Destroy:

```
tflocal destroy -var-file="values.tfvars"
```

### λ Local AWS Lambda Invokes

Invoking local Lambda functions with awslocal for testing purposes.

```bash
awslocal lambda invoke --function-name hello-world --payload '' output.txt
```

Expecting output for this case:

```
{"message": "Hello, Local World! =)"}
```
