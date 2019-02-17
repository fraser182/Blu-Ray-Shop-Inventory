# Solo Project: Blu-Ray Store

A Blu-Ray Store For An Owner, written in Ruby, with basic CRUD functionality, based around a stock list.

## Brief
The owner of a Blu-Ray Store wants an app to track their shop's inventory. This is not an app which the customer will see, it is an admin/management app for the shop workers.

## Table of contents
* [MVP](#mvp)
* [Extensions](#extensions)
* [Screenshots](#screenshots)
* [Technologies](#technologies)
* [Setup](#setup)
* [Run](#run)
* [What I Have Learned](#what-i-have-learned)
* [Status](#status)
* [Parting Words](#parting-words)

## MVP
* Create blu-rays including a name, description, stock, quantity, buying cost and selling price
* Create a suppliers list linked to the blu-rays, including name and other appropriate details
* Show an inventory page listing blu-rays
* Include CRUD functionality
* Show an inventory page, listing all the details for all the blu-rays in stock in a single view
* Show a visual highlight  of `low stock` and `out of stock`

## Extensions
* Added an `In Stock` and `All Stock` filter buttons
* Added the markup (profit) on each Blu-ray
* Added pre-population of Suppler and Blu-Ray edit function

## Screenshots

<img src="./planning/img/main.png" height="24">

## Technologies
* Language - Ruby
* Styling - HTML and CSS
* Database - PSQL
*

## Setup
```
$ createdb buymdb
$ psql -d buymdb -f db/buymdb.sql (in master file)
$ ruby db/seeds.rb
$ ruby app.rb

```
## Run
[Local Host :4567](http://localhost:4567/)


## What I Have Learned
From this CodeClan Solo Project
* Awesome feature 1
* Awesome feature 2
* Awesome feature 3


## Status
Project is: _in progress_

To-do list:
* Add a search facility
* Add a sort by genre facility (back end complete for this)

## Parting Words
I am open to improvements, so please let me know what you think [mailto](mailto: fraser182@icloud.com) - feel free to contact me!