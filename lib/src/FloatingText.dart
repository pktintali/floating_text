import 'dart:async';
import 'package:flutter/material.dart';

class FloatingText extends StatefulWidget {
  /// Text for [Text] widget.
  final String text;

  ///Should [Animation] repeat
  ///
  /// boolean by default set to false
  final bool repeat;

  ///Speed for the [FloatingText] animation
  ///
  /// By Default Set to 3
  final int floatingSpeed;

  ///[TextStyle] for non [Text]
  final TextStyle textStyle;

  ///[TextStyle] for floating [Text]
  final TextStyle floatingTextStyle;

  ///[TextDirection] for text
  final TextDirection textDirection;

  ///key
  final Key key;
  FloatingText(
      {@required this.text,
      this.key,
      this.floatingSpeed = 3,
      this.textDirection = TextDirection.ltr,
      this.textStyle = const TextStyle(),
      this.floatingTextStyle = const TextStyle(color: Colors.red),
      this.repeat = false});
  @override
  _FloatingTextState createState() => _FloatingTextState();
}

class _FloatingTextState extends State<FloatingText> {
  List<String> _sList = [];
  List<Widget> _tList = [];
  String _pString;
  Timer _timer;
  double _temp = 0;
  int speed;
  void changePosition(Timer t) async {
    if ((widget.repeat && _temp != -1) || _temp < widget.text.length + 1) {
      _tList.clear();
      for (int i = 0; i < _sList.length; i++) {
        _tList.add(Text(
          _sList[i],
          style: i == _temp ? widget.floatingTextStyle : widget.textStyle,
        ));
      }
      if (_temp == widget.text.length + 1) {
        _temp = -1;
      }
      setState(() {
        _temp++;
      });
    }
  }

  void _splitString() {
    _sList.clear();
    for (int i = 0; i < widget.text.length; i++) {
      _sList.add(widget.text[i]);
    }
    _temp = 0;
  }

  void _setTimer() {
    _timer.cancel();
    _timer = Timer.periodic(
        Duration(milliseconds: (1000 / speed).round()), changePosition);
  }

  @override
  void initState() {
    _splitString();
    _temp = 0;
    _timer = Timer.periodic(
        Duration(milliseconds: (1000 / widget.floatingSpeed).round()),
        changePosition);
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.text != _pString) {
      _splitString();
      _pString = widget.text;
    }

    if (widget.floatingSpeed != speed) {
      speed = widget.floatingSpeed;
      _setTimer();
    }
    return Row(
      textDirection: widget.textDirection,
      key: widget.key,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: _tList.map((s) {
        return s;
      }).toList(),
    );
  }
}
