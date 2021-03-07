# Daincrementer

A *Dart* package to automatically increments the version code of your pubspec.

## Installation

Add the following dependency to your `pubspec.yaml`:

```yaml
dev_dependencies:
  daincrementer: ^1.2.0
```

#### Run the updater

```bash
flutter pub pub run daincrementer:daincrementer.dart PUBSPEC_FILE_PATH
```

For example:

```bash
flutter pub pub run daincrementer:daincrementer.dart ./pubspec.yaml
```