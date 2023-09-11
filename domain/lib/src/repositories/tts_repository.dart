abstract class TTSRepository {
  Future<void> init();

  Future<void> play(String text);

  Future<void> stop();

  Future<String> get languages;

  Future<bool> speechRate(double speed);

  Future<bool> speechVolume(double volume);

  Future<bool> speechPitch(double pitch);

  Future<List<Map<String, String>>> get voices;

  Future<bool> voice(Map<String, String> voice);
}
