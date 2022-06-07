# Create a main sample user
 User.create!(name: "Moses Maurice",
               email: "mosesm@gmail.com",
               password: "password",
               password_confirmation: "password")



# Generate a bunch of other users
99.times do |n|
    name = Faker::Name.name
    email = "mosesm-#{n+1}@gmail.com"
    password = "password"
    User.create!(name: name,
                 email: email, 
                password: password,
                password_confirmation: password )
end


