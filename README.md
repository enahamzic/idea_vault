# 💡 Idea Vault

A beautiful and modern web application for capturing, organizing, and managing your brilliant ideas. Built with Ruby on Rails and styled with Tailwind CSS.

![Ruby on Rails](https://img.shields.io/badge/Ruby_on_Rails-8.1.1-red?logo=rubyonrails)
![Ruby](https://img.shields.io/badge/Ruby-3.2.9-red?logo=ruby)
![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-4.1.18-38B2AC?logo=tailwind-css)

## ✨ Features

- 🔐 **User Authentication** - Secure sign up and login with Devise
- 💡 **Idea Management** - Create, read, update, and delete your ideas
- ⭐ **Rating System** - Rate your ideas from 1 to 5 stars
- 🎨 **Modern UI** - Clean, responsive design with Tailwind CSS
- 📱 **Mobile Friendly** - Works seamlessly on desktop, tablet, and mobile
- ⚡ **Real-time Updates** - Smooth interactions with Turbo
- 🎯 **Auto-dismissing Notifications** - Flash messages that disappear after 3 seconds

## 🛠️ Tech Stack

- **Backend**: Ruby on Rails 8.1.1
- **Frontend**: Tailwind CSS 4.1.18, Stimulus.js
- **Database**: SQLite3
- **Authentication**: Devise
- **Assets**: Propshaft
- **JavaScript**: Import Maps

## 📋 Prerequisites

Before you begin, ensure you have the following installed:

- Ruby 3.2.9 or higher
- Rails 8.1.1 or higher
- SQLite3
- Node.js (for JavaScript dependencies)
- Git

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone <your-repository-url>
cd idea_vault
```

### 2. Install Dependencies

```bash
# Install Ruby gems
bundle install

# Install JavaScript dependencies (if using npm)
npm install
```

### 3. Database Setup

```bash
# Create the database
rails db:create

# Run migrations
rails db:migrate

# Seed the database with sample data (optional)
rails db:seed
```

### 4. Start the Application

```bash
# Start both the Rails server and Tailwind CSS watcher
bin/dev
```

The application will be available at `http://localhost:3000`

> **Note**: Use `bin/dev` instead of `rails s` to automatically watch and rebuild Tailwind CSS when you make changes.

## 👤 User Accounts

If you ran `db:seed`, you can use the following test account:
- Email: `demo@example.com`
- Password: `password`

Or create a new account by clicking "Sign up" on the homepage.

## 📁 Project Structure

```
idea_vault/
├── app/
│   ├── controllers/      # Application controllers
│   ├── models/           # Active Record models
│   ├── views/            # ERB templates
│   │   ├── ideas/        # Idea CRUD views
│   │   ├── devise/       # Authentication views
│   │   └── layouts/      # Application layout
│   ├── javascript/       # Stimulus controllers
│   └── assets/
│       ├── stylesheets/  # CSS files
│       └── tailwind/     # Tailwind source files
├── config/               # Configuration files
├── db/                   # Database files
│   ├── migrate/          # Database migrations
│   └── seeds.rb          # Seed data
└── test/                 # Test files
```

## 🎨 Key Features Explained

### Idea Management
- **Create**: Add new ideas with a title, description, and rating
- **View**: See all your ideas in a beautiful card grid layout
- **Edit**: Update your ideas anytime
- **Delete**: Remove ideas you no longer need
- **Rate**: Assign 1-5 star ratings to prioritize your ideas

### User Authentication
- Secure authentication powered by Devise
- User-specific ideas (each user only sees their own ideas)
- Remember me functionality
- Password reset support

### Modern UI/UX
- Responsive design that works on all devices
- Smooth animations and transitions
- Auto-dismissing flash notifications
- Visual star ratings
- Hover effects and loading states

## 🧪 Running Tests

```bash
# Run all tests
rails test

# Run specific test file
rails test test/models/idea_test.rb

# Run system tests
rails test:system
```

## 🔧 Development

### Tailwind CSS

Tailwind CSS is automatically compiled when you run `bin/dev`. If you need to manually rebuild:

```bash
rails tailwindcss:build
```

### Database Console

```bash
rails console
```

### Routes

View all available routes:

```bash
rails routes
```

## 📝 Environment Variables

This application uses SQLite3 by default and doesn't require additional environment variables for development.

## 🚢 Deployment

The app is ready for deployment to platforms like:
- Heroku
- Fly.io
- Railway
- Render

Make sure to:
1. Set up a production database (PostgreSQL recommended)
2. Configure environment variables
3. Run migrations: `rails db:migrate`
4. Precompile assets: `rails assets:precompile`

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request


## 🙏 Acknowledgments

- Built with [Ruby on Rails](https://rubyonrails.org/)
- Styled with [Tailwind CSS](https://tailwindcss.com/)
- Authentication by [Devise](https://github.com/heartcombo/devise)

## 📧 Contact

For questions or feedback, please open an issue on GitHub.

---

Made with ❤️ and ☕
