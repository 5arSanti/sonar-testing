if [ -z "$SONAR_TOKEN" ]; then
    echo "Please set your SonarCloud token as an environment variable:"
    echo "export SONAR_TOKEN=your-token-here"
    exit 1
fi

echo "# SonarCloud authentication" >> sonar-project.properties
echo "sonar.login=$SONAR_TOKEN" >> sonar-project.properties

echo "SonarCloud authentication has been configured"
echo "You can now run sonar-scanner to analyze your code" 