#My Studio Simplified
A studio management system built on Rails
##Object Models

User
- has_secure_password
- username:string
- email:string
- fname:string
- lname:string
- phone:string
- description:string
- studio_admin:boolean
- studio_owner:boolean
- hourly_rate:integer
- password_digest:string
- has_many :gears
- belongs_to_many :bands

Event
- name:string
- dateTime:string
- duration:integer
- description:string
- created_by:integer
- cost:integer
- has_many :bands
- has_many :users
- belongs_to :space
- belongs_to :project

Band
- name:string
- description:string
- has_many :users
- has_many :payments
- has_and_belongs_to_many :projects

Studio
- name:string
- description:string
- has_many :spaces
- has_many :users (studio admins)

Space
- name:string
- size:integer
- description:string
- hourly_rate:integer
- has_many :users (space admins)
- has_many :events
- has_many :gears
- belongs_to :studio

Gear
- name:string
- description:string
- belongs_to :space
- belongs_to :user

Project
- name:string
- description:string
- balance:integer
- has_many :payments
- has_many :events
- has_and_belongs_to_many :artists

Payment
- amount:integer
- description:string
- has_one :project
- has_one :user


redo space
add hourly rate to user