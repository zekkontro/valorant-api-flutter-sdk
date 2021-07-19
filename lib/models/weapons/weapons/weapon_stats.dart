import 'ads_stats.dart';
import 'damage_ranges.dart';

class WeaponStats {
  final int? fireRate;
  final int? magazineSize;
  final double? runSpeedMultiplier;
  final double? equipTimeSeconds;
  final int? reloadTimeSeconds;
  final double? firstBulletAccuracy;
  final int? shotgunPelletCount;
  final List<DamageRanges> damageRanges;
  final AdsStats? adsStats;

  WeaponStats(
      {required this.fireRate,
      required this.magazineSize,
      required this.runSpeedMultiplier,
      required this.equipTimeSeconds,
      required this.reloadTimeSeconds,
      required this.firstBulletAccuracy,
      required this.shotgunPelletCount,
      required this.damageRanges,
      required this.adsStats});

  factory WeaponStats.fromJSON(Map<String, dynamic>? data) {
    return WeaponStats(
        adsStats: AdsStats.fromJSON(data?['adsStats']),
        equipTimeSeconds: data?['equipTimeSeconds'],
        fireRate: data?['fireRate'],
        firstBulletAccuracy: data?['firstBulletAccuracy'],
        magazineSize: data?['magazineSize'],
        reloadTimeSeconds: data?['reloadTimeSeconds'],
        runSpeedMultiplier: data?['runSpeedMultiplier'],
        shotgunPelletCount: data?['shotgunPelletCount'],
        damageRanges: List<DamageRanges>.generate(data?['damageRanges'].length,
            (index) => data?['damageRanges'][index]));
  }
}
