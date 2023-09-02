import 'dart:async';
import 'dart:io';

import 'package:domain/domain.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:injectable/injectable.dart';

enum TtsState { playing, stopped, paused, continued }

@Singleton(as: TTSRepository)
class TTSRepositoryImpl extends TTSRepository {
  final flutterTts = FlutterTts();
  String? language;
  String? engine;
  double volume = 0.5;
  double pitch = 1.0;
  double rate = 0.5;
  bool isCurrentLanguageInstalled = false;

  String? _newVoiceText;
  int? _inputLength;

  TtsState ttsState = TtsState.stopped;

  bool get isPlaying => ttsState == TtsState.playing;

  bool get isStopped => ttsState == TtsState.stopped;

  bool get isPaused => ttsState == TtsState.paused;

  bool get isContinued => ttsState == TtsState.continued;

  bool get isIOS => !kIsWeb && Platform.isIOS;

  bool get isAndroid => !kIsWeb && Platform.isAndroid;

  bool get isWindows => !kIsWeb && Platform.isWindows;

  bool get isWeb => kIsWeb;

  Future _getDefaultEngine() async {
    engine = await flutterTts.getDefaultEngine;
    if (engine != null) {
      print(engine);
    }
  }

  Future _getDefaultVoice() async {
    var voice = await flutterTts.getDefaultVoice;
    if (voice != null) {
      print(voice);
    }
  }

  @override
  Future<void> init() async {
    unawaited(flutterTts.awaitSpeakCompletion(true));
    if (isAndroid) {
      unawaited(_getDefaultEngine());
      unawaited(_getDefaultVoice());
    }

    flutterTts.setStartHandler(() {
      ttsState = TtsState.playing;
    });
    if (isAndroid) {
      flutterTts.setInitHandler(() {
        print("TTS Initialized");
      });
      flutterTts.setCompletionHandler(() {
        print("Complete");
        ttsState = TtsState.stopped;
      });

      flutterTts.setCancelHandler(() {
        print("Cancel");
        ttsState = TtsState.stopped;
      });

      flutterTts.setPauseHandler(() {
        print("Paused");
        ttsState = TtsState.paused;
      });

      flutterTts.setContinueHandler(() {
        print("Continued");
        ttsState = TtsState.continued;
      });

      flutterTts.setErrorHandler((msg) {
        print("error: $msg");
        ttsState = TtsState.stopped;
      });
    }

    if (isIOS) {
      await flutterTts.setSharedInstance(true);
      await flutterTts.setIosAudioCategory(
        IosTextToSpeechAudioCategory.ambient,
        [
          IosTextToSpeechAudioCategoryOptions.allowBluetooth,
          IosTextToSpeechAudioCategoryOptions.allowBluetoothA2DP,
          IosTextToSpeechAudioCategoryOptions.mixWithOthers
        ],
        IosTextToSpeechAudioMode.voicePrompt,
      );
    }
    await flutterTts.awaitSpeakCompletion(true);
  }

  @override
  Future<bool> speak(String text) async {
    try {
      await flutterTts.setVolume(1.0);
      await flutterTts.setSpeechRate(1.0);
      await flutterTts.setPitch(1.0);

      await flutterTts.speak(text);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> stop() async {
    try {
      await flutterTts.stop();
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  // TODO: implement languages
  Future<String> get languages => throw UnimplementedError();

  @override
  Future<bool> speechPitch(double pitch) {
    // TODO: implement speechPitch
    throw UnimplementedError();
  }

  @override
  Future<bool> speechRate(double speed) {
    // TODO: implement speechRate
    throw UnimplementedError();
  }

  @override
  Future<bool> speechVolume(double volume) {
    // TODO: implement speechVolume
    throw UnimplementedError();
  }

  @override
  Future<bool> voice(String voice) {
    // TODO: implement voice
    throw UnimplementedError();
  }

  @override
  // TODO: implement voices
  Future<List<String>> get voices => throw UnimplementedError();
}
