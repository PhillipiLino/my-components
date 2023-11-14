class MyThemeBorderWidth {
  final double zero;
  final double small;
  final double medium;

  static const String _zero = 'zero';
  static const String _small = 'small';
  static const String _medium = 'medium';

  MyThemeBorderWidth({
    required this.zero,
    required this.small,
    required this.medium,
  });

  MyThemeBorderWidth.fromJSON(Map<String, dynamic> json)
      : zero = json[_zero],
        small = json[_small],
        medium = json[_medium];
}
