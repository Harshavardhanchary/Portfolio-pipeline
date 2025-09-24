# Cloud Portfolio Hosting on AWS

This project demonstrates the deployment of a static portfolio website using AWS infrastructure, with **S3**, **CloudFront**, **Route 53**, and **Terraform** for managing resources. The site is automatically deployed through **GitHub Actions**.

Website URL: [https://harshavardhan.space/](https://harshavardhan.space/)

## Overview

This repository contains the code and configurations for deploying a static portfolio website to AWS. It uses the following services:

- **S3**: Static website hosting.
- **CloudFront**: Content delivery and caching.
- **Route 53**: DNS management for the custom domain.
- **Terraform**: Infrastructure as Code (IaC) to provision and manage AWS resources.
- **GitHub Actions**: CI/CD pipeline to automate deployments (triggers only when changes are made to `index.html`).

## Getting Started

If you'd like to try deploying this project yourself, you can clone the repository and modify it according to your credentials and preferences.

## Prerequisites

Before you begin, ensure you have:

- An **AWS account**.
- **Terraform** installed and configured.
- **GitHub account** for repository hosting and GitHub Actions.

## Deployment Instructions

###  Clone the Repository

You can clone the repository to your local machine with the following command:

```bash
git clone https://github.com/Harshavardhanchary/Portfolio-pipeline.git
cd Portfolio-pipeline

