# Expedier UI Task




## 📋 Prerequisites

- Flutter SDK 3.32.5 (managed via FVM)
- Dart SDK 3.7.2+
- Android Studio / VS Code
- Git

## 🛠️ Setup Instructions

### 1. Install FVM (Flutter Version Management)

```bash
# Install FVM globally
dart pub global activate fvm

# Install Flutter 3.32.5
fvm install 3.32.5

# Use Flutter 3.32.5 for this project
fvm use 3.32.5

# Verify Flutter version
fvm flutter --version
```

### 2. Clone and Setup Project

```bash
# Clone the repository
git clone <repository-url>
cd time_series

# Install dependencies
fvm flutter pub get

# Generate code (for freezed models)
fvm flutter packages pub run build_runner build

# Run the application
fvm flutter run
```