import 'package:flutter/material.dart';

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
          ? "Change to Light Mode"
          : "Change to Dark Mode",
      icon: Icon(
        brightness == Brightness.dark
            ? Icons.light_mode //light_mode
            : Icons.dark_mode,
      ),
    );
  }
}
