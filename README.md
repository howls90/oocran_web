# OOCRAN Web Server

Webpage for OOCRAN project.

## Instalacion

```
$ rake secret > command and copy result into the config/secret.yml file
$ bundle install
$ rake db:migrate
$ rails s
```

## Notes

* Database must be located on db folder as sqlite3 extension.
* Email must be configured on config/environments/production.rb