# SSO
# How it works?

Thid is a basic API application for handling requests from third-side applicatons by Auth with Omniauth:
*   User click on 'auth with github'
*   Rails app redirect him to github page
*   User sign in on github and grant access to your app
*   Github redirect user back to [third-side](https://github.com/InvaQ/unicell) app
*   Rails app got at least two things: provider and uid
```bash    
curl -X GET -H localhost:3000/users/get_users
```
returns json array of all users if you authorized

# Used Technologies
* [rails](https://github.com/rails/rails)
* [omniauth](https://github.com/omniauth/omniauth)
* [omniauth-github](https://github.com/intridea/omniauth-github).
* [devise_token_auth](https://github.com/lynndylanhurley/devise_token_auth)
* [rack-cors](https://github.com/cyu/rack-cors)
* [dotenv](https://github.com/bkeepers/dotenv)

# Usage
```bash
bundle install
```
add database.yml to config folder
```bash
rake db:create
rake db:migrate
rake db:seed
```
set up OmniAuth callback:
*   Create Github App https://github.com/settings/applications/new
*     Set site url to http://localhost:3000/ 
*     callback url to http://localhost:3000/omniauth/github/callback
* create .env file in root directory
* place there code provided from Github settings
* example:
*   GITHUB_KEY=11111aaa11aaa1
*   GITHUB_SECRET=s111111sssssss1s1111s1s1s1s1s1s
 
 ```bash
 rails server -b 0.0.0.0
 ```
