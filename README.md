Fixit is a mobile application developed using Flutter, designed to provide users with a seamless experience for various services. Below is a simple overview of the app's features and screens:

General Information :
  -  Platform: Flutter
  -  Language: Dart
  -  Concepts: Object-Oriented Programming (OOP)

Key Features : 
  * Splash Screen
    -> Displays the app icon when the app is launched.

  * Authentication
    -> Sign In Screen: Allows existing users to log in.
    -> Sign Up Screen: Lets new users create an account.

  * Main Screens
    -> Home Screen: Shows details about available services and providers.
    -> City Screen: Displays information relevant to the user's city.
    -> Order Screen: Manages user orders in three categories:
        -  Unpaid Orders
        -  Paid Orders
        -  Scheduled Orders
    -> Profile Screen: Contains user profile details and settings.

Navigation Flow : 

  Login Process: After logging in, users go through several steps:
  
    -  Phone Authentication: Verifies the user's phone number.
    -  Location: Allows the app to access the user's location.
    -  Payment Method: Sets up the user's payment preferences.
    -  Service Selection: Lets users choose the service they need.
    -  Pricing Review: Shows the pricing details (users can confirm or go back).
    
  After completing these steps, users are taken to the Home Screen.

Development Approach :
  -  The app uses Flutter for the front-end development.
  -  Dart is the programming language used.
  -  It follows OOP principles to ensure the code is organized and reusable.
  
Fixit is designed to offer an intuitive user experience with easy navigation and clear sections for managing different aspects of service requests and user information.
