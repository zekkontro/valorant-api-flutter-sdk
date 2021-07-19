class AdsStats {
  final double? zoomMultiplier;
  final double? fireRate;
  final double? runSpeedMultiplier;
  final int? burstCount;
  final double? firstBulletAccuracy;

  AdsStats(
      {required this.zoomMultiplier,
      required this.fireRate,
      required this.runSpeedMultiplier,
      required this.burstCount,
      required this.firstBulletAccuracy});

  factory AdsStats.fromJSON(Map<String, dynamic>? data) {
    return AdsStats(
      burstCount: data?['burstCount'],
      fireRate: data?['fireRate'],
      runSpeedMultiplier: data?['runSpeedMultiplier'],
      firstBulletAccuracy: data?['firstBulletAccuracy'],
      zoomMultiplier: data?['zoomMultiplier'],
    );
  }
}
