# sign_in_flutter

A new Flutter project.

## Getting Started

`flutter create --androidx sign_in_flutter`
This project is a starting point for a Flutter application.

## Error

1. plugin not found, update settings.gradle
   `**Plugin project :firebase_auth_web not found. Please update settings.gradle.**`
2. solusi -> tambahkan code berikut pada file settings.gradle

```scala
def flutterProjectRoot = rootProject.projectDir.parentFile.toPath()

def plugins = new Properties()
def pluginsFile = new File(flutterProjectRoot.toFile(), '.flutter-plugins')
if (pluginsFile.exists()) {
    pluginsFile.withReader('UTF-8') { reader -> plugins.load(reader) }
}

plugins.each { name, path ->
    def pluginDirectory = flutterProjectRoot.resolve(path).resolve('android').toFile()
    include ":$name"
    project(":$name").projectDir = pluginDirectory
}
```

## Reference

A few resources to get you started if this is your first Flutter project:

- [medium reference](https://medium.com/flutter-community/flutter-implementing-google-sign-in-71888bca24ed)
- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)
- [plugin not found solution](https://github.com/FirebaseExtended/flutterfire/issues/2599)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
