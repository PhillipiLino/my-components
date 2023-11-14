<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

MyComponents é uma biblioteca de estudo de criação de um design systems tokenizado usando como referência o design systems [Yoga do Gympass](https://gympass.github.io/yoga/)

# MyComponents

## Getting started

Para utilizar os componentes, use o comando abaixo antes do método `run` da sua aplicação: 
```dart
ThemeManager.shared.initializeTheme();
```

Exemplo:

```dart
void main() {
  ThemeManager.shared.initializeTheme();
  runApp(const MyApp());
}
```
