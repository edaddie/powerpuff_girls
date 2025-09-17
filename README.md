# PowerPuff Girls Flutter Project

A Flutter application demonstrating object-oriented programming concepts through the PowerPuff Girls universe. This project features classes for the three PowerPuff Girls (Blossom, Bubbles, Buttercup) and their arch-nemesis Mojo Jojo, showcasing inheritance, encapsulation, and polymorphism.

## Description

This project models the PowerPuff Girls and Mojo Jojo as Dart classes. The base class `PowerPuffGirls` provides common attributes like flight power, attack power, and speed, with methods to boost these abilities. Each derived class adds unique skills and abilities:

- **Blossom**: Ice blast ability that stuns targets
- **Bubbles**: Laser vision that can destroy buildings
- **Buttercup**: Super sonic scream for distraction
- **Mojo Jojo**: Mad science with mutation ray gun

The application demonstrates these classes through a console-based interface, showing inheritance, method overriding, and unique character behaviors.

## Features

- Object-oriented design with inheritance
- Encapsulation with private fields and public getters
- Method overriding for custom info displays
- Validation in setters to prevent invalid values
- Demonstration of unique skills for each character

## Getting Started

### Prerequisites

- Flutter SDK installed (version 3.8.1 or higher)
- Dart SDK
- An IDE like VS Code or Android Studio

### Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd powerpuff_girls
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the application:
   ```bash
   flutter run
   ```

   Or run the console demo directly:
   ```bash
   dart run lib/main.dart
   ```

### Running Tests

To run the unit tests:
```bash
flutter test
```

### Building for Production

To build an APK for Android:
```bash
flutter build apk --release
```

To build for iOS:
```bash
flutter build ios --release
```

## Project Structure

```
lib/
├── main.dart              # Main entry point with demonstrations
├── powerPuff_girls.dart   # Base class for all characters
├── blossom.dart           # Blossom class with ice blast
├── bubbles.dart           # Bubbles class with laser vision
├── buttercup.dart         # Buttercup class with sonic scream
└── mojo_jojo.dart         # Mojo Jojo class with mad science
```

## Usage

The application runs a console demonstration showing:
- Initial character creation and stats
- Power boosting methods
- Unique skill usage
- Inheritance behavior

Each character inherits base abilities from `PowerPuffGirls` and adds their own specialized skills.

## Contributing

Feel free to contribute by adding more characters, abilities, or improving the OOP structure.

## Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Object-Oriented Programming in Dart](https://dart.dev/guides/language/language-tour#classes)
