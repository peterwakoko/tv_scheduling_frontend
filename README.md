
# Television Scheduling System

Introduction
The primary goal of this system is to allow REGISTERED users (Staff) to login and schedule daily TV program at a time that is convenient for them. 
The system should allow an administrator to CREATE, DELETE,  and UPDATE the details of Users (Staff).
The administrator may also VIEW user activity logs.
The system should allow all users and admins to view all programms that have been scheduled.


## Pages
#### Login

  There is to be a login for users and Admin, where on login, the user(staff)/Admin will be redirected to the home page, 
  The admin and users have different home pages.
  
#### Home Page

1. User<br>
The homepage has a table with the schedules(In a time table form) with relevant links to other pages.
There are links that will lead to the different  rellevant pages

2. Admin<br>
The admin homepage will have a list of all users, having details that include their last login, email, and name. 
The page will also have a section for 
The page will have an action buttons to a allow editing and modification of user details.
There is a hidden section that will hold the user password for the specific user and can be unhidden with a button click.
Admin can also add programs, and schedule time periods with a start and end time
There are links that will lead to the different  rellevant pages

#### Add user page(by Admin)
In this page, the admin can add users to the system

#### Add programmes page
This page will allow addition of programms that the system will have

#### Edit time period page
This page gives the time periods that are present

#### Scheduling Page
Has a dropdown menu selection that gets information from the database regarding the Program, and time period
 
Note: A user cannot assign a program time that has already been assigned by another user.
