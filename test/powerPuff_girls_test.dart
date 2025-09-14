import 'package:flutter_test/flutter_test.dart';
import 'package:powerpuff_girls/powerPuff_girls.dart';
import 'package:powerpuff_girls/blossom.dart';

void main() {
  group('PowerPuffGirls', () {
    test('Constructor with defaults', () {
      final girl = PowerPuffGirls(name: 'TestGirl');
      expect(girl.name, 'TestGirl');
      expect(girl.flightPower, 100.0);
      expect(girl.attackPower, 50.0);
      expect(girl.speed, 75.0);
    });

    test('Constructor with custom values', () {
      final girl = PowerPuffGirls(
        name: 'TestGirl',
        flightPower: 200.0,
        attackPower: 100.0,
        speed: 150.0,
      );
      expect(girl.flightPower, 200.0);
      expect(girl.attackPower, 100.0);
      expect(girl.speed, 150.0);
    });

    test('Getters work correctly', () {
      final girl = PowerPuffGirls(name: 'TestGirl');
      expect(girl.flightPower, 100.0);
      expect(girl.attackPower, 50.0);
      expect(girl.speed, 75.0);
    });

    test('Setters with valid values', () {
      final girl = PowerPuffGirls(name: 'TestGirl');
      girl.flightPower = 150.0;
      girl.attackPower = 75.0;
      girl.speed = 100.0;
      expect(girl.flightPower, 150.0);
      expect(girl.attackPower, 75.0);
      expect(girl.speed, 100.0);
    });

    test('Setters with invalid values throw ArgumentError', () {
      final girl = PowerPuffGirls(name: 'TestGirl');
      expect(() => girl.flightPower = -10.0, throwsArgumentError);
      expect(() => girl.attackPower = -5.0, throwsArgumentError);
      expect(() => girl.speed = -20.0, throwsArgumentError);
    });

    test('boostFlightPower with positive amount', () {
      final girl = PowerPuffGirls(name: 'TestGirl');
      girl.boostFlightPower(50.0);
      expect(girl.flightPower, 150.0);
    });

    test('boostFlightPower with zero or negative amount does nothing', () {
      final girl = PowerPuffGirls(name: 'TestGirl');
      girl.boostFlightPower(0.0);
      expect(girl.flightPower, 100.0);
      girl.boostFlightPower(-10.0);
      expect(girl.flightPower, 100.0);
    });

    test('boostAttackPower with positive amount', () {
      final girl = PowerPuffGirls(name: 'TestGirl');
      girl.boostAttackPower(25.0);
      expect(girl.attackPower, 75.0);
    });

    test('boostSpeed with positive amount', () {
      final girl = PowerPuffGirls(name: 'TestGirl');
      girl.boostSpeed(25.0);
      expect(girl.speed, 100.0);
    });

    test('info method returns correct string', () {
      final girl = PowerPuffGirls(name: 'TestGirl');
      expect(girl.info(), 'Powerpuff Girl: TestGirl — Flight Power: 100.00, Attack Power: 50.00, Speed: 75.00');
    });
  });

  group('Blossom Derived Class', () {
    test('Constructor sets name and inherits defaults', () {
      final blossom = Blossom();
      expect(blossom.name, 'Blossom');
      expect(blossom.flightPower, 100.0);
      expect(blossom.attackPower, 50.0);
      expect(blossom.speed, 75.0);
    });

    test('Unique properties are encapsulated', () {
      final blossom = Blossom();
      expect(blossom.uniqueSkill, 'iceblast');
      expect(blossom.stunDuration, 3.0);
    });

    test('useIceblast method works', () {
      final blossom = Blossom();
      // Since it prints, we can check if it doesn't throw
      expect(() => blossom.useIceblast(), returnsNormally);
    });

    test('info method override includes unique skill', () {
      final blossom = Blossom();
      final info = blossom.info();
      expect(info, contains('Blossom'));
      expect(info, contains('iceblast'));
      expect(info, contains('3.0'));
    });

    test('Inherits setters from base', () {
      final blossom = Blossom();
      blossom.flightPower = 200.0;
      expect(blossom.flightPower, 200.0);
    });

    test('Inherits boost methods from base', () {
      final blossom = Blossom();
      blossom.boostFlightPower(50.0);
      expect(blossom.flightPower, 150.0);
    });
  });
}
