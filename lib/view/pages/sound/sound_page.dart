import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:settings/view/pages/sound/sound_model.dart';
import 'package:settings/view/widgets/settings_section.dart';
import 'package:settings/view/widgets/switch_settings_row.dart';

class SoundPage extends StatelessWidget {
  const SoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<SoundModel>(context);

    return Column(
      children: [
        SettingsSection(
          headline: 'System',
          children: [
            SwitchSettingsRow(
              actionLabel: 'Allow Volume Above 100%',
              value: model.allowAbove100,
              onChanged: (value) => model.setAllowAbove100(value),
            ),
            SwitchSettingsRow(
              actionLabel: 'Event Sounds',
              actionDescription:
                  'Notify of a system action, notification or event',
              value: model.eventSounds,
              onChanged: (value) => model.setEventSounds(value),
            ),
            SwitchSettingsRow(
              actionLabel: 'Input Feedback Sounds',
              actionDescription: 'Feedback for user input events, '
                  'such as mouse clicks, or key presses',
              value: model.inputFeedbackSounds,
              onChanged: (value) => model.setInputFeedbackSounds(value),
            ),
          ],
        ),
      ],
    );
  }
}
