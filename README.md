# README

In this Ruby on Rails Application, we have integrated stripe for payment's subscriptions.

* We are storing users data, in users table

* Authentication: we have used devise for user's authentication.

* User Authentication: Login/Sigup using email and password

* We have made a plan on stripe, to which user will be subscribing

* We are using the same plan, by using plan_id in our code

* After user has successfully subscribed to the plan, they can also delete theirs subscription from Manage Subscription Page




Following steps are followed here:

* Whenever, User logIn

* They will be directed to Welcome Screen

* On the Welcome Screen, they'll see 'Go Premium' button

* On clicking on this 'Go Premium' button, they'll be redirected to Subscribe Page

* On Subscribe page, they'll see 'Pay with Card' button

* On clicking on this, they'll get a popup from stripe, asking them to pay for a Plan

* After successfully payment, they'll be taken to Manage Subscription page

* On Manage Subscription page, they'll see 'Manage Subscription' button

* On clicking on this, they'all be redirected to Subscription Details Page

* Here, they can see subscription Info as well as can delete their subscription



# HEROKU URL
https://mighty-crag-61369.herokuapp.com/
