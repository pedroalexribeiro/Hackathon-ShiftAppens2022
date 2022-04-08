# Shift Appens 2022

Initial config:

bin/rails g scaffold Donor name:string type:integer:index email:string:uniq:index password:digest bio:text
bin/rails g scaffold Organization name:string description:text
bin/rails g scaffold Event name:string description:text organization:references
bin/rails g scaffold Achievement name:string description:text
bin/rails g scaffold Activity name:string description:text source:references{polymorphic}

