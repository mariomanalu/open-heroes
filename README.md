# Real Heroes DB

## Inspiration
I am inspired by the theme of this hackathon. I believe that anyone can be a hero in real-life, so I am inspired to document the life of people who have contributed significantly to the betterment of society.

## What it does
Real Heroes DB acts as a database containing real-life heroes and their contribution to society, allows anyone to nominate a hero of their choice, and ends messages if a hero a user nominated gets approved to be on the Wall of Heroes.

## How I built it
I built this website using Ruby on Rails, which is a framework that is new to me. I started building the back-end first by creating a model called Hero. Hero is an object with 4 fields: name, field of work, picture and description.

After the back-end was sorted out, I started coding the front-end. I began by writing some code in embedded Ruby, HTML, and JavaScript. When the front-end and back-end worked together, I styled the web app to make it look pretty.

Finally, I installed the Twilio API and coded it such that when a submission is approved, the app sends a message out to the nominating user.

## Challenges I ran into
I ran into a lot of troubles trying to deploy this web app. I learned that GitHub Pages does not support Ruby on Rails framework. I tried using Heroku, but it also returned some error that I could not fix. I am still not able to deploy the web app when I submit this hack.

## Accomplishments that I proud of
I am proud of being able to build a full-stack web application in less than 3 days using a framework that I am not familiar with.

## What I learned
I learned a lot about full-stack development using Ruby on Rails. While developing is easy, I learned that deploying a Ruby on Rails app might be slightly more challenging than deploying apps written in JavaScript such as React.

## What's next for Real Heroes DB
I hope to be able to deploy Real Heroes DB in the future.
