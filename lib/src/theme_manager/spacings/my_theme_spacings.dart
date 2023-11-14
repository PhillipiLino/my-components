class MyThemeSpacings {
  final double zero;
  final double xxxsmall;
  final double xxsmall;
  final double xsmall;
  final double small;
  final double medium;
  final double large;
  final double xlarge;
  final double xxlarge;
  final double xxxlarge;
  final double huge;
  final double xhuge;

  static const String _zero = 'zero';
  static const String _xxxsmall = 'xxxsmall';
  static const String _xxsmall = 'xxsmall';
  static const String _xsmall = 'xsmall';
  static const String _small = 'small';
  static const String _medium = 'medium';
  static const String _large = 'large';
  static const String _xlarge = 'xlarge';
  static const String _xxlarge = 'xxlarge';
  static const String _xxxlarge = 'xxxlarge';
  static const String _huge = 'huge';
  static const String _xhuge = 'xhuge';

  MyThemeSpacings({
    required this.zero,
    required this.xxxsmall,
    required this.xxsmall,
    required this.xsmall,
    required this.small,
    required this.medium,
    required this.large,
    required this.xlarge,
    required this.xxlarge,
    required this.xxxlarge,
    required this.huge,
    required this.xhuge,
  });

  MyThemeSpacings.fromJSON(Map<String, dynamic> json)
      : zero = json[_zero],
        xxxsmall = json[_xxxsmall],
        xxsmall = json[_xxsmall],
        xsmall = json[_xsmall],
        small = json[_small],
        medium = json[_medium],
        large = json[_large],
        xlarge = json[_xlarge],
        xxlarge = json[_xxlarge],
        xxxlarge = json[_xxxlarge],
        huge = json[_huge],
        xhuge = json[_xhuge];
}
