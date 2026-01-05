user = User.create!(
  email: "demo@example.com",
  password: "password"
)

user.ideas.create!(
  title: "Language learning app",
  description: "An app that teaches slang",
  rating: 4
)
