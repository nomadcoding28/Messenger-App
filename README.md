Messenger App
A real-time messaging app built with Flutter and Firebase that allows users to securely register, log in, and chat in private or group chats.

Features
User Authentication: Secure user registration and login using Firebase Authentication.
Real-Time Messaging: Send and receive messages instantly using Firebase Firestore.
Group Chats: Create and join group chats.
Persistent Login: Users remain logged in across sessions.
User Interface: Responsive and modern UI with a streamlined user experience.
Loading Overlays: Visual feedback for network interactions using custom loading indicators.
Screens
Welcome Screen: Entry point with navigation to Login or Registration.
Login Screen: Allows existing users to sign in.
Registration Screen: New users can sign up with an email and password.
Chat Screen: Shows chat messages in real-time and allows users to send messages.
Setup & Installation
Clone the Repository

bash
Copy code
git clone https://github.com/your-username/messenger-app.git
cd messenger-app
Firebase Setup

Go to the Firebase Console, create a new project, and add Android/iOS configurations.
Download the google-services.json file for Android and place it in the android/app directory.
Configure Firebase for the web if targeting web platforms.
Environment Setup

Install Flutter if not already installed.
Run flutter pub get to install dependencies.
Run the App

For Android/iOS:
bash
Copy code
flutter run
For Web:
bash
Copy code
flutter run -d chrome
Dependencies
Firebase Core: Firebase core functionalities.
Firebase Auth: User authentication management.
Firebase Firestore: Cloud Firestore for real-time database.
Loader Overlay: Customizable loading indicators.
Flutter SpinKit: Animated loading spinners for visual feedback.
Project Structure
css
Copy code
lib/
├── components/
│   ├── rounded_button.dart
├── constants.dart
├── screens/
│   ├── welcome_screen.dart
│   ├── login_screen.dart
│   ├── registration_screen.dart
│   ├── chat_screen.dart
└── main.dart
Future Enhancements
Message Reactions: Allow users to react to messages.
Profile Management: Add user profiles with customization.
Media Sharing: Enable image and video sharing in chats.
Push Notifications: Notify users of new messages outside the app.
Contributions
Contributions, issues, and feature requests are welcome! Feel free to check the issues page.

License
This project is licensed under the MIT License.


