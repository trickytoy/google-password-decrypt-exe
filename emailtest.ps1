# Define email parameters
$EmailFrom = "forcomp6841proj@outlook.com"
$EmailTo = "forcomp6841proj@outlook.com"
$Subject = "Test Email"
$Body = "This is a test email sent from PowerShell."
$SMTPServer = "smtp-mail.outlook.com"  # Use the SMTP server of your email provider
$SMTPPort = 587                # Use the appropriate SMTP port for your provider
$Username = "forcomp6841proj@outlook.com"
$Password = "C0mp6841"

# Create email credential
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $Username, (ConvertTo-SecureString -String $Password -AsPlainText -Force)

# Send the email
Send-MailMessage -From $EmailFrom -To $EmailTo -Subject $Subject -Body $Body -SmtpServer $SMTPServer -Port $SMTPPort -Credential $Credential -UseSsl
