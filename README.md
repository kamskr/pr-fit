# Fitts - Workout tracking app
Fully working demo: https://fitts-eceb5.web.app/

## Design
https://ui8.net/vitaly-rubtsov/products/kenko-ui-kit
  
## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Testing with coverage

```
fvm flutter test --coverage
genhtml -o coverage coverage/lcov.info
open coverage/index.html
```

## Deploying app to the Web

```
fvm flutter build web
firebase deploy
```

## Build project

Project uses melos for running scripts across packages
To run build runner in all packages first make sure you have melos
installed and then run:

```
melos build:runner

```


## Firebase Emulators
When developing locally, you can use firebase emulators for development.
To start emulators:

First install dependencies for functions and build the code:

```
cd functions && npm install && npm run build && cd ..
```

Then you can start emulators with:

```
firebase emulators:start
```

## Update cloud functions

After changing, build cloud functions and restart emulators
```
cd functions && npm run build
```

To deploy do the server.

```
firebase deploy --only functions
```
