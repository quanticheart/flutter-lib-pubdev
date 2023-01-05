<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).


TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
-->

# Create Pub Dev Lib

A new Flutter project.

## Getting Started

### Type Of Packages
- Dart packages

Packages that are written in Dart. They might contain Flutter specific functionality and depend on the Flutter Framework.

- Plugin packages

Packages that contain an API written in Dart code combined with one or more platform-specific implementations. Plugin packages can be written for Android (using Kotlin or Java), iOS (using Swift or Objective-C), web (using Dart), macOS (using Dart).

### Create project

create a flutter project using your IDE or use the command below in the terminal:

```
flutter create --template=package my_lib_name
```

when creating a project with the ***package template***, the flutter project will come with files ready to be edited for publishing a library.

### Files

- pubspec.yaml

it will contain all the structure of a common pubspec, but it will have some keys that you can edit, to describe your lib and leave the contact data

```
name: qh_lib_test
version: 1.0.0
description: A Flutter package for both android and iOS which provides extensions and widgets
authors:  [John Alves <dev.quanticheart@gmail.com>]
homepage: https://github.com/quanticheart/flutter-lib-pubdev
```
- README.md

Add the description of your package, how to use it, screenshots or animated gif, an example in the file

A self-explanatory example is already added to the template package

- CHANGELOG.md

A (mostly) empty markdown file for tracking version changes to the package.

- LICENSE file

Add the LICENSE in the repository. You can add the license by following these [steps on github](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository).


- folder test/

The unit tests for the package.