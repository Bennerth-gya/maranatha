# Theme-Aware Text Colors Guide

## Overview
Your Maranatha Flutter app is configured to automatically switch text colors between black (light theme) and white (dark theme) based on the device's color mode.

## How It Works

### 1. Theme Configuration
- **Light Theme**: Text colors are set to black (`Colors.black`)
- **Dark Theme**: Text colors are set to white (`Colors.white`)
- **System Mode**: Automatically follows the device's color mode setting

### 2. Automatic Text Color Switching
The app uses `ThemeMode.system` in `app.dart`, which means:
- When device is in light mode → Text appears black
- When device is in dark mode → Text appears white
- No manual intervention required

## Usage Examples

### Method 1: Using Theme Text Styles (Recommended)
```dart
Text(
  'Your text here',
  style: Theme.of(context).textTheme.headlineMedium, // Automatically adapts
)
```

### Method 2: Using Helper Functions
```dart
import 'package:maranatha/utils/helpers/helper_function.dart';

Text(
  'Your text here',
  style: TextStyle(
    color: MaranathaHelperFunctions.getTextColor(context),
    fontSize: 16,
  ),
)
```

### Method 3: Using the ThemeAwareText Widget
```dart
import 'package:maranatha/common/widgets/texts/theme_aware_text.dart';

ThemeAwareText(
  text: 'Your text here',
  style: TextStyle(fontSize: 16),
)
```

## Available Text Styles

### Light Theme (Black Text)
- `headlineLarge` - 32px, bold
- `headlineMedium` - 24px, semi-bold
- `headlineSmall` - 18px, semi-bold
- `titleLarge` - 12px, semi-bold
- `titleMedium` - 14px, medium
- `titleSmall` - 16px, regular
- `bodyLarge` - 14px, medium
- `bodyMedium` - 14px, normal
- `bodySmall` - 14px, medium (50% opacity)
- `labelLarge` - 12px, normal
- `labelSmall` - 12px, normal (50% opacity)

### Dark Theme (White Text)
- Same styles as light theme but with white color
- Opacity variations for secondary text

## Testing Theme Switching

### On Device
1. Go to device Settings
2. Find Display & Brightness (iOS) or Display (Android)
3. Toggle between Light and Dark mode
4. Your app text will automatically switch colors

### In Simulator/Emulator
1. iOS Simulator: Features → Toggle Appearance
2. Android Emulator: Settings → Display → Dark theme

## Best Practices

1. **Always use Theme text styles** instead of hardcoded colors
2. **Use helper functions** for custom text colors
3. **Test on both light and dark modes**
4. **Avoid hardcoded Colors.black or Colors.white**

## Common Issues and Solutions

### Issue: Text not changing color
**Solution**: Make sure you're using `Theme.of(context).textTheme` or helper functions

### Issue: Background not adapting
**Solution**: Remove hardcoded background colors and let the theme handle it

### Issue: Custom widgets not theme-aware
**Solution**: Use `MaranathaHelperFunctions.getTextColor(context)` in your custom widgets

## Files Modified for Theme Support

- ✅ `lib/utils/theme/theme.dart` - Main theme configuration
- ✅ `lib/utils/theme/custome_themes/text_theme.dart` - Text color definitions
- ✅ `lib/utils/helpers/helper_function.dart` - Theme helper functions
- ✅ `lib/app.dart` - Theme mode configuration
- ✅ `lib/features/authentication/screens/onboarding.dart` - Removed hardcoded background

Your app is now fully configured for dynamic text colors that automatically adapt to the device's color mode! 