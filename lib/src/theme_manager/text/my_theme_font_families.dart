class MyThemeFontFamilies {
  final String base;

  static const String _base = 'base';

  MyThemeFontFamilies({
    required this.base,
  });

  MyThemeFontFamilies.fromJSON(Map<String, dynamic> json) : base = json[_base];

  toJSON() => {
        _base: base,
      };
}
