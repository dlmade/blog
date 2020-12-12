## Blog 
This repository is build while writing this blog https://medium.com/analytics-vidhya/deploying-rasa-chatbot-on-heroku-using-docker-7199bf16c219 .

## Repo is devided into two parts 
1. chatbot
It contains Rasa chatbot server.
2. website
It contains Django server for frontend.

## Install dependency 
1. For chatbot folder
```
$ pip install --no-cache rasa==1.5.3
```
2. For website folder
```
$ cd website
$ pip install -r requirements.txt
```

## Steps to see demo
1. Start rasa server
  * Change directory chatbot
  ```
  cd chatbot
  ```
  * Start rasa actions server
  ```
  $ rasa run actions
  ```
  * Start rasa-x if you want to change intent, dialogue and train it again or skip this step.
  ```
  $ rasa x
  ```
  * Start rasa api server
  ```
  $ rasa run --cors "*" --enable-api
  ```

2. Start Django server
* Change directory chatbot
```
cd website
```
* If you want to run your local chatbot then change the this url https://github.com/dlmade/blog/blob/master/website/rasaweb/static/js/script.js#L40 with following one
```
url: 'http://localhost:5005/webhooks/rest/webhook',
```
* Start django server
```
$ python manage.py runserver
```

3. See magic in browser
Run following url in your browser and interect with your bot
```
127.0.0.1:8000
```
