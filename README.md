# Flutter Menu Template

This project is a Flutter template that includes various commonly used menu types in mobile applications. Each menu type is implemented with a clean UI and easy-to-understand code, making it a great starting point for Flutter developers.

## Features
- **AppBar Menu (Popup Menu Button):** A popup menu displayed in the app bar.
- **Drawer Menu (Side Navigation Menu):** A side drawer for easy navigation.
- **Bottom Navigation Bar:** A bottom navigation bar to switch between different pages.
- **Tab Bar Menu:** A tab-based navigation to display different content.
- **Floating Action Button Menu:** A floating button to trigger actions.
- **Other:** The Example of other widgets and how to handle the menu such as on pressed & show Alert Dialog etc. The application has already mockup data.

## Getting Started

### Prerequisites
- Ensure you have [Flutter](https://flutter.dev/docs/get-started/install) installed on your machine.
- You should also have a code editor like [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio).

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/panmegatech/flutter_menu_template.git
    ```
2. Navigate to the project directory:
    ```bash
    cd flutter-menu
    ```
3. Install dependencies:
    ```bash
    flutter pub get
    ```
4. Run the project:
    ```bash
    flutter run
    ```

### Project Structure

```bash
lib/
├── main.dart            # Entry point of the application
└── home_screen.dart     # Home Screen menu implementations
└── inbox_screen.dart    # Inbox Screen menu implementations
└── orders_screen.dart   # Orders Screen menu implementations
└── profile_screen.dart  # Profile Screen menu implementations
└── inbox/               # Contains helper function & class of Inbox Screen
└── orders/              # Contains helper function & class of Orders Screen
└── utils/               # Contains helper functions
└── widgets/             # Contains other widgets
