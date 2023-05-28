import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName: 'API_KEY', defaultValue: '', obfuscate: true)
  static String apiKey = _Env.apiKey;

  @EnviedField(varName: 'VIN', defaultValue: '', obfuscate: true)
  static String vin = _Env.vin;
}
