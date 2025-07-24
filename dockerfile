# Use an official HashiCorp Terraform image as the base
FROM hashicorp/terraform:1.8.3

# Set the working directory inside the container
WORKDIR /app

# Copy the contents of your repo into the container
COPY . .

# (Optional) Set an entrypoint or default command
# This will just show the Terraform version by default
CMD ["terraform", "--version"]
