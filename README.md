📡 REST API Fetch – Flutter App with GetX & MVVM Architecture
🚀 Overview
This Flutter application showcases how to fetch data from a REST API and present it in a clean, modern UI using GetX and MVVM architecture. It is designed with modular code structure, light/dark theme support, and responsive design principles. The app pulls post data from https://jsonplaceholder.typicode.com/posts and displays it in a stylish list.

✨ Features
🔗 REST API Integration
Fetches data from https://jsonplaceholder.typicode.com/posts

Displays the first 10 posts only

Parses JSON response into strongly typed models

⚙️ MVVM Architecture
Model: Represents the structure of a post

View: Handles the UI with modern Material Design

ViewModel: Manages the business logic and state

Service: Handles API communication

🌐 State Management with GetX
Simple, scalable and reactive state updates using .obs

Clean separation between logic and UI

🎨 Dark & Light Theme Support
Automatically adapts to system theme

Uses centralized color definitions (AppColors)

Theming applied consistently across all widgets

🧱 Modular Folder Structure
css
Copy
Edit
lib/
├── main.dart
├── core/         → Theme, colors
├── model/        → Data models (Post)
├── view/         → UI screens
├── view_model/   → GetX controllers
└── services/     → API service logic
📱 Modern UI/UX
Clean, minimalistic design

Card-style post items with bold titles and readable body text

Loading indicators for better UX during data fetching

🛠️ Technologies Used
Flutter

GetX

MVVM Design Pattern

HTTP Package#   P C C - R e s t - A P I  
 