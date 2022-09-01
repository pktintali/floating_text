# Floating Text

<p>
<a href="https://flutter.dev">
    <img src="https://img.shields.io/badge/Platform-Flutter-02569B?logo=flutter" alt="Platform">
  </a>
  <a href="https://pub.dev/packages/floating_text" rel="ugc">
    <img src="https://img.shields.io/badge/pub-0.2.0-blue" alt="Pub Package">
  </a>
  <a href="https://opensource.org/licenses/MIT" rel="ugc">
    <img src="https://img.shields.io/badge/likes-26-green" alt="License: MIT">
  </a>
  <a href="https://opensource.org/licenses/MIT" rel="ugc">
    <img src="https://img.shields.io/badge/license-MIT-red" alt="License: MIT">
  </a>
</p>

A light weight flutter package that provides beautiful floating text animations.

## Getting Started

Add this package in your project's dependencies.

```yaml
dependencies:
  floating_text: ^0.2.0
```

Import the package:

```dart
import 'package:floating_text/floating_text.dart'
```

Use Anywhere instead of `Text` Widget:

## Demo's

<table>
  <tr>
    <th>Demo 1</th>
    <th>Demo 2</th>
    <th>Demo 3</th>
  </tr>
  <tr>
    <td><img alt = 'floating_text down float animation' src = "https://raw.githubusercontent.com/pktintali/floating_text/main/example/screenshots/floating_down.gif" /></td>
    <td><img alt = 'animation with shadow' src = "https://raw.githubusercontent.com/pktintali/floating_text/main/example/screenshots/animation_with_shadow.gif" /></td>
    <td><img alt = 'linear animation' src = "https://raw.githubusercontent.com/pktintali/floating_text/main/example/screenshots/floating_linear.gif" /></td>
  </tr>
</table>
<table>
  <tr>
    <th>Demo 4</th>
    <th>Demo 5</th>
    <!-- <th>Demo 6</th> -->
  </tr>
  <tr>
    <td><img alt = 'animation on button' src = "https://raw.githubusercontent.com/pktintali/floating_text/main/example/screenshots/button_text.gif" /></td>
    <td><img alt = 'floating_text up float animation' src = "https://raw.githubusercontent.com/pktintali/floating_text/main/example/screenshots/floating_up.gif" /></td>
    <!-- <td><img alt = 'rtl support' src = "https://raw.githubusercontent.com/pktintali/floating_text/main/example/screenshots/rtl.gif" /></td> -->
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

<!-- ### RTL Support

```dart
FloatingText(
   text: 'WELCOME',
   repeat: true,
   isRTL: true,
   duration: Duration(milliseconds: 100),
 ),
``` -->

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
onAnimationComplete: () {
  //Do your stuff
},
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

### Full Example

```dart
FloatingText(
    text: 'Congratulations',
    repeat: true,
    repeatCount: 5,
    isRTL: false,
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
    onAnimationComplete: () {
      print('Animation Completed');
    },
  ),
```

## Parameters

- `text` (String) - text to display on screen
- `repeat` (Boolean) - by default `false`, set `true` if you want animation to repeat
- `repeatCount` (Integer) - Number of time animation should repeat. _repeat_ paramater must be `true` for it to work.
- `duration` (Duration) - duration of the animation. Default value 200 milliseconds
- `isRTL` (Boolean) - by default `false`, set `true` for RTL support
- `textStyle` (TextStyle) - text style for floating/animating part of text
- `floatingTextStyle` (TextStyle) - text style for not floating part of text
- `onAnimationComplete` (Function - void) - Called once the animation is complete.

> Tip: Experiment with different `textStyle` and non `floatingTextStyle` to get some new cool effects
