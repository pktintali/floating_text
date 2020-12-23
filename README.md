# floating_text

A light weight flutter package which provides beautiful floating text animations.

## Getting Started
Add this package in your project's dependencies.

```yaml
dependencies:
  floating_text: ^0.0.1
```

Import the package:

```dart
import 'package:floating_text/floating_text.dart'
```

Use Anywhere instead of <code>Text</code> Widget:

## Key Features

- Light Weight ( Only 100 Lines of code inside package )
- Support any Text on the Screen
- Custom style for the floating/animated text
- Custom style support for the non floating text
- highly customizable
- Easy to use

### Use On Any Widget

```dart
RaisedButton(
  onPressed: () {},
  child: FloatingText(
    text: 'Button',
    repeat: true,
    floatingSpeed: 10,
  ),
),
```

### RTL Support

```dart
FloatingText(
   text: 'WELCOME',
   repeat: true,
   textDirection: TextDirection.rtl,
   floatingSpeed: 12,
 ),
```

### Set repeat true for repeating the animation

```dart
FloatingText(
text: "WELCOME",
repeat: true,
floatingSpeed: 5,
floatingTextStyle: TextStyle(
  color: Colors.blue,
  fontSize: 50,
),
textStyle: TextStyle(
color: Colors.black38,
  fontSize: 60,
)),
```

### Use your custom text style

```dart
FloatingText(
    text: 'Congratulations',
    repeat: true,
    floatingSpeed: 6,
    textStyle: TextStyle(
      fontSize: 40,
      color: Colors.black54,
    ),
    floatingTextStyle: TextStyle(
      color: Colors.red,
      fontSize: 40,
      shadows: [
        BoxShadow(
          color: Colors.yellow,
          blurRadius: 10,
        )
      ],
    ),
  ),
```

### Example

```dart
FloatingText(
    text: 'Congratulations',
    repeat: true,
    floatingSpeed: 6,
    textStyle: TextStyle(
      fontSize: 40,
      color: Colors.black54,
    ),
    floatingTextStyle: TextStyle(
      color: Colors.red,
      fontSize: 40,
      shadows: [
        BoxShadow(
          color: Colors.yellow,
          blurRadius: 10,
        )
      ],
    ),
  ),
```

## Author

Pradeep Tintali (4gpradeep@gmail.com)

