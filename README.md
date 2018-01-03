# OOCRAN Web Server

Webpage for OOCRAN project. Web application wrote in ruby oon rails version 5.0.1 that contains information about the Open Source project call Open Orchestration Cloud Radio Access Network. 

## Installation
Copy the repository and execute the folling commands on the root directory:

```
$ bundle install
$ rails db:migrate
$ rails s
```

## Notes

* Database must be located on db folder as sqlite3 extension.
* Email must be configured on config/environments/production.rb
* For security reasons execute the following command before put the server in production:
```
$ rake secret > command and copy result into the config/secret.yml file
```

## License
This software is licensed under the MIT License.
