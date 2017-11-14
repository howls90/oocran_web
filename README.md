# OOCRAN Web Server

Web server for OOCRAN project wrote in ruby on rails.

Install:
- "rake secret" command and copy result into the config/secret.yml file
- bundle install
- rake db:migrate
- rails server
- and more

Notes:
- database must be located on db folder as sqlite3 extension.
- Email must be configured on config/environments/production.rb