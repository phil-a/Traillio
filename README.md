#Traillio
This is a small implementation of the Twillio API using Rails.


##Setup
Download ngrok --> https://ngrok.com/
Extract and copy to the root directory of the app
Start the ngrok server by running:
```
./ngrok http <port>
```
Add the URL given to your Twillio settings on their webpage.
In the terminal add your Twillio keys:
```
export SECRET_KEY_BASE=<secret_key_base>
export TWILIO_AUTH_TOKEN=<twilio_auth_token>
```

Start up rails:
```
rails s
````

##Test
#### Voice
Call the number, or use:
```
curl -X POST http://localhost:3000/twilio/voice -d 'key=val'
```
#### Send an SMS notification:
```
curl --data "key=val" http://localhost:3000/notifications/notify
```

Get list of responses:
```ruby
curl --data "key=val" http://localhost:3000/notifications/messages
```