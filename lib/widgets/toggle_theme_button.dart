import 'package:flutter/material.dart';

class ToggleThemeButton extends StatefulWidget {
  const ToggleThemeButton({super.key, required this.setThemeMode});
  final void Function(ThemeMode themeMode) setThemeMode;

  @override
  State<ToggleThemeButton> createState() => _ToggleThemeButtonState();
}

class _ToggleThemeButtonState extends State<ToggleThemeButton> {
  void toggleThemeMode() {
    if (Theme.of(context).brightness == Brightness.light) {
      widget.setThemeMode(ThemeMode.dark);
    } else {
      widget.setThemeMode(ThemeMode.light);
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: toggleThemeMode,
      tooltip: Theme.of(context).brightness == Brightness.dark
          ? "Change to Light Mode"
          : "Change to Dark Mode",
      icon: Icon(
        Theme.of(context).brightness == Brightness.dark
            ? Icons.dark_mode //light_mode
            : Icons.light_mode,
      ),
    );
  }
}
