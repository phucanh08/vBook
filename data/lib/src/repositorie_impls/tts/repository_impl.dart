import 'dart:async';
import 'dart:io';

import 'package:domain/domain.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

enum TtsState { playing, stopped, paused, continued }

@Singleton(as: TTSRepository)
class TTSRepositoryImpl extends TTSRepository {
  final flutterTts = FlutterTts();
  bool isCurrentLanguageInstalled = false;

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
    final engine = await flutterTts.getDefaultEngine;
    if (engine != null) {
      if (kDebugMode) {
        Log.d(engine);
      }
    }
  }

  Future _getDefaultVoice() async {
    final voice = await flutterTts.getDefaultVoice;
    if (voice != null) {
      if (kDebugMode) {
        Log.d(voice);
      }
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
        Log.d('TTS Initialized');
      });
      flutterTts.setCompletionHandler(() {
        Log.d('Complete');
        ttsState = TtsState.stopped;
      });

      flutterTts.setCancelHandler(() {
        Log.d('Cancel');
        ttsState = TtsState.stopped;
      });

      flutterTts.setPauseHandler(() {
        Log.d('Paused');
        ttsState = TtsState.paused;
      });

      flutterTts.setContinueHandler(() {
        Log.d('Continued');
        ttsState = TtsState.continued;
      });

      flutterTts.setErrorHandler((msg) {
        Log.d('error: $msg');
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
  Future<void> play(String text) => flutterTts.speak(text);

  @override
  Future<void> stop() => flutterTts.stop();

  @override
  Future<String> get languages => flutterTts.getLanguages.then((value) => value.toString());

  @override
  Future<bool> speechPitch(double pitch) => flutterTts.setPitch(pitch).then((_) => true);

  @override
  Future<bool> speechRate(double speed) => flutterTts.setSpeechRate(speed).then((_) => true);

  @override
  Future<bool> speechVolume(double volume) => flutterTts.setVolume(volume).then((_) => true);

  @override
  Future<bool> voice(Map<String, String> voice) => flutterTts.setVoice(voice).then((_) => true);

  @override
  Future<List<Map<String, String>>> get voices =>
      flutterTts.getVoices.then((value) => value as List<Map<String, String>>);
}
