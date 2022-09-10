# simple-ml-infra
Repository for setting up simple MLOps infrastructure

## Quick guide
1. Install terraform
2. Set up an AWS account and a default aws-cli profile with a corresponding Acces key ID an a Secret access key.
3. Create a `.env` file in the same directory where `main.tf` is located and contains the following info:
    ```
    AWS_ACCESS_KEY_ID = <my_access_key_id>
    AWS_SECRET_ACCESS_KEY = <my_secret_access_key>
    ```
    NOTE: DO NOT VERSION THE `.env` FILE WITH GIT!
4. create a python virtual environment and instal `pydotenv[cli]`. This tool will be used to
pass environmental variables stored in the `.env` file to terraform.
4. Run `dotenv run terraform init`
5. Make any desired changes to the terraform state.
6. Run `dotenv run terraform apply` to apply changes.
7. Profit!
