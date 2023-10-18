import '../../ui.dart';
import '../bloc/detail_chapter_bloc.dart';
import 'listening_bottom_bar.dart';
import 'un_listening_bottom_bar.dart';

class DetailChapterBottomBar extends StatefulWidget {
  const DetailChapterBottomBar({
    required this.onSpeakButtonPressed,
    required this.visible,
    required this.url,
    required this.title,
    required this.currentChapter,
    required this.totalChapter,
    required this.onTTSEvent,
    super.key,
  });

  final void Function() onSpeakButtonPressed;
  final void Function(TTSEvent) onTTSEvent;
  final bool visible;
  final String url;
  final String title;
  final int currentChapter;
  final int totalChapter;

  @override
  State<DetailChapterBottomBar> createState() => _DetailChapterBottomBarState();
}

class _DetailChapterBottomBarState extends State<DetailChapterBottomBar> {
  bool isListening = false;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.visible,
      child: isListening
          ? ListeningBottomBar(
              onResumeButtonPressed: () => widget.onTTSEvent.call(TTSEvent.resume),
              onPauseButtonPressed: () => widget.onTTSEvent.call(TTSEvent.pause),
              onNextButtonPressed: () => widget.onTTSEvent.call(TTSEvent.next),
              onPreviousButtonPressed: () => widget.onTTSEvent.call(TTSEvent.previous),
              onNextStepButtonPressed: () => widget.onTTSEvent.call(TTSEvent.nextStep),
              onPreviousStepButtonPressed: () => widget.onTTSEvent.call(TTSEvent.previousStep),
              onStopButtonPressed: () {
                widget.onTTSEvent.call(TTSEvent.stop);
                setState(() => isListening = false);
              },
            )
          : UnListeningBottomBar(
              visible: widget.visible,
              url: widget.url,
              title: widget.title,
              currentChapter: widget.currentChapter,
              totalChapter: widget.totalChapter,
              onSpeakButtonPressed: () {
                widget.onTTSEvent.call(TTSEvent.play);
                setState(() => isListening = true);
              },
            ),
    );
  }
}
