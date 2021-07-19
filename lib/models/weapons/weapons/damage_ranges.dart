class DamageRanges {
  final num? rangeStartMeters;
  final num? rangeEndMeters;
  final num? headDamage;
  final num? bodyDamage;
  final num? legDamage;

  DamageRanges(
      {required this.rangeStartMeters,
      required this.rangeEndMeters,
      required this.headDamage,
      required this.bodyDamage,
      required this.legDamage});

  factory DamageRanges.fromJSON(Map<String, dynamic>? data) {
    return DamageRanges(
      bodyDamage: data?['bodyDamage'],
      headDamage: data?['headDamage'],
      legDamage: data?['legDamage'],
      rangeEndMeters: data?['rangeEndMeters'],
      rangeStartMeters: data?['rangeStartMeters'],
    );
  }
}
