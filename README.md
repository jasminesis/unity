# Unity

## Technologies used
- Ruby on Rails (Version 2.5.1)
- Postgres
- HTML
- CSS
- JavaScript - AJAX 

What is your application (elevator pitch, ideally in one sentence) 
Connecting children who want to play games together, allowing them to schedule 

What value does your application provide to your audience?
It will enable kids to maximize their game-play-time!

What steps have you taken to entice users? (user experience, a fancy frontend, trying out functionality before being forced to signup)
Our front end is very catchy, and the interface is simple to navigate. 

## Approach taken
Our project started with brainstorming how to solve a problem, which was that children want to play computer games with their friends but often find it hard to schedule time. The Unity platform allows users to log in, add friends, enter in free times and the common free times will pop up on screen to enable users to schedule gaming events together. Once our wireframes were done, we had an idea for how the platform would look, and could get started! 

Our project required three features - games, users and scheduling, which was just right for our team of three. We picked one feature each and once our basic functionality was done, we linked them together in the homepage.

## Installation instructions for any dependencies
```
bundle install
rails db:create
rails db:migrate
rails db:seed
```
### Database
- Merge conflicts can occur in your schema file when two branches modify schema. Run rails db:migrate to regenerate the schema file. 

## User stories – who are your users, what do they want, and why?
Kids aged 6-11. They have a few hours a week in which they can play video games, but have difficulty in scheduling with their friends. For example, they may have time at 9pm tonight to play PUBG, but are not sure if their friends are also free- this leads them to calling each of their friends to see if they are free. By having a central sheduling app, they can coordinate their game-play-time.

## Link to your wireframes – sketches of major views / interfaces for your application
![wireframe](https://github.com/jasminesis/unity/blob/master/docs/Wireframe1.png)
![wireframe](https://github.com/jasminesis/unity/blob/master/docs/Wireframe2.png)
![wireframe](https://github.com/jasminesis/unity/blob/master/docs/Wireframe3.png)

## Descriptions of any unsolved problems or major hurdles your team had to overcome
A lot of gems are outdated or not well maintained. 
DOM manipulation and AJAX were much more difficult to do in Rails.
We had some issues with conflicts in GIT, but were able to resolve them. We learned to seperate out feature workflow, and communicate better to avoid conflicts.

