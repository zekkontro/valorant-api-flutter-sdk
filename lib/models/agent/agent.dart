import 'ability.dart';
import 'role.dart';

class Agent {
  final String uuid;
  final String displayName;
  final String description;
  final String developerName;
  final String displayIcon;
  final String displayIconSmall;
  final String? bustPotrait;
  final String? fullPotrait;
  final String killfeedPortrait;
  final String assetPath;
  final bool isFullPortraitRightFacing;
  final bool isPlayableCharacter;
  final bool isAvailableForTest;
  final Role? role;
  final List<Ability> abilities;

  Agent(
      {required this.uuid,
      required this.displayName,
      required this.description,
      required this.developerName,
      required this.displayIcon,
      required this.displayIconSmall,
      required this.bustPotrait,
      required this.fullPotrait,
      required this.killfeedPortrait,
      required this.assetPath,
      required this.isFullPortraitRightFacing,
      required this.isPlayableCharacter,
      required this.isAvailableForTest,
      required this.role,
      required this.abilities});

  factory Agent.fromJSON(Map<String, dynamic> data) {
    return Agent(
        uuid: data['uuid'],
        assetPath: data['assetPath'],
        abilities: List<Ability>.generate(data['abilities'].length,
            (index) => Ability.fromMap(data['abilities'][index])),
        bustPotrait: data['bustPotrait'],
        description: data['description'],
        developerName: data['developerName'],
        displayIcon: data['displayIcon'],
        displayIconSmall: data['displayIconSmall'],
        displayName: data['displayName'],
        fullPotrait: data['fullPotrait'],
        isAvailableForTest: data['isAvailableForTest'],
        isFullPortraitRightFacing: data['isFullPortraitRightFacing'],
        isPlayableCharacter: data['isPlayableCharacter'],
        killfeedPortrait: data['killfeedPortrait'],
        role: Role.fromJSON(data['role']));
  }
}
