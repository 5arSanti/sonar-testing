#!/bin/sh

# Clean SonarQube cache
rm -rf ~/.sonar/cache/*

# Fix permissions for the sonar-scanner directory
chmod -R +x sonar-scanner-7.1.0.4889-linux-x64/bin/
chmod -R +x sonar-scanner-7.1.0.4889-linux-x64/jre/bin/

# Create cache directory with proper permissions
mkdir -p ~/.sonar/cache
chmod 755 ~/.sonar/cache

echo "Permissions have been fixed and cache has been cleaned"
echo "Try running sonar-scanner again" 