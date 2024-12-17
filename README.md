<div align="center">

# Tech Challenge - DB

![GitHub Release Date](https://img.shields.io/badge/Release%20Date-Dezembro%202024-yellowgreen)
![](https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellowgreen)
<br>
![](https://img.shields.io/badge/Version-%20v1.0.0-brightgreen)
</div>

## 💻 Descrição

Este repositório é responsável por provisionar e configurar uma instância do **Amazon RDS** na **AWS** com o banco de dados **PostgreSQL**, garantindo a criação e o gerenciamento seguro das configurações relacionadas.

## 🛠 Tecnologias Utilizadas

<div align="center">

![AWS RDS](https://img.shields.io/badge/AWS%20RDS-527FFF.svg?style=for-the-badge&logo=Amazon-RDS&logoColor=white)
![AWS SecretManager](https://img.shields.io/badge/AWS%20Secrets%20Manager-DD344C.svg?style=for-the-badge&logo=AWS-Secrets-Manager&logoColor=white)
![Github Actions](https://img.shields.io/badge/GitHub%20Actions-2088FF.svg?style=for-the-badge&logo=GitHub-Actions&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1.svg?style=for-the-badge&logo=PostgreSQL&logoColor=white)

</div>

### 🛠️ Funcionalidades Principais:

- **Provisionamento do RDS**:
  - Criação de uma instância do **Amazon RDS** configurada com **PostgreSQL**.

- **Gerenciamento de Credenciais**:
  - Armazena com segurança o **usuário**, a **senha** e o **nome do banco de dados** no **AWS Secrets Manager**.

- **Armazenamento do Endpoint**:
  - Salva o **endpoint** do RDS (link do banco de dados) no **AWS SSM Parameter Store** para facilitar o acesso seguro.

## Arquitetura

### 🛢️Banco de dados

- **PostgreSQL:**
  - Preferência da comunidade para projetos modernos.
  - Banco de dados open-source que possui licença livre.
  - Consultas SQL complexas e extensíveis.
  - Suporte a índices personalizados e otimizações de desempenho.

### Infraestrutura de banco gerenciado

- **AWS RDS (Relational Database Service):**
  - Configuração gerenciada de instâncias PostgreSQL.
  - Backups automáticos e restauração simplificada.

### Diagrama entidade relacionamento

![Diagrama entidade relacionamento](./assets/diagrama-er.png)

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
