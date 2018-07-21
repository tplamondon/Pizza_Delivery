This is the template for CMPT 470 projects, providing some basics for Vagrant and Virtualbox setups, with configuration by Chef.


We use devise for user accounts
TODO:
 * Possibly add more fields to users
 * adjust devise default views of log in, sign up
 * Restaurant pages (menu's) that are editable by restaurants
 * Order Forms
 * better home page using bootstrap
 * implement google maps api and user addresses




Readings
* Authentication with devise
- https://guides.railsgirls.com/devise
* Setting up multiple devise user stuff
- https://github.com/plataformatec/devise/wiki/How-to-Setup-Multiple-Devise-User-Models
* Adding sign up, sign in links
- https://github.com/plataformatec/devise/wiki/How-To:-Add-sign_in,-sign_out,-and-sign_up-links-to-your-layout-template
* Boostrap grid System
- https://getbootstrap.com/docs/4.0/layout/grid/
* Log in as this or that
- https://stackoverflow.com/questions/4612545/devise-login-with-user-or-admin-models-and-basecamp-style-subdomains
* Devise
- https://github.com/plataformatec/devise#strong-parameters
* Adding more fields to model
- https://stackoverflow.com/questions/14371633/adding-more-fields-to-an-existing-model
* Adding more fields to devise in sanatised parameters (really, just look what I did under controllers/restaurants/registrations_controller)
* more or less, uncomment out the 2 things near top of before_action and add fields into keys: array
- https://stackoverflow.com/questions/42052998/adding-more-fields-to-devises-new-registration-view-causing-activerecordstate
