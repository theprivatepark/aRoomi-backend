require 'faker'

College.destroy_all

(200).times do 
    College.create(name: Faker::Educator.university)
end

