# 📱 Task Orbit - Flutter Frontend

## 🌟 Overview
Task Orbit's Flutter frontend is a cross-platform mobile application designed to provide a seamless, intuitive task management experience. Built with Flutter and Dart, the app offers a responsive and performant interface for users to manage their tasks efficiently.

## 🛠 Tech Stack
- **Language**: Dart
- **Framework**: Flutter 3.x
- **State Management**: Provider / Riverpod
- **HTTP Client**: Dio
- **Routing**: GoRouter
- **UI Components**: Material 3 Design

## ✨ Features
- 📋 Create, update, and delete tasks
- 🔄 Real-time synchronization with backend
- 🌐 Notion workspace integration
- 🌈 Responsive design for mobile and web
- 🔐 Secure authentication
- 🌙 Dark and light theme support

## 📦 Prerequisites
- Flutter SDK (3.10+)
- Dart SDK
- Android Studio or VS Code with Flutter extensions
- Xcode (for iOS development)

## 🚀 Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/Rohan0109/taskOrbit.git
cd task-orbit/frontend
```

### 2. Install Dependencies
```bash
flutter pub get
```

### 3. Environment Configuration
Create a `.env` file in the project root with the following:
```
API_BASE_URL=https://your-backend-url.com
NOTION_API_KEY=your_notion_api_key
```

### 4. Run the Application
```bash
# For development
flutter run

# For specific platform
flutter run -d chrome      # Web
flutter run -d ios         # iOS Simulator
flutter run -d android     # Android Device/Emulator
```

## 🧪 Testing
```bash
# Unit and widget tests
flutter test

# Integration tests
flutter test integration_test
```

## 🎨 Project Structure
```
lib/
├── core/
│   ├── constants/
│   ├── themes/
│   └── utils/
├── data/
│   ├── models/
│   ├── repositories/
│   └── services/
├── presentation/
│   ├── providers/
│   ├── screens/
│   └── widgets/
└── main.dart
```

## 🤝 Contributing
1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📱 Platform Support
- [x] Android
- [x] iOS
- [x] Web
- [ ] Windows (Planned)
- [ ] macOS (Planned)

## 🔒 Security
- Secure token-based authentication
- Encrypted local storage
- HTTPS communications

## 📊 Performance Metrics
- Lighthouse Score: 90+
- Minimal app size
- Fast load times

## 📜 License
MIT License - See [LICENSE.md](../LICENSE.md)

## 🛠 Troubleshooting
- Ensure Flutter and Dart SDKs are up to date
- Clean and rebuild the project: `flutter clean && flutter pub get`
- Check [Flutter documentation](https://flutter.dev/docs) for comprehensive guides

## 📞 Contact
- Project Maintainer: Rohan Murali
- [GitHub Issues](https://github.com/Rohan0109/taskOrbit/issues)
- [Project Discord](https://discord.gg/vWy7MmNh)

---
**Crafted with ❤️ by the Task Orbit Team**