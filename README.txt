# Simple Mailer
Send an email with a small task and quick!

## Configuration
Copy ```env-example.rb``` to ```env.rb``` and update

```
cp env-example.rb env.rb
```

### 1) Update env.rb file
```
ENV["SETTINGS__SMTP__ADDRESS"] = "smtp_server"
ENV["SETTINGS__SMTP__HOST"] = "localhost"
ENV["SETTINGS__SMTP__USER_NAME"] = "username"
ENV["SETTINGS__SMTP__PASSWORD"] = "password"
ENV["SETTINGS__SMTP__FROM"] = "no-reply@localhost"
ENV["SETTINGS__SMTP__PORT"] = "587"
ENV["SUBJECT"] = "Welcome home"
```

### 2) Update
```body.txt```

### 3) Update
```receivers.csv```

## Execute in terminal
- Go to ```cd 'path/to/simple-mailer'``` folder
- Run ```$ ruby mailer.rb```
