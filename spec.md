# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (State and Park, and Activity model feature one has_many relationship, User model features three.) 
- [x] Include at least one belongs_to relationship (Park model features two belongs_to relationships, and Review model has three.)
- [x] Include at least two has_many through relationships (Activity, Park, and State each have a has_many thourugh relationship.)
- [x] Include at least one many-to-many relationship (Activity and Park are joined through the Review model.)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (The Review model is the join and the user can submit a title, rating, review, and whether or not something is accessible.)
- [x] Include reasonable validations for simple model objects (All models feature validations)
- [x] Include a class level ActiveRecord scope method (I implemented a review scope method to find reviews where users listed an activity as accessible at a certain park, but I did it through a filter. The URl format is: parks/:id)
- [x] Include signup (Devise)
- [x] Include login (Devise)
- [x] Include logout (Devise)
- [x] Include third party signup/login (Devise/OmniAuth)
- [x] Include nested resource show or index (URL: /parks/:park_id/reviews/:id)
- [x] Include nested resource "new" form (URL: /parks/:park_id/reviews/new)
- [x] Include form display of validation errors (form URLs: parks/:id/reviews/new, parks/new)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate