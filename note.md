heroku create 
git config --list | grep heroku
$ git push heroku master 
heroku ps:scale web=1h
heroku ps
heroku run rails db:migrate 