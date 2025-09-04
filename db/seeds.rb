# Clear old data
User.destroy_all
Category.destroy_all
Product.destroy_all

# Users
admin = User.create!(
  name: "Admin User",
  email: "admin@example.com",
  password: "password123",
  role: "admin"
)

customer = User.create!(
  name: "Priya Reddy",
  email: "priya@example.com",
  password: "gunapriya@123",
  role: "customer"
)

# Categories
electronics = Category.create!(name: "Electronics", description: "Mobile phones, laptops, and gadgets")
fashion = Category.create!(name: "Fashion", description: "Clothes, shoes, and accessories")

# Products
Product.create!([
  { name: "iPhone 15", description: "Latest Apple smartphone", price: 79999.99, stock: 10, category: electronics },
  { name: "MacBook Air", description: "Lightweight laptop", price: 124999.99, stock: 5, category: electronics },
  { name: "Running Shoes", description: "Comfortable sports shoes", price: 2999.99, stock: 25, category: fashion },
  { name: "Leather Jacket", description: "Stylish black jacket", price: 4999.99, stock: 8, category: fashion }
])
