# aRoomi

aRoomi is a project build with ruby on rails with a react frontend.

aRoomi is a platform for college students to find a roommate quickly that goes to their school.

## This is the repo for aRoomi's backend
To view frontend please visit: https://github.com/theprivatepark/aRoomi-backend/blob/main/README.md

## Features




A user can search through a list of colleges and find all of the listings there. <br/>
![aroomi search](https://user-images.githubusercontent.com/69116393/102390672-b5a9fb80-3fa2-11eb-998f-a67e2306b0b8.gif)

<br/>
<br/>

A user can click on a listing and view the listing details as well as see all of the pictures of the room/house. <br/>
![aroomi listing](https://user-images.githubusercontent.com/69116393/102390866-f4d84c80-3fa2-11eb-869a-7874c5cbcc52.gif)

<br/>
<br/>

A user can post a new listing. <br/>
![aroomi create a listing](https://user-images.githubusercontent.com/69116393/102390982-19ccbf80-3fa3-11eb-8a70-34e7b194cc94.gif)

<br/>
<br/>

## Architecture and models
Models include: <br/>
* The User model
* College model
* Listing model
* Listing Pictures model



Relations: <br/>
* College has many Listings
* Listing belong to a College
* Listing has many Listing Pictures
* Listing has many Users
* User belongs to a Listing


## Technologies
* Built on ruby '2.6.1'
* rails (~> 6.0.3, >= 6.0.3.4)
* uses a postgres database
* Authentication done with 'bcrypt' ruby gem
* react-bootstrap for styling

## Setup
$ bundle install (to download gems) <br/>
$ rails db:create <br/>
$ rails db:migrate <br/>
$ rails db:seed <br/>
$ rails s (to start server) <br/>
$ npm start

