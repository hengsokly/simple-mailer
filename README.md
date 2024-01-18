# Simple Mailer
Send an email with a small task and quick!

## Configuration
Copy ```env-example.rb``` to ```env.rb``` and update

```
cp env-example.rb env.rb
```

### 1) Update env.rb file for SMTP configuration
```
# SMTP config
ENV["SETTINGS__SMTP__ADDRESS"] = "smtp_server"
ENV["SETTINGS__SMTP__HOST"] = "localhost"
ENV["SETTINGS__SMTP__USER_NAME"] = "username"
ENV["SETTINGS__SMTP__PASSWORD"] = "password"
ENV["SETTINGS__SMTP__FROM"] = "no-reply@localhost"
ENV["SETTINGS__SMTP__PORT"] = "587"
ENV["SUBJECT"] = "Welcome home"
```

### 2) Update email body content
Open ```body.txt``` and add the content that you want to send to your receivers.

### 3) Update the receiver email list
Open ```receivers.csv``` and append the receiver email line by line.

## Execute in terminal
- Go to ```cd 'path/to/simple-mailer'``` folder
- Run ```$ ruby mailer.rb```
