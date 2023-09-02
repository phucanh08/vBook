abstract class TTSRepository {
  Future<void> init();

  Future<bool> speak(String text);

  Future<bool> stop();

  Future<String> get languages;

  Future<bool> speechRate(double speed);

  Future<bool> speechVolume(double volume);

  Future<bool> speechPitch(double pitch);

  Future<List<String>> get voices;

  Future<bool> voice(String voice);
}
