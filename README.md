#My Studio Simplified
A studio management system built on Rails
##Object Models

Company
- name:string
- description:string
- year_est:integer
- has_many :studios
- has_many :users (company admins)

Studio
- name:string
- description:string
- year_est:integer
- has_many :spaces
- has_many :users (studio admins)
- belongs_to :company

Space
- name:string
- size:integer
- description:string
- has_many :users (space admins)
- has_and_belongs_to_many :events
- has_many :gears
- belongs_to :studio

Gear
- name:string
- description:string
- belongs_to :space
- belongs_to :user

Event
- name:string
- dateTime:string
- description:string
- has_many :users
- has_one :space
- belongs_to :project

User
- username:string
- fname:string
- lname:string
- email:string
- description:string
- company_admin:integer
- studio_admin:integer
- space_admin:integer
- has_and_belongs_to_many :events
- has_many :payments
- has_many :gears

Project
- name:string
- description:string
- cost:integer
- has_many :payments
- has_many :events

Payment
- amount:integer
- has_one :project
- has_one :user
