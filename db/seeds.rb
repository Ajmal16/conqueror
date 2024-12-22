# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
Project.destroy_all

user_1 = User.create(
  first_name: "John",
  last_name: "Doe",
  email: "john.doe@example.com",
  password: "password123",
  role: "admin",
  created_at: Time.now
)

  user_2 = User.create(
    first_name: "Jane",
    last_name: "Smith",
    email: "jane.smith@example.com",
    password: "securepassword",
    role: "user",
    created_at: Time.now
  )

  user_3 = User.create(
    first_name: "Alice",
    last_name: "Johnson",
    email: "alice.johnson@example.com",
    password: "alicepass123",
    role: "editor",
    created_at: Time.now
  )

  user_4 = User.create(
    first_name: "Bob",
    last_name: "Brown",
    email: "bob.brown@example.com",
    password: "bobbypass456",
    role: "user",
    created_at: Time.now
  )

  user_5 = User.create(
    first_name: "Charlie",
    last_name: "Williams",
    email: "charlie.williams@example.com",
    password: "charlie789",
    role: "moderator",
    created_at: Time.now
  )

  user_6 = User.create(
    first_name: "Emma",
    last_name: "Davis",
    email: "emma.davis@example.com",
    password: "emmapass456",
    role: "user",
    created_at: Time.now
  )

  user_7 = User.create(
    first_name: "Liam",
    last_name: "Wilson",
    email: "liam.wilson@example.com",
    password: "liamsecure789",
    role: "admin",
    created_at: Time.now
  )

  user_8 = User.create(
    first_name: "Sophia",
    last_name: "Moore",
    email: "sophia.moore@example.com",
    password: "sophiapass123",
    role: "user",
    created_at: Time.now
  )

  user_9 = User.create(
    first_name: "James",
    last_name: "Taylor",
    email: "james.taylor@example.com",
    password: "jamestay789",
    role: "editor",
    created_at: Time.now
  )
  
  user_10 = User.create(
    first_name: "Mia",
    last_name: "Anderson",
    email: "mia.anderson@example.com",
    password: "miapass123",
    role: "user",
    created_at: Time.now
  )

puts "10 users with unique IDs created successfully!"

project_1 = Project.create(
  name: "Website Redesign",
  description: "Redesign and update the company website to improve user experience and brand image.",
  status: "In Progress",
  start_date: Date.parse("2023-12-01"),
  end_date: Date.parse("2024-02-28"),
  created_by_id: 1
)

project_2 = Project.create(
  name: "Mobile App Development",
  description: "Develop a mobile app to provide our services to customers on the go.",
  status: "Planning",
  start_date: nil,
  end_date: nil,
  created_by_id: 2
)

project_3 = Project.create(
  name: "Marketing Campaign Launch",
  description: "Launch a marketing campaign to increase brand awareness and generate leads.",
  status: "Completed",
  start_date: Date.parse("2023-10-15"),
  end_date: Date.parse("2023-11-30"),
  created_by_id: 8
)

project_4 = Project.create(
  name: "Product Launch",
  description: "Launch a new product to market, including development, marketing, and sales activities.",
  status: "On Hold",
  start_date: Date.parse("2023-09-01"),
  end_date: nil,
  created_by_id: 7
)

project_5 = Project.create(
  name: "Internal Process Improvement",
  description: "Identify and implement improvements to internal processes to increase efficiency and productivity.",
  status: "In Progress",
  start_date: Date.parse("2023-11-01"),
  end_date: Date.parse("2024-01-31"),
  created_by_id: 6
)

project_6 = Project.create(
  name: "Customer Support Portal Development",
  description: "Develop a self-service customer support portal to reduce support tickets and improve customer satisfaction.",
  status: "Backlog",
  start_date: nil,
  end_date: nil,
  created_by_id: 5
)

project_7 = Project.create(
  name: "Team Building Event",
  description: "Organize a team building event to improve team morale and collaboration.",
  status: "Completed",
  start_date: Date.parse("2023-11-17"),
  end_date: Date.parse("2023-11-17"),
  created_by_id: 2
)

project_8 = Project.create(
  name: "Content Marketing Strategy",
  description: "Develop and implement a content marketing strategy to attract and engage potential customers.",
  status: "In Review",
  start_date: Date.parse("2023-12-15"),
  end_date: nil,
  created_by_id: 4
)

project_9 = Project.create(
  name: "Data Security Audit",
  description: "Conduct a data security audit to identify and address any vulnerabilities.",
  status: "Not Started",
  start_date: nil,
  end_date: nil,
  created_by_id: 5
)

project_10 = Project.create(
  name: "Social Media Management",
  description: "Develop and implement a social media management strategy to increase brand awareness and engagement.",
  status: "Ongoing",
  start_date: Date.parse("2023-01-01"),
  end_date: nil,
  created_by_id: 4
)

puts "Projects are generated"
