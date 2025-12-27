# Flutter User App 👥

A modern Flutter application demonstrating **Clean Architecture** principles with **GetX** state management. The app fetches and displays user data from a public API with advanced features like search, pull-to-refresh, and dark mode.

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![GetX](https://img.shields.io/badge/GetX-8B5CF6?style=for-the-badge&logo=flutter&logoColor=white)

## 📱 Screenshots

<img width="610" height="980" alt="image" src="https://github.com/user-attachments/assets/83a3dba4-6435-403a-989f-86fd4c104512" />
<img width="610" height="980" alt="image" src="https://github.com/user-attachments/assets/fe7dfd63-6111-4735-a00a-4b339b35ff53" />
<img width="610" height="980" alt="image" src="https://github.com/user-attachments/assets/b2ae0401-3df2-4302-82b3-59380f63d3d9" />




## ✨ Features

### Core Features
- ✅ **User List Display** - View all users with name, email, and company
- ✅ **User Details** - Comprehensive user information on tap
- ✅ **API Integration** - Real-time data from JSONPlaceholder API
- ✅ **Loading States** - Smooth loading indicators
- ✅ **Error Handling** - User-friendly error messages with retry option
- ✅ **Clean Architecture** - Separation of concerns (Data, Domain, Presentation)

### Bonus Features
- 🔍 **Search Functionality** - Real-time search by name or email
- 🔄 **Pull to Refresh** - Swipe down to reload data
- 🌓 **Dark Mode** - Toggle between light and dark themes
- 🎨 **Material 3 Design** - Modern and beautiful UI
- ⚡ **GetX State Management** - Reactive and efficient state handling
- 🏗️ **Clean Code** - Well-organized folder structure

## 🏗️ Architecture

This project follows **Clean Architecture** principles:

### Architecture Layers

1. **Presentation Layer** - UI components and state management
2. **Domain Layer** - Business logic and entities (framework independent)
3. **Data Layer** - Data sources and repository implementations

## 📦 Packages Used

| Package | Version | Purpose |
|---------|---------|---------|
| [get](https://pub.dev/packages/get) | ^4.6.6 | State management, routing, and dependency injection |
| [http](https://pub.dev/packages/http) | ^1.1.0 | HTTP client for API calls |
| [dartz](https://pub.dev/packages/dartz) | ^0.10.1 | Functional programming (Either type for error handling) |

## 🚀 How to Run

### Prerequisites
- Flutter SDK (3.0.0 or higher)
- Dart SDK (3.0.0 or higher)
- Android Studio / VS Code
- Git

### Installation Steps

1. **Clone the repository**
```bash
git clone https://github.com/YOUR_USERNAME/flutter-user-app.git
cd flutter-user-app
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Run the app**
```bash
# For development
flutter run

# For release build
flutter run --release
```

### Building APK
```bash
# Build APK
flutter build apk --release

# Build App Bundle (for Play Store)
flutter build appbundle --release
```

The APK will be located at: `build/app/outputs/flutter-apk/app-release.apk`

### Building for Web
```bash
flutter build web --release
```

The web build will be in: `build/web/`

## 🔧 Configuration

### API Endpoint
The app uses JSONPlaceholder API: `https://jsonplaceholder.typicode.com/users`

To change the API endpoint, modify:
```dart
lib/core/constants/api_constants.dart
```

## 📱 Supported Platforms

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 🎯 Project Structure Highlights

### GetX Implementation
- **State Management**: Reactive programming with `.obs` and `Obx()`
- **Dependency Injection**: Lazy loading with `Get.lazyPut()`
- **Navigation**: Declarative routing with `Get.to()`
- **Theme Management**: Dynamic theme switching with `Get.changeThemeMode()`

### Error Handling
- Custom exceptions for different error types
- Either type from dartz for functional error handling
- User-friendly error messages with retry functionality

### Best Practices
- ✅ Separation of concerns
- ✅ Dependency inversion principle
- ✅ Single responsibility principle
- ✅ Reusable widgets
- ✅ Type-safe code
- ✅ Null safety

## 📝 API Response Structure
```json
{
  "id": 1,
  "name": "Leanne Graham",
  "username": "Bret",
  "email": "Sincere@april.biz",
  "address": {
    "street": "Kulas Light",
    "suite": "Apt. 556",
    "city": "Gwenborough",
    "zipcode": "92998-3874",
    "geo": {
      "lat": "-37.3159",
      "lng": "81.1496"
    }
  },
  "phone": "1-770-736-8031 x56442",
  "website": "hildegard.org",
  "company": {
    "name": "Romaguera-Crona",
    "catchPhrase": "Multi-layered client-server neural-net",
    "bs": "harness real-time e-markets"
  }
}
```

⭐ If you find this project useful, please consider giving it a star on GitHub!
