APP GROUP PROJECT - README
===
# TOPWALKER 

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
* **"An App that motivates user to become physically Active by giving one an opportunity to compete with other users and earn Real Cash and Rewards"** 
* User can compete with friends, family or just random people by
   * Adding them to the session from friendlist
   * Setting the time period of the Session
   * Final cash price which each user contributes to as a final reward. 
* Session member with the most amount of steps and Calorie Burn would be consider as the "Winner" of the session and earn the achievemnt badge as well as take the final Reward Home.

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category: Health and Fitness**
- **Mobile: IOS**
- **Story: Meant for people to get moving**
- **Market: All ages**
- **Habit: yes**
- **Scope: big**

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can sign up for a new account
* User can login with username and password
* User can view the record of their steps taken (steps measured through Health API)

* User can add other user(s) as a friend to the FriendList
* User can see the detailed info of other user in the Friendlist

* User can Create a new activity session 
* User can view the ID assigned to specific session
* User can choose/Enter the Money Amount for the session being created
* User can Add friend(s) from the Friends List to the session being created
* User can choose time period for the session

* User can view the time left till the session ends
* User can see the TIME UP screen with the name of the winner
* User can choose Payment Method to pay the winner

* User can view their Profile info with Name, Age, Weight, Height, City(w/ State) in Profile/Setting Tab

**Optional Nice-to-have Stories**
* User can edit their info after sign up screen is gone
* User can unfriend other users from their friendList
* Users can chat within a session
* User can view the other members in the current session
* User can see the steps taken by other members in the session
* User can join other session by entering session id #
* User can join other sessions on the basis of their Neighborhood, City or State
* User will be able to compete with the Same-Age Group Users



### 2. Screen Archetypes

* Login Screen
   * User can login with username and password
* New User SignUp Screen
   * User can sign up for a new account by adding (username, password, Age, Weight, Height, City(w/ State))
* Create Session Screen
   * User can Create a new activity session 
* Adding Session Info Screen
   * User can view the ID assigned to specific session
   * User can choose/Enter the Money Amount for the session being created
   * User can Add friend(s) from the Friends List to the session being created
   * User can choose time period for the session
* Timeline Screen
   * User can view the record of their steps taken (steps measured through Health API)
   * User can view the time left till the session ends
   * tracks steps walked over time in calendar view as well
* Time UP Screen
   * User can see the TIME UP screen with the name of the winner
   * User can choose one of the Payment Methods to pay the winner
* FriendList Screen
   * User can add other user(s) as a friend to the FriendList
* Detailed Friend Info Screen
   * User can see the detailed info of other user in the Friendlist

* User Profile Setting Screen
   * User can view their Profile info with Name, Age, Weight, Height in Profile/Setting Tab



### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Create Session Screen
* Timeline Screen
* FriendList Screen
* User Profile Setting Screen

**Flow Navigation** (Screen to Screen)

* Log-in 
   * => Account Sign up Screen if no log in is available
* Create Session Screen
   * => Adding Session Info Screen
* Timeline Screen
   * => Time UP Screen
* FriendList Screen
   * => Detailed Friend Info Screen
* User Profile Setting Screen
   * None





## Wireframes


![TopWalker_framework](https://user-images.githubusercontent.com/42243986/114877224-1587a600-9dcd-11eb-8b3b-49f983222b93.JPG)


### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]


### Models
[Add table of models]


### User
Property | Type | Description
| :--- | :--- | :---
nameOfUser  | Pointer to User | user in charge
userPass     | String| Encrypted password of user 
userAge     | Number | age of user  
userWeight  | Number | weight of user
userHeight  | Number | height of user 
userCityState  | String | City and State of the user
stepCount  | Number | number of steps by user retrieved from api
friendListCount  | Number | Total number of users in the Friend List

### Session
Property | Type | Description
| :--- | :--- | :---
sessionId  | String | unique id of the session (default)
moneyAmount  | Number | Ampount of money user began session with
timeChosen  | Number | Time Period Chosen for the session
timeLeft  | Number | Amount of time left until session ends 
winnerUser | String | Name of the user with highest steps when session ends
numberOfFriendsinSession  | Number | number of friends currently in the session


create(POST) , read(GET), update(PUT) ,delete(DELETE)

### Networking
[Add list of network requests by screen ]

### List of network requests by screen

* Login Screen
   * (Read/GET) Query log in user object
* New User SignUp Screen
   * (Create/POST) Create a new user
* Create Session Screen
   * (Create/POST) Create a new Session
* Adding Session Info Screen
   * (Update/PUT) Update the money amount 0 with new amount entered by current user
   * (Update/PUT) Add the friends(other users) from the friendlist to the session
   * (Update/PUT) Update the time period 0 with new time period entered by current user (time in weeks)
* Timeline Screen
   * (Read/GET) Query the steps of current user
   * (Read/GET) Calculate the time left until session ends
* Time UP Screen
   * (Read/GET) Query the user from the session list with highest steps earned at the time of session ending
* FriendList Screen
   * (Update/PUT) Use Add Button to add users from database to the friendlist array using their username (all users are in database)
   * (Read/GET) Query the list of users in the Friendist of current user 
* Detailed Friend Info Screen
   * (Read/GET) Query the info of selected user from the friendlist
* User Profile Setting Screen
   * (Read/GET) Query the current user's name, Age, Weight, Height, City w/ State 




- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]



