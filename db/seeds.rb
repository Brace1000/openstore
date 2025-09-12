user = User.find_or_initialize_by(email: "user@example.com")
user.assign_attributes(
  name: "Random User",
  password: "password",
  password_confirmation: "password"
)
user.save!

Product.create!([
  {
    title: "Watch",
    brand: "Fossil",
    model: "FH256",
    description: "Good watch for men!",
    condition: "Mint",
    finish: "Black",
    price: "100",
    image: Rails.root.join("app/assets/images/fossil.jpg").open,
    user_id: user.id
  },
  {
    title: "Car",
    brand: "Opel",
    model: "Corsa",
    description: "Cool red car",
    condition: "Excellent",
    finish: "Red",
    price: "15000",
    image: Rails.root.join("app/assets/images/opel.jpeg").open,
    user_id: user.id
  },
  {
    title: "Car",
    brand: "Ferrari",
    model: "F12",
    description: "Cool sports car",
    condition: "New",
    finish: "black",
    price: "160000",
    image: Rails.root.join("app/assets/images/ferrari.jpeg").open,
    user_id: user.id
  },
  {
    title: "Computer",
    brand: "Lenovo",
    model: "ThinkPad X1 Carbon Touch",
    description: "The Lenovo ThinkPad X1 Carbon Touch is an incredibly thin and light business ultrabook that features a premium design with a 14-inch touch.",
    condition: "Used",
    finish: "Black",
    price: "500",
    image: Rails.root.join("app/assets/images/computer.jpg").open,
    user_id: user.id
  }
])
