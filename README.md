# Create Pub Dev Lib

A new Flutter project.

## Getting Started

[Official Doc](https://dart.dev/tools/pub/publishing)

[kodeco](https://www.kodeco.com/19421827-creating-and-publishing-a-flutter-package)

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
![img1.png](images%2Fimg1.png)

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

### [.pubignore](.pubignore) file

read more in [what-files-are-published](https://dart.dev/tools/pub/publishing#what-files-are-published)

### Publishing pre releases

As described in semantic versioning, to make a prerelease of a version you append a suffix to the version. For example, 
to make a prerelease of version **2.0.0** you might use the version **2.0.0-dev.1**. Later, when you release version **2.0.0**, 
it will take precedence over all **2.0.0-XXX** pre releases.

Because pub prefers stable releases when available, users of a prerelease package might need to change their dependency 
constraints. For example, if a user wants to test pre releases of version **2.1**, then instead of **^2.0.0** or **^2.1.0** they might specify **^2.1.0-dev.1**.

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

### Revoke access to pub dev

- Add the new uploader with ``flutter pub uploader add new_email@email.com``
- Remove the previous uploader with ``flutter pub uploader remove previous_email@email.com``
- Remove saved credentials using ``flutter pub logout`` or ``rm ~/Library/Application Support/dart/pub-credentials.json.``
- Finally, type ``flutter pub publish`` and allow access from your navigator.

### GitHub Actions

[dart-and-flutter-package-publisher](https://github.com/marketplace/actions/dart-and-flutter-package-publisher)

[creating-a-complete-github-workflow-for-flutter](https://betterprogramming.pub/creating-a-complete-github-workflow-for-flutter-529f6bd7bb10)

[publishing-dart-packages-with-github-actions](https://medium.com/evenbit/publishing-dart-packages-with-github-actions-5240068a2f7d)