import 'powerPuff_girls.dart';

class Blossom extends PowerPuffGirls {
  final String _uniqueSkill = "iceblast";
  final double _stunDuration = 3.0;

  Blossom() : super(name: "Blossom");

  String get uniqueSkill => _uniqueSkill;
  double get stunDuration => _stunDuration;

  void useIceblast() {
    print("Using $_uniqueSkill: target stunned for $_stunDuration seconds, unable to move.");
  }

  @override
  String info() {
    return "${super.info()} — Unique Skill: $uniqueSkill";
  }
}
