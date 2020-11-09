require 'faker'

College.destroy_all
User.destroy_all

(200).times do 
    College.create(name: Faker::Educator.university)
end

anney = User.create(first_name: "anney", last_name:"park", username: "anneypark", password: "anneypark")


puts anney.save