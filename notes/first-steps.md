### Adjustments to work in RaspberryPi Hardware

For localstack compatibility with ARM64 Architectures: https://docs.localstack.cloud/references/arm64-support/

Configurations: https://docs.localstack.cloud/references/configuration/#lambda

export DOCKER_DEFAULT_PLATFORM=linux/amd64

Terraform Local: pip install terraform-local
How to configure terraform local for localstack: https://docs.localstack.cloud/user-guide/integrations/terraform/

### Using PRO license in LocalStack

Directly Environment Variable:

```bash
LOCALSTACK_AUTH_TOKEN=${LOCALSTACK_AUTH_TOKEN}
```

By Docker Compose:

```yaml
environment:
  - LOCALSTACK_AUTH_TOKEN=${LOCALSTACK_AUTH_TOKEN}
```


### Persistence

https://docs.localstack.cloud/user-guide/state-management/persistence/