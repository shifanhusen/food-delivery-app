# Food Delivery App

A modern food delivery application built with Flutter and Firebase, featuring a beautiful UI with support for both light and dark themes.

![Food Delivery App](https://img.shields.io/badge/Flutter-App-blue)
![Firebase](https://img.shields.io/badge/Backend-Firebase-orange)
![License](https://img.shields.io/badge/License-MIT-green)

## Features

- 🌓 Beautiful dark and light theme modes with seamless switching
- 🔒 User authentication with email and password
- 🍔 Browse food items from various restaurants
- 🔍 Search and filter restaurants and food items
- 🛒 Cart functionality for order management
- 💳 Multiple payment method options
- 🚚 Real-time order tracking
- 👤 User profile management
- 📱 Responsive UI design for all screen sizes

## Screenshots

[Screenshots will be added here]

## Technology Stack

- **Frontend**: Flutter
- **State Management**: Provider
- **Backend**: Firebase
- **Authentication**: Firebase Auth
- **Database**: Cloud Firestore
- **Storage**: Firebase Storage
- **Theme Management**: Custom Theme Provider with SharedPreferences

## Project Structure
lib/ ├── components/ # Reusable UI components ├── models/ # Data models ├── pages/ # App screens ├── services/ # Firebase and API services ├── themes/ # Theme configurations └── main.dart # App entry point

## Installation

1. Clone this repository: git clone https://github.com/shifanhusen/food-delivery-app.git

2. Navigate to the project folder: cd food-delivery-app

3. Install dependencies: flutter pub get

4. Set up Firebase:
   - Create a Firebase project
   - Configure Firebase for Android/iOS
   - Add configuration files (google-services.json/GoogleService-Info.plist)

5. Run the app: flutter run
   
## Configuration

To connect the app to your Firebase project:

1. Update the Firebase configuration in `lib/firebase_options.dart`
2. Ensure the Android application ID (`com.innovitech.food_delivery`) matches your Firebase project

## Contributing

Contributions are welcome! Feel free to submit issues or pull requests.

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Commit your changes: `git commit -m 'Add some feature'`
4. Push to the branch: `git push origin feature-name`
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgements

- Flutter team for the amazing framework
- Firebase for backend services
- All open-source packages used in this project
