# GCP Cloud Build with GitLab Integration using Terraform

[![Mikaeel Khalid](https://badgen.now.sh/badge/by/mikaeelkhalid/purple)](https://github.com/mikaeelkhalid)

This Terraform configuration sets up Google Cloud Build to trigger builds from a GitLab repository and store built Docker images to the Google Artifact Registry.

## Resources

1. **Google Artifact Registry Repository**: A repository in Google Artifact Registry where Docker images are stored.
2. **Google Cloud Build IAM roles**: Grants the necessary permissions to the Cloud Build service account for pushing images to Artifact Registry and accessing secrets.

3. **Google Cloud Build Connection**: Establishes a connection to the GitLab repository, allowing Cloud Build to listen for events like push or merge requests.

4. **Google Cloud Build Trigger**: This defines the conditions under which Cloud Build should trigger a build. Currently, it triggers on a push event to a specific branch of the GitLab repository.

## File Structure

```
.
├── artifact-registry.tf          # Google Artifact Registry configuration
├── cloud-build.tf                # Google Cloud Build and GitLab integration
├── provider.tf                   # Provider and Terraform settings
├── variables.tf                  # Variable declarations
└── README.md                     # Documentation
```

## Prerequisites

- **Google Cloud SDK**: Ensure you have the [Google Cloud SDK](https://cloud.google.com/sdk/docs/install) installed and initialized.
- **Terraform**: You should have [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) (version ~> 1.0.0) installed.
- **GitLab Repository**: You need a GitLab repository that you want to integrate with Google Cloud Build.
- **GitLab API Tokens**: Make sure to generate API tokens from GitLab for authentication.

- **Google Cloud Project**: A Google Cloud Project set up with billing enabled is required.

- **Enabled APIs**: The Artifact Registry, Cloud Build, and Secret Manager APIs should be enabled on your Google Cloud Project.

## Get Started

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/mikaeelkhalid/gcp-cloudbuild-gitlab-terraform.git
   cd gcp-cloudbuild-gitlab-terraform
   ```

2. **Update Variables**: Modify the `variables.tf` file with your specific values. You can also set them using environment variables or via the command line.

3. **Initialize Terraform**:

   ```bash
   terraform init
   ```

4. **Plan & Apply**:

   ```bash
   terraform plan
   terraform apply
   ```

5. **Clean Up**: To destroy the resources when you're done:

   ```bash
   terraform destroy
   ```

Remember to validate your configuration and take necessary precautions, especially when working in production environments.

## Contributing

Feel free to raise issues or pull requests if you'd like to improve the configurations or add more features.

