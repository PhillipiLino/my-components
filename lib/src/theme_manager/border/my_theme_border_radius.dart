class MyThemeBorderRadius {
  final double sharp;
  final double xsmall;
  final double small;
  final double regular;
  final double circle;

  static const String _sharp = 'sharp';
  static const String _xsmall = 'xsmall';
  static const String _small = 'small';
  static const String _regular = 'regular';
  static const String _circle = 'circle';

  MyThemeBorderRadius({
    required this.sharp,
    required this.xsmall,
    required this.small,
    required this.regular,
    required this.circle,
  });

  MyThemeBorderRadius.fromJSON(Map<String, dynamic> json)
      : sharp = json[_sharp].toDouble(),
        xsmall = json[_xsmall].toDouble(),
        small = json[_small].toDouble(),
        regular = json[_regular].toDouble(),
        circle = json[_circle].toDouble();

  toJSON() => {
        _sharp: sharp,
        _xsmall: xsmall,
        _small: small,
        _regular: regular,
        _circle: circle,
      };
}
