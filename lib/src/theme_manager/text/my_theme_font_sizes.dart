class MyThemeFontSizes {
  final double xxsmall;
  final double xsmall;
  final double small;
  final double medium;
  final double large;
  final double xlarge;
  final double xxlarge;
  final double xxxlarge;
  final double huge;

  static const String _xxsmall = 'xxsmall';
  static const String _xsmall = 'xsmall';
  static const String _small = 'small';
  static const String _medium = 'medium';
  static const String _large = 'large';
  static const String _xlarge = 'xlarge';
  static const String _xxlarge = 'xxlarge';
  static const String _xxxlarge = 'xxxlarge';
  static const String _huge = 'huge';

  MyThemeFontSizes({
    required this.xxsmall,
    required this.xsmall,
    required this.small,
    required this.medium,
    required this.large,
    required this.xlarge,
    required this.xxlarge,
    required this.xxxlarge,
    required this.huge,
  });

  MyThemeFontSizes.fromJSON(Map<String, dynamic> json)
      : xxsmall = json[_xxsmall].toDouble(),
        xsmall = json[_xsmall].toDouble(),
        small = json[_small].toDouble(),
        medium = json[_medium].toDouble(),
        large = json[_large].toDouble(),
        xlarge = json[_xlarge].toDouble(),
        xxlarge = json[_xxlarge].toDouble(),
        xxxlarge = json[_xxxlarge].toDouble(),
        huge = json[_huge].toDouble();

  toJSON() => {
        _xxsmall: xxsmall,
        _xsmall: xsmall,
        _small: small,
        _medium: medium,
        _large: large,
        _xlarge: xlarge,
        _xxlarge: xxlarge,
        _xxxlarge: xxxlarge,
        _huge: huge,
      };
}
