class MyThemeBorderRadius {
  final double none;
  final double sm;
  final double md;
  final double lg;

  static const String _none = 'none';
  static const String _sm = 'sm';
  static const String _md = 'md';
  static const String _lg = 'lg';

  MyThemeBorderRadius({
    required this.none,
    required this.sm,
    required this.md,
    required this.lg,
  });

  MyThemeBorderRadius.fromJSON(Map<String, dynamic> json)
      : none = json[_none],
        sm = json[_sm],
        md = json[_md],
        lg = json[_lg];
}
