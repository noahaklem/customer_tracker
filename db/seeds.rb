30.times do 
  name = Faker::Name.unique.name
  Customer.create({
    name: name
  })
end

3.times do
  User.create(username: Faker::Name.unique.name, password: "test")
end

10.times do 
  Comment.create( content: Faker::ChuckNorris.fact, customer: Customer.all.sample, user: User.all.sample )
end
puts "seeds completed"