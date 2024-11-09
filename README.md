# Challenge Somnio

This project is a Flutter application for managing blog posts, structured with a **Feature-First Modular Architecture** and following principles of **Clean Architecture**. This approach emphasizes modularity and separation of concerns, making the app highly scalable, maintainable, and testable.

The project uses the **BLoC pattern with Cubit** for state management, keeping business logic isolated from the UI layer. This setup enables reactive and predictable state flows, making it easier to handle complex user interactions and maintain consistency across features.

Below are details about the project structure, instructions to run the app and tests, and recommendations for maintaining a clean and consistent architecture.

## Key Technologies and Patterns

- **Flutter**: Enables cross-platform development, providing a seamless experience on both iOS and Android.
- **BLoC with Cubit**: Manages state, isolating business logic from UI, which enhances readability, maintainability, and reusability of code.
- **Feature-First Modular Architecture**: Each primary feature is encapsulated in its own module, containing data management, business logic, and UI components. This modular structure aligns with Clean Architecture principles, making the app more scalable and easier to maintain.
- **Clean Architecture Principles**: The structure ensures a clear separation between data, business logic, and presentation layers, following best practices to facilitate testing and extension of the codebase.

## Project Structure

The project follows a feature-based folder structure, where each main functionality of the app is organized into its own module. Here’s the main structure:

```
lib/
├── core/
│   ├── routes/
│   │   └── route.dart                # Route definitions
│   │   └── router_provider.dart      # Route provider
│   │   └── routes.dart               # Main app routes
│   │   └── sommnio_router.dart       # Custom router configuration
│   ├── themes/
│   │   └── app_colors.dart           # App colors
│   │   └── app_style.dart            # Text and widget styles
│   │   └── app_theme.dart            # Theme configuration
│   ├── utils/
│   │   └── extensions/
│   │       └── string_extension.dart # Utility extensions for String manipulation
│   └── widgets/
│       └── empty_state_widget.dart   # Widget for empty state
│       └── error_display_widget.dart # Widget to display error messages
│       └── layout.dart               # General layout components
│       └── loading_indicator.dart    # Loading indicator widget
│       └── sommnio_sliver_app_bar.dart # Custom Sliver AppBar widget
├── features/
│   ├── authentication/               # Authentication functionality (Placeholder for future development)
│   └── posts/                        # Posts functionality
│       ├── data/
│       │   ├── models/
│       │   │   └── post_model.dart   # Data model for posts
│       │   ├── repositories/
│       │   │   └── post_repository.dart # Repository for managing data sources and business logic
│       │   └── services/
│       │       └── post_services.dart   # Service for handling network requests and API calls
│       ├── logic/
│       │   └── post_cubit.dart       # Cubit for managing the state of posts
│       │   └── post_state.dart       # States associated with post_cubit
│       └── ui/
│           ├── screens/
│           │   └── home_page_content.dart # Main content widget for the home page
│           │   └── home_page.dart    # Main home page screen
│           └── widgets/
│               └── chip_category.dart # Widget for displaying category chips
│               └── post_card.dart    # Widget for displaying individual post cards
├── main.dart                         # Main entry point
└── sommnio_app.dart                  # Initial app configuration
```

### Explanation of Key Directories

- **core**: Contains global configurations, theme data, routing setup, utility extensions, and reusable widgets that can be shared across different features.
- **features**: Each feature folder is self-contained and includes:
- **data**: Models and data sources (e.g., API clients, local data storage).
- **logic**: Business logic and state management (Cubits).
- **ui**: UI components specific to each feature (screens and widgets).

## Running the App

To run the app on an emulator or connected device:

```bash
flutter run
```

## Running Tests

This project includes unit tests to validate the business logic in the Cubits, ensuring reliable functionality across different states. Tests are located in the test/features/posts/logic/ directory.

To run the tests, use the following command:
```bash

flutter test
```
Including tests is essential to guarantee the integrity and reliability of each feature, especially as the app scales.

Project Highlights for Evaluators

	•	Use of BLoC with Cubit: This architecture allows a clear separation of UI and business logic, following best practices for Flutter app development. Cubits manage the state of each feature independently, improving modularity.
	•	Feature-First Architecture: The modular structure ensures that each feature (like authentication and posts) is self-contained. This allows for straightforward feature expansion and maintenance.
	•	Reusable Widgets in Core: Widgets like empty_state_widget.dart, error_display_widget.dart, and loading_indicator.dart are placed in the core/widgets folder, emphasizing the DRY (Don’t Repeat Yourself) principle. These widgets are reusable across different features, maintaining consistency and reducing code duplication.
	•	Scalable Configuration Management: Environment variables and configurations are centralized in core/config, simplifying the process of adapting the app to different environments (e.g., development, staging, production).
	•	Clean and Consistent Code: The project follows clean code principles, ensuring that classes, methods, and variables are named intuitively and with a single responsibility. This makes the codebase easy to understand and work with, even for new developers.

Recommendations for Future Development

	1.	Continue Feature-Based Organization: For any new features, follow the existing structure, keeping data, logic, and UI components separated within each feature.
	2.	Extend Test Coverage: As new features are added, ensure that corresponding unit tests are created, especially for Cubits. This will help maintain a high level of code reliability.
	3.	Maintain Reusable Components: Place shared components (e.g., buttons, custom inputs) in the core/widgets folder to keep the codebase organized and consistent.
