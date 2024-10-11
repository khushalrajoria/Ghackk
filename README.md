# Ghackk Flutter App

![Webtoon Explorer](https://img.shields.io/badge/Flutter-v3.10-blue.svg) 
![Provider](https://img.shields.io/badge/State%20Management-Provider-green.svg) 
![License](https://img.shields.io/badge/License-MIT-yellow.svg)

> **Explore your favorite Webtoons, view details, rate, and save your favorites! Built using Flutter and Provider for state management.**

## 📱 Overview

The **Webtoon Explorer App** is designed to help users browse and explore popular webtoons. Users can:
- View a list of trending webtoons.
- Check detailed descriptions, characters, and ratings.
- Add or remove webtoons from their favorites list.
- The app uses the `Provider` package for state management, ensuring a smooth and reactive user experience.

---

### 🔥 Features
- **Responsive UI**: Seamless experience across different device sizes.
- **Favorites**: Mark and store your favorite webtoons.
- **Character Display**: Beautifully styled character profiles with large images and descriptions.
- **Skeleton Loaders**: Smooth loading experience with skeleton animations.
- **Rating System**: Rate your favorite webtoons with a custom-built rating widget.
- **Efficient State Management**: Powered by `Provider` for clear separation of UI and business logic.

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (version 3.0+)
- Dart SDK
- A code editor like VSCode or Android Studio

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/khushalrajoria/Ghackk.git
    ```

2. Navigate to the project directory:

    ```bash
    cd webtoon-explorer
    ```

3. Install dependencies:

    ```bash
    flutter pub get
    ```

4. Run the app:

    ```bash
    flutter run
    ```

---

## 🛠️ Project Structure

```
lib/
│
├── provider/
│   ├── webtoon_model.dart          # Model for Webtoons
│   ├── webtoon_provider.dart       # Business logic & State Management
│
├── screens/
│   ├── home_screen.dart            # Home screen to display webtoons
│   ├── detail_screen.dart          # Webtoon details and character profiles
│   ├── fav_screen.dart             # Favorites screen
│
├── widgets/
│   ├── rating_widget.dart          # Custom Rating Widget
│   ├── character_display.dart      # Character profile widget
│
└── main.dart                       # Main entry point of the app
```

---

## 🧩 Dependencies

- **Flutter SDK**: [Get Flutter](https://flutter.dev)
- **Provider**: State management package
- **HTTP**: For fetching webtoon data from APIs
- **CachedNetworkImage**: Efficient image loading and caching

---

## 💡 Features Implemented

- [x] Display a list of webtoons with thumbnails.
- [x] Favorites feature using local state management.
- [x] Detailed character profiles with larger images and descriptions.
- [x] Custom Rating Widget.
- [x] Skeleton loaders for smooth user experience.

---

## 📸 Screenshots

### Home Screen
![Home Screen](https://github.com/khushalrajoria/Ghackk/blob/main/screenshots/WhatsApp%20Image%202024-10-11%20at%2010.23.36%20PM.jpeg)  

### Detail Screen
![Detail Screen](https://github.com/khushalrajoria/Ghackk/blob/main/screenshots/WhatsApp%20Image%202024-10-11%20at%2010.23.35%20PM%20(1).jpeg)  

### More Detial Screen
![Favorites Screen](https://github.com/khushalrajoria/Ghackk/blob/main/screenshots/WhatsApp%20Image%202024-10-11%20at%2010.23.35%20PM%20(2).jpeg)  

### Favorite Screen
![Rating Widget](https://github.com/khushalrajoria/Ghackk/blob/main/screenshots/WhatsApp%20Image%202024-10-11%20at%2010.23.35%20PM.jpeg)  

## 🌟 Future Enhancements

- Add **search functionality** for webtoons.
- Implement **pagination** for large lists.
- Add **dark mode** support.
- Use a **local database** (e.g., SQLite) for storing favorites offline.

---

## 🛡️ License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 👨‍💻 Author

- **Khushal Rajoria** - [GitHub](https://github.com/khushalrajoria) | [LinkedIn](https://www.linkedin.com/in/khushal-rajoria-cse/)

---
