import 'powerPuff_girls.dart';
import 'blossom.dart';
import 'bubbles.dart';
import 'buttercup.dart';
import 'mojo_jojo.dart';

void main() {

  print('\nCHARACTERS` INITIAL POWERS\n');
  var baseGirl = PowerPuffGirls(name: '');
  print('Initial Prowess of a ${baseGirl.info()}');
  baseGirl.boostFlightPower(20.0);
  print('After boosting flight: ${baseGirl.info()}');
  baseGirl.boostAttackPower(15.0);
  print('After boosting attack: ${baseGirl.info()}');

  try {
    baseGirl.flightPower = -10.0;
  } catch (e) {
    print('Setter validation: $e');
  }

  print('\n=== Hero Class Demonstration ===');

  print('\nBLOSSOM');
  var blossom = Blossom();
  print(' ${blossom.info()}');
  blossom.boostSpeed(25.0);
  print('After boosting speed: ${blossom.info()}');
  blossom.useIceblast();
  print('After using unique skill: ${blossom.info()}');

  blossom.boostFlightPower(30.0);
  print('Blossom after inheriting boost: ${blossom.info()}');

// Demonstrate derived class Buttercup
  print('\nBUTTERCUP');
  var buttercup = Buttercup();
  print(' ${buttercup.info()}');
  buttercup.useSuperSonicScream();
  print('After using unique skill: ${buttercup.info()}');

  buttercup.boostFlightPower(30.0);
  print('Blossom after inheriting boost: ${buttercup.info()}');

  print('\nBUBBLES');
  var bubbles = Bubbles();
  print(' ${bubbles.info()}');
  bubbles.useLaserVision();
  print('After using unique skill: ${bubbles.info()}');

  bubbles.boostFlightPower(30.0);
  print('Blossom after inheriting boost: ${bubbles.info()}');

  print('\n=== Villain Class Demonstration ===');
  print('\nMOJO-JOJO');
  var mojoJojo = MojoJojo();
  print(' ${mojoJojo.info()}');
  mojoJojo.useMadScience();
  print('After using unique skill: ${mojoJojo.info()}');

}
