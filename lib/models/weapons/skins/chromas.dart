class Chromas {
  final String? uuid;
  final String? displayName;
  final String? displayIcon;
  final String? fullRender;
  final String? swatch;
  final String? assetPath;

  Chromas(
      {required this.uuid,
      required this.displayName,
      required this.displayIcon,
      required this.fullRender,
      required this.swatch,
      required this.assetPath});

  factory Chromas.fromJSON(Map<String, dynamic>? data) {
    return Chromas(
        assetPath: data?['assetPath'],
        displayIcon: data?['displayIcon'],
        displayName: data?['displayName'],
        fullRender: data?['fullRender'],
        swatch: data?['swatch'],
        uuid: data?['uuid']);
  }
}
