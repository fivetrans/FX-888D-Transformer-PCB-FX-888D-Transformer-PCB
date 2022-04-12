FROM mcr.microsoft.com/devcontainers/ruby:0-${templateOption:imageVariant}

# Install Rails
RUN gem install rails webdrivers 

# Default value to allow debug server to serve content over GitHub Codespace's port forwarding service
# The value is a comma-separated list of allowed domains 
ENV RAILS_DEVELOPMENT_HOSTS=".gi