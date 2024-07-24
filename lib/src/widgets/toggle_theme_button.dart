import 'package:flutter/material.dart';
import 'package:my_age/l10n/l10n.dart';

class ToggleThemeButton extends StatelessWidget {
  const ToggleThemeButton({super.key, required this.setThemeMode});
  final void Function(ThemeMode themeMode) setThemeMode;

  void _toggleThemeMode(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.light) {
      setThemeMode(ThemeMode.dark);
    } else {
      setThemeMode(ThemeMode.light);
    }
  }

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;

    return IconButton(
      onPressed: () => _toggleThemeMode(context),
      tooltip: brightness == Brightness.dark
          ? Strings.of(context).changeToLightMode
          : Strings.of(context).changeToDarkMode,
      icon: Icon(
        brightness == Brightness.dark
            ? Icons.light_mode //light_mode
            : Icons.dark_mode,
      ),
    );
  }
}
