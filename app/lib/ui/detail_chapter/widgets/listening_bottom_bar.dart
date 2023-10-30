import 'package:resources/resources.dart';

import '../../../app.dart';

class ListeningBottomBar extends StatelessWidget {
  const ListeningBottomBar({
    required this.onResumeButtonPressed,
    required this.onPauseButtonPressed,
    required this.onNextButtonPressed,
    required this.onPreviousButtonPressed,
    required this.onNextStepButtonPressed,
    required this.onPreviousStepButtonPressed,
    required this.onStopButtonPressed,
    super.key,
  });

  final void Function() onResumeButtonPressed;
  final void Function() onPauseButtonPressed;
  final void Function() onNextButtonPressed;
  final void Function() onPreviousButtonPressed;
  final void Function() onNextStepButtonPressed;
  final void Function() onPreviousStepButtonPressed;
  final void Function() onStopButtonPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    bool isPlaying = true;

    return Container(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Material(
        color: theme.colorScheme.surface.withOpacity(0.8),
        borderRadius: BorderRadius.circular(theme.radius.extraSmall),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: theme.space.large, vertical: theme.space.tiny),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: theme.space.small),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: onPreviousStepButtonPressed,
                    style: IconButton.styleFrom(
                      foregroundColor: theme.colorScheme.surface,
                      backgroundColor: theme.colorScheme.onSurface,
                    ),
                    icon: FaIcon(
                      FaCodePoint.backwardStep,
                      type: IconType.regular,
                      size: theme.iconSize.extraLarge,
                    ),
                  ),
                  Icon(Icons.abc),
                  IconButton(
                    onPressed: onPreviousButtonPressed,
                    style: IconButton.styleFrom(
                      foregroundColor: theme.colorScheme.surface,
                      backgroundColor: theme.colorScheme.onSurface,
                    ),
                    icon: FaIcon(
                      FaCodePoint.backward,
                      type: IconType.regular,
                      size: theme.iconSize.extraLarge,
                    ),
                  ),
                  StatefulBuilder(builder: (context, setState) {
                    return IconButton(
                      onPressed: () {
                        if (isPlaying) {
                          onPauseButtonPressed.call();
                        } else {
                          onResumeButtonPressed.call();
                        }
                        setState(() {
                          isPlaying = !isPlaying;
                        });
                      },
                      padding: EdgeInsets.all(theme.space.medium),
                      style: IconButton.styleFrom(
                        foregroundColor: theme.colorScheme.surface,
                        backgroundColor: theme.colorScheme.onSurface,
                      ),
                      isSelected: isPlaying,
                      selectedIcon: const FaIcon(
                        FaCodePoint.stop,
                        type: IconType.solid,
                      ),
                      icon: FaIcon(
                        FaCodePoint.play,
                        type: IconType.solid,
                        size: theme.iconSize.extraExtraLarge,
                      ),
                    );
                  }),
                  IconButton(
                    onPressed: onNextButtonPressed,
                    style: IconButton.styleFrom(
                      foregroundColor: theme.colorScheme.surface,
                      backgroundColor: theme.colorScheme.onSurface,
                    ),
                    icon: FaIcon(
                      FaCodePoint.forward,
                      type: IconType.regular,
                      size: theme.iconSize.extraLarge,
                    ),
                  ),
                  IconButton(
                    onPressed: onNextStepButtonPressed,
                    style: IconButton.styleFrom(
                      foregroundColor: theme.colorScheme.surface,
                      backgroundColor: theme.colorScheme.onSurface,
                    ),
                    icon: FaIcon(
                      FaCodePoint.forwardStep,
                      type: IconType.regular,
                      size: theme.iconSize.extraLarge,
                    ),
                  ),
                ],
              ),
              SizedBox(height: theme.space.small),
              Row(
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FaCodePoint.timer,
                        type: IconType.regular,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: Text('2.73x', style: theme.textTheme.titleMedium),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: onStopButtonPressed,
                      icon: const FaIcon(
                        FaCodePoint.powerOff,
                        type: IconType.regular,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FaCodePoint.musicNote,
                        type: IconType.regular,
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FaCodePoint.gear,
                        type: IconType.regular,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
