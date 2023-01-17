Set up the Back End
You’ll get good at setting up apps quickly in the coming lessons by using more or less this same series of steps (though we’ll help you less and less each time):

1. Build a new rails app (called “re-former”).
2. Create a new Github repo and connect the remote to your local git repo. Check in and commit the initial stuff.
3. Modify your README file to say something you’ll remember later, like “This is part of the Forms Project in The Odin Project’s Ruby on Rails Curriculum. 4. Find it at http://www.theodinproject.com”
5. Create and migrate a User model with :username, :email and :password.
6. Add validations for presence to each field in the model.
7. Create the :users resource in your routes file so requests actually have somewhere to go. Use the only: option to specify just the :new and :create    actions.
8. Build a new UsersController (either manually or via the $ rails generate controller Users generator).
9. Write empty methods for #new and #create in your UsersController.
10. Create your #new view in app/views/users/new.html.erb.
11. Fire up a rails server in another tab.
12. Make sure everything works by visiting http://localhost:3000/users/new in the browser.
