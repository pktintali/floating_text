# floating_text

A light weight flutter package that provides beautiful floating text animations.

## Getting Started

Add this package in your project's dependencies.

```yaml
dependencies:
  floating_text: ^0.0.4
```

Import the package:

```dart
import 'package:floating_text/floating_text.dart'
```

Use Anywhere instead of <code>Text</code> Widget:

## Demo's

<table>
  <tr>
    <th>Animation 1</th>
    <th>Animation 2</th>
    <th>Animation 3</th>
  </tr>
  <tr>
    <td><img alt = 'floating_text down float animation' src = "https://raw.githubusercontent.com/pktintali/floating_text/main/example/screenshots/floating_down.gif" /></td>
    <td><img alt = 'animation with shadow' src = "https://raw.githubusercontent.com/pktintali/floating_text/main/example/screenshots/animation_with_shadow.gif" /></td>
    <td><img alt = 'linear animation' src = "https://raw.githubusercontent.com/pktintali/floating_text/main/example/screenshots/floating_linear.gif" /></td>
  </tr>
</table>
<table>
  <tr>
    <th>Text On Button</th>
    <th>Animated Up</th>
    <th>RTL Support</th>
  </tr>
  <tr>
    <td><img alt = 'animation on button' src = "https://raw.githubusercontent.com/pktintali/floating_text/main/example/screenshots/button_text.gif" /></td>
    <td><img alt = 'floating_text up float animation' src = "https://raw.githubusercontent.com/pktintali/floating_text/main/example/screenshots/floating_up.gif" /></td>
    <td><img alt = 'rtl support' src = "https://raw.githubusercontent.com/pktintali/floating_text/main/example/screenshots/rtl.gif" /></td>
  </tr>
</table>

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
    duration: Duration(milliseconds: 500),
  ),
),
```

### RTL Support

```dart
FloatingText(
   text: 'WELCOME',
   repeat: true,
   isRTL: true,
   duration: Duration(milliseconds: 100),
 ),
```

### Set repeat true for repeating the animation

```dart
FloatingText(
text: "WELCOME",
repeat: true,
duration: Duration(milliseconds: 600),
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
    duration: Duration(milliseconds: 100),
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

