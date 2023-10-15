Set-ExecutionPolicy RemoteSigned -Force
Import-Module AWSPowerShell
cd C:\inetpub\wwwroot 
Copy-S3Object -BucketName codedeploydotnetstack-webappdeploymentbucket-13cquf634vd7q -Key deployment.zip -LocalFile c:\inetpub\wwwroot\deployment.zip
Expand-Archive C:\inetpub\wwwroot\deployment.zip -DestinationPath C:\inetpub\wwwroot\
rm .\deployment.zip
start http://127.0.0.1

