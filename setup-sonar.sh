#!/bin/bash

# Get the absolute path of the sonar-scanner directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SONAR_DIR="$SCRIPT_DIR/sonar-scanner-7.1.0.4889-linux-x64"

# Verify the directory exists and has required files
if [ ! -d "$SONAR_DIR" ]; then
    echo "Error: SonarQube scanner directory not found at $SONAR_DIR"
    exit 1
fi

# Verify required files exist
REQUIRED_FILES=(
    "bin/sonar-scanner"
    "lib/sonar-scanner-cli-7.1.0.4889.jar"
    "jre/bin/java"
)

for file in "${REQUIRED_FILES[@]}"; do
    if [ ! -f "$SONAR_DIR/$file" ]; then
        echo "Error: Required file $file not found in $SONAR_DIR"
        exit 1
    fi
done

# Set JAVA_HOME to use the bundled Java
export JAVA_HOME="$SONAR_DIR/jre"
export PATH="$SONAR_DIR/bin:$PATH"

# Make the sonar-scanner and java executable
chmod +x "$SONAR_DIR/bin/sonar-scanner"
chmod +x "$SONAR_DIR/jre/bin/java"

# Create a symbolic link in /usr/local/bin if it doesn't exist
if [ ! -L "/usr/local/bin/sonar-scanner" ]; then
    echo "Creating symbolic link in /usr/local/bin"
    sudo ln -s "$SONAR_DIR/bin/sonar-scanner" "/usr/local/bin/sonar-scanner"
fi

# Make it persistent by adding to .bashrc and .zshrc
for RC_FILE in ~/.bashrc ~/.zshrc; do
    if [ -f "$RC_FILE" ]; then
        # Check if the path is already added
        if ! grep -q "sonar-scanner-7.1.0.4889-linux-x64" "$RC_FILE"; then
            echo "# Add sonar-scanner to PATH and set JAVA_HOME" >> "$RC_FILE"
            echo "export JAVA_HOME=\"$SONAR_DIR/jre\"" >> "$RC_FILE"
            echo "export PATH=\"$SONAR_DIR/bin:\$PATH\"" >> "$RC_FILE"
        fi
    fi
done

# Verify the installation
echo "Verifying installation..."
if ! "$SONAR_DIR/bin/sonar-scanner" --version; then
    echo "Error: SonarQube scanner verification failed"
    exit 1
fi

echo "SonarQube Scanner has been added to your PATH"
echo "JAVA_HOME has been set to use the bundled Java"
echo "You can now use 'sonar-scanner' command from anywhere"
echo "Please restart your terminal or run 'source ~/.zshrc' to apply changes" 