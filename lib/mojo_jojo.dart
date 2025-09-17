import 'powerPuff_girls.dart';

class MojoJojo extends PowerPuffGirls {
  final String _uniqueSkill = "Mad science";
  final double _laserDuration = 10.0; // seconds

  MojoJojo() : super(name: "Mojo Jojo");

  String get uniqueSkill => _uniqueSkill;
  double get laserDuration => _laserDuration;

  void useMadScience() {
    print("Using Mad science: controls robots to shoot laser beams for $_laserDuration seconds.");
  }

  @override
  String info() => '${super.info()} - Unique Skill: $_uniqueSkill (Laser Duration: $_laserDuration s)';
}
