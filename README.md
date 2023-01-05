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

[Official Doc](https://dart.dev/tools/pub/publishing)

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

- [pubspec.yaml](pubspec.yaml)

it will contain all the structure of a common pubspec, but it will have some keys that you can edit, to describe your lib and leave the contact data

```
name: qh_lib_test
version: 1.0.0
description: A Flutter package for both android and iOS which provides extensions and widgets
authors:  [John Alves <dev.quanticheart@gmail.com>]
homepage: https://github.com/quanticheart/flutter-lib-pubdev
```
- [README.md](README.md)

Add the description of your package, how to use it, screenshots or animated gif, an example in the file

A self-explanatory example is already added to the template package

- [CHANGELOG.md](CHANGELOG.md)

A (mostly) empty markdown file for tracking version changes to the package.

- [LICENSE](LICENSE) file

Add the LICENSE in the repository. You can add the license by following these [steps on github](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository).

it is also possible to select a ready-made license in [choosealicense](https://choosealicense.com/)

- folder [test](test)

The unit tests for the package.

### lib/lib_name.dart

this file is the main one of the project, it is the gateway to the public files, whenever you want to expose a new file, you can use the code:

```
export 'extentions/msg_ext.dart';
```

look at the input file of this project, to get an idea => [qh_pubdev_test.dart](lib%2Fqh_pubdev_test.dart)

### [Example](example) Folder

this folder contains a README.md which can describe all the usage of your lib

it can also have a flutter project, but to use the lib, you must have a configuration in the example project's pubspec.yaml:
```
dependências: 
  flutter: 
    sdk:  flutter 
  your_lib_name: 
    path:  ../ 
  logger:  ^0.9.4
```
### Documenting

Pub.dev generates a documentation page for every published package. You can find a link to it on the right panel of the package’s pub.dev page:

Example:
![Captura de Tela 2023-01-05 às 13.16.20.png](images%2FCaptura%20de%20Tela%202023-01-05%20%C3%A0s%2013.16.20.png)

To enhance this document with your own words, you have to place special comments above your public classes, functions, properties and typedefs in your code. Why special? Because they use three slashes (///) instead of two.

Example:

```
// Inline comments

/*
Blocks of comments. It's not convention to use block comments in Dart.
*/

/// Documentation
///
/// This is what you should use to document your classes.
```

read more in [dart.dev](https://dart.dev/guides/language/effective-dart/documentation)

### Publish Your Package

First, sign in to [pub.dev](https://pub.dev/) with your Google Account and configure something if you need it, 
it is possible to link your web domain with your pub dev account in [create-publisher](https://pub.dev/create-publisher)


Next, run the publish command in dry-run mode to see if everything passes analysis:

```
flutter pub publish --dry-run
```

If there is any error solve it else we can publish it to pub.dev. But be sure that you are ready because publishing is forever. we can’t remove the package from there. So if you are ready, run following command

```
flutter pub publish
```

For authentication, a link will be provided, just open in browser and select your Google account.

You can look for your package on [pub.dev](https://pub.dev/) after some time. It will take a few minutes.