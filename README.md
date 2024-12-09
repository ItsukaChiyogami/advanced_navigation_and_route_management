# Advanced Navigation and State Management in Flutter

## Project Description
This repository demonstrates a Flutter application focusing on advanced navigation and global state management. The application uses a **global state management package** to handle data across multiple screens seamlessly while showcasing advanced routing and UI features.

---

## Features

### 1. Advanced Navigation
- **Named Routes**: Each screen uses named routes for structured navigation.
- **Dynamic Routes**: Users can generate a custom number of dynamic screens (up to 20) with unique content.
- **Error Handling**: Invalid routes are intercepted and redirected to a custom error page.

### 2. Global State Management
- Uses the **Provider** package to manage global state across screens.
- Example use case: Passing user input from one screen to another and updating the UI dynamically.

### 3. Bottom Navigation Bar
- A bottom navigation bar allows users to switch between three sections:
  - **Home**: A static starting page.
  - **Dynamic**: A page for generating dynamic routes.
  - **Settings**: A placeholder for future settings functionality.

### 4. User Feedback and Validation
- SnackBars notify users of errors, such as entering an invalid number for dynamic screens.
- Input is validated to ensure users can only generate up to 20 screens.

### 5. Documentation and Presentation
- Comprehensive in-line comments and a clear folder structure for easy understanding.
- This README includes a summary of the approach, challenges faced, and features implemented.

---

## Global State Management
### Why Use Provider?
The **Provider** package simplifies state management by allowing global data access without the need for manually passing data through widgets. This makes the app more maintainable and scalable.

### Example Use Case
- In this project, the state for the dynamic screen generator (e.g., the list of generated screens) is managed globally using **Provider**. 
- This approach allows other parts of the app to access and modify this state without direct dependencies.

---

## Challenges Faced

### 1. Managing Dynamic Routing
Creating and managing a dynamic number of routes based on user input required careful consideration of data flow and route validation.

### 2. Implementing State Management
Ensuring the app efficiently handles state changes (e.g., adding screens dynamically) while keeping the UI responsive and user-friendly.

### 3. Combining Navigation and State Management
Integrating **Provider** with Flutter’s navigation structure required planning to avoid rebuilding unnecessary parts of the widget tree.

---

## How to Run the Application
Follow these steps to run the Flutter application:

### 1. Install Flutter:
   Ensure you have Flutter installed. If you haven’t already done so, follow the [official Flutter installation guide](https://flutter.dev/docs/get-started/install) to set up Flutter on your machine.

### 2. Clone the Repository:
   Clone the repository to your local machine using Git:
   ```bash
   git clone https://github.com/yourusername/flutter-advanced-navigation.git
```

### 3. open vscode:
   open vscode and open the file that you clone

### 4. unduh depedency:
 type ``` flutter pub get ``` to download depedency

### 5. check device:
type ```flutter devices``` to check your devices flutter

### 6. run flutter:
   if all is done then type ``` flutter run ```
