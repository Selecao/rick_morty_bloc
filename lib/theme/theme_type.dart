enum ThemeType { light, dark, byDevice }

String themeName(ThemeType themeType) {
  switch (themeType) {
    case ThemeType.dark:
      return "Dark Theme";
    case ThemeType.light:
      return "Light Theme";
    default:
      return "Follow the system settings";
  }
}
