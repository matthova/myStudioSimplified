#My Studio Simplified
A studio management system built on Rails
##Object Models
Company
- name:string
- year_est:integer
- has_many :studios
Studio
- name:string
- description:string
- year_est:integer
- owner: id
- has_many :employees
- has_many :spaces
Space
- name:string
- size:integer
- description:string
- gear_list:string
-