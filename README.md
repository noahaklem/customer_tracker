## Description

Customer tracker is a simple way to keep track of you business clients through name and previous conversations. You can ADD, DELETE, EDIT a customers name and make comments on previous conversations. 

## Using Customer Tracker
You will need to sign up as a user. Once created and signed in you will have full access to your customers.

## Fork and Clone
Fork and clone the repo to your local machine.

## Bundle
Run "bundle install" in your terminal

## Shotgun
If you are using this on your local machine, shotgun is preventing sessions from being logged. Thin is recommended to start a server on you local machine by running "thin start" in your terminal.

## .ENV 
Customer_tracker relies on sessions to post comments on a customers feed. You will need to create your own .env folder with a SESSION_SECRET. 

Create file in root directory named '.env'. In it define a SESSION_SECRET.
.env
    ````
    SESSION_SECRET="whateveryoulike"
    ````
then your ApplicationController will call ENV["SESSION_SECRET"] to set your sessions. You do not need to edit any code in the ApplicationController.

