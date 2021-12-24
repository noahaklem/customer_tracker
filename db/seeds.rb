30.times do 
  name = Faker::Name.unique.name
  Customer.create({
    name: name
  })
end

spongebob = User.find_or_create_by(username: "Spongebob")

customer = Customer.all.first
customer.comments.create(content: "heck yeah!", user: spongebob)
customer.comments.create(content: "heres one for you!", user: spongebob)