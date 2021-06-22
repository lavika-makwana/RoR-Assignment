# Contact Form
​
##### Prerequisites
​
The setup expects following tools installed on the system.
​
- Ruby [2.6.3]
- Rails [6.0.3.7]
- Node.js
- Yarn
- PostgreSQL
​
##### 1. Check out the repository
​
```bash

git clone https://github.com/lavika-makwana/RoR-Assignment
```
​
##### 2. Setup database config
​
Edit config/database.yml file and add your PostgreSQL user username and password.
​
##### 3. Create and setup the database
​
Run the following commands to create and setup the database.
​
```ruby
rake db:create
```
​
```ruby
rake db:migrate
```
​
##### 4. Add GMAIL credentials
​
- To add the credentials, run the following command, which creates a config/application.yml file and modifies the .gitignore file to prevent the file from being checked into a git repository.
​
    ```ruby
    bundle exec figaro install
    ```
- Add the following key-value pairs in config/application.yml
​
    MAILER_EMAIL: 'xxxxx@xxx.in'
    MAILER_PASSWORD: '**********'
    MAILER_EMAIL_TO: 'xxxxx@xxx.in'
​
##### 5. Install the dependencies
​
```ruby
bundle install
```
​
##### 6. Start the Rails server
​
You can start the rails server using the command given below.
​
```ruby
rails s
```
​
And now you can visit the site with the URL http://localhost:3000