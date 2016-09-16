# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
User.find_or_create_by(email: 'test@sonos.com') do |user|
  user.password = 'testing123'
  user.password_confirmation = user.password
end