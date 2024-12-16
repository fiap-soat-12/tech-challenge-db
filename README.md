<div align="center">

# Tech Challenge - DB

![GitHub Release Date](https://img.shields.io/badge/Release%20Date-Dezembro%202024-yellowgreen)
![](https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellowgreen)
<br>
![](https://img.shields.io/badge/Version-%20v1.0.0-brightgreen)
</div>

## 💻 Descrição

Este repositório é responsável criar o banco de dados no RDS.

## 🛠 Tecnologias Utilizadas

<div align="center">

![AWSRDS](https://img.shields.io/badge/AWS%20RDS-312DB2.svg?style=for-the-badge&logoColor=white)
![AWSSecretManager](https://img.shields.io/badge/AWS%20Secrets%20Manager-DD344C.svg?style=for-the-badge&logo=AWS-Secrets-Manager&logoColor=white)
![GithubActions](https://img.shields.io/badge/GitHub%20Actions-2088FF.svg?style=for-the-badge&logo=GitHub-Actions&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1.svg?style=for-the-badge&logo=PostgreSQL&logoColor=white)

</div>

## ⚙️ Configuração

### Pré-requisitos

1. É necessário executar a pipeline para criar o VPC no repositório: https://github.com/fiap-soat-12/fiap-soat-tech-challenge-vpc
2. É necessário executar a pipeline para criar a imagem no ECR no repositório: https://github.com/fiap-soat-12/fiap-soat-tech-challenge-api

### Desenvolvimento

- **[Terraform](https://www.terraform.io/)**: Site oficial do Terraform.
- **[AWS](https://aws.amazon.com/pt/)**: Site oficial da AWS.
- **[PostgreSQL](https://www.postgresql.org/docs/)**: Documentação oficial do PostgreSQL.

## 🚀 Execução

### Subindo o DB

  Caso deseje subir o banco no RDS, basta seguir os seguintes passos:
  
  1. Certificar que o Terraform esteja instalado executando o comando `terraform --version`;
  ![terraform-version](./assets/terraform-version.png)

  2. Certificar que o `aws cli` está instalado e configurado com as credenciais da sua conta AWS;
  ![aws-cli-version](./assets/aws-cli-version.png)

  3. Acessar a pasta `terraform` que contém os arquivos que irão criar o banco de dados;
  4. Inicializar o Terraform no projeto `terraform init`;
  5. Verificar que o script do Terraform é valido rodando o comando `terraform validate`;
  6. Executar o comando `terraform plan` para executar o planejamento da execução/implementação;
  7. Executar o comando `terraform apply` para criar o banco de dados;
  8. Após a execução do Terraform finalizar, verificar se o banco de dados subiu corretamente na AWS;
  ![db-aws-image](./assets/db-aws-image.png)
