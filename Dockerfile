FROM alpine:latest

RUN apk add --update unzip curl && \
    curl "https://releases.hashicorp.com/terraform/0.6.11/terraform_0.6.11_linux_amd64.zip" -o /terraform.zip && \
    unzip /terraform.zip -d /bin && \
    apk del --purge unzip && \
    rm -rf /terraform.zip

# Copy terraform wrapper
COPY scripts/terraform-wrapper /bin

RUN chmod +x /bin/terraform-wrapper

ENTRYPOINT ["/bin/terraform-wrapper"]

CMD ["--help"]
