class MyThemeBorderRadius {
  final double sharp;
  final double xsmall;
  final double small;
  final double regular;
  final double large;
  final double circle;

  static const String _sharp = 'sharp';
  static const String _xsmall = 'xsmall';
  static const String _small = 'small';
  static const String _regular = 'regular';
  static const String _large = 'large';
  static const String _circle = 'circle';

  MyThemeBorderRadius({
    required this.sharp,
    required this.xsmall,
    required this.small,
    required this.regular,
    required this.large,
    required this.circle,
  });

  MyThemeBorderRadius.fromJSON(Map<String, dynamic> json)
      : sharp = json[_sharp].toDouble(),
        xsmall = json[_xsmall].toDouble(),
        small = json[_small].toDouble(),
        regular = json[_regular].toDouble(),
        large = json[_large].toDouble(),
        circle = json[_circle].toDouble();

  toJSON() => {
        _sharp: sharp,
        _xsmall: xsmall,
        _small: small,
        _regular: regular,
        _large: large,
        _circle: circle,
      };
}
