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
      : xxsmall = double.parse(json[_xxsmall]),
        xsmall = double.parse(json[_xsmall]),
        small = double.parse(json[_small]),
        medium = double.parse(json[_medium]),
        large = double.parse(json[_large]),
        xlarge = double.parse(json[_xlarge]),
        xxlarge = double.parse(json[_xxlarge]),
        xxxlarge = double.parse(json[_xxxlarge]),
        huge = double.parse(json[_huge]);
}
