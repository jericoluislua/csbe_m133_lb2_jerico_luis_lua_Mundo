# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

<h1>INSTRUCTIONS:</h1>

<h2>Getting the project files (Ruby, Rails, etc already installed)</h2>
<h3>in terminal:</h3>
run 'git clone https://github.com/jericoluislua/csbe_m133_lb2_jerico_luis_lua_Mundo.git'
<br/>
In the repository folder itself run 'yarn install'

Afterwards you are able to run the server with 'rails s'



<h2><i><b>For a Machine with no Ruby, Rails, etc. :</b></i></h2>
<h3>in terminal:</h3>

'sudo apt-get install git'
<br/>
'sudo apt-get install ruby-full'
<br/>
'git clone https://github.com/jericoluislua/csbe_m133_lb2_jerico_luis_lua_Mundo.git'
<br/>
'sudo apt-get install -y nodejs'
<br/>
<i><b>You have to install yarn or npm</b></i>
<br/>
<h3>in terminal, inside the local repository folder:</h3>

'sudo apt install ruby-railties'
<br/>
'sudo gem install bundler:2.1.4'
<br/>
'gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB'
<br/>
<i><b>change terminal to run command as a login shell</b></i>
<br/>
'rvm use ruby-2.7.0 --ruby-version --create'
<br/>
'gem install rails'
<br/>
'yarn install' or 'npm install'
<br/>
'bundle install'
<br/>
<i><b>install postgresql</b></i>
<br/>
'sudo -u postgres createuser user'
<br/>
//Replace user with the user you have in ubuntu("lua@ubuntu:") so you replace it with lua
<br/>
'sudo -u postgres createdb ivos_db_dev'
<br/>
'rails db:migrate RAILS_ENV=development'
<br/>
'rails s'
