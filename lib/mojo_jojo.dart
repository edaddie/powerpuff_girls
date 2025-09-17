import 'powerPuff_girls.dart';

class MojoJojo extends PowerPuffGirls {
  final String _uniqueSkill = "Mad Science";
  final String _techCreation = "Mutation Ray Gun";
  final double _laserDuration = 10.0; // seconds

  MojoJojo() : super(name: "MOJO JOJO");

  String get uniqueSkill => _uniqueSkill;
  String get techCreation => _techCreation;
  double get laserDuration => _laserDuration;

  void useMadScience() {
    print("Triggers unique skill $_uniqueSkill to use $_techCreation and shoot mutation beams for $_laserDuration seconds.");
  }

  @override
  String info() => '${super.info()} - Unique Skill: $_uniqueSkill Weapon: $_techCreation (Laser Duration: $_laserDuration s) \n';
}
