import 'powerPuff_girls.dart';

class Buttercup extends PowerPuffGirls {
  final String _uniqueSkill = "superSonicScream";
  final double _effectDuration = 2.5; //seconds

  String get uniqueSkill => _uniqueSkill;
  double get effectDuration => _effectDuration;

  Buttercup() : super(name: "BUTTERCUP");

  void useSuperSonicScream() {
    print('Buttercup uses $_uniqueSkill: to distract the target for $_effectDuration seconds.');
  }

@override
String info() => '${super.info()} - Unique Skill: $_uniqueSkill (Effect Duration: $_effectDuration s)';
}
