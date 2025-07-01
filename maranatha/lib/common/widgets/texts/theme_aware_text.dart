import 'package:flutter/material.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';

/// A widget that demonstrates theme-aware text colors
/// Text automatically switches between black (light theme) and white (dark theme)
class ThemeAwareText extends StatelessWidget {
  const ThemeAwareText({
    super.key,
    required this.text,
    this.style,
    this.textAlign,
    this.maxLines,
  });

  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style?.copyWith(
        color: MaranathaHelperFunctions.getTextColor(context),
      ) ?? TextStyle(
        color: MaranathaHelperFunctions.getTextColor(context),
      ),
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}

/// A widget that shows the current theme mode and text color
class ThemeModeIndicator extends StatelessWidget {
  const ThemeModeIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MaranathaHelperFunctions.isDarkMode(context);
    final textColor = MaranathaHelperFunctions.getTextColor(context);
    
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? Colors.grey[800] : Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            'Current Theme: ${isDark ? "Dark" : "Light"}',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'This text automatically adapts to the theme',
            style: TextStyle(color: textColor),
          ),
          const SizedBox(height: 8),
          Text(
            'Text color: ${isDark ? "White" : "Black"}',
            style: TextStyle(
              color: textColor.withOpacity(0.7),
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
} 