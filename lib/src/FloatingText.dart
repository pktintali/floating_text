import 'dart:async';
import 'package:flutter/material.dart';

class FloatingText extends StatefulWidget {
  /// Text for [Text] widget.
  final String text;

  ///Should [Animation] repeat
  ///
  /// boolean by default set to false
  final bool repeat;

  ///Animation speed for the [FloatingText]
  ///
  /// By Default Set to 200 milliseconds
  final Duration duration;

  ///[TextStyle] for non floating [Text]
  final TextStyle textStyle;

  ///[TextStyle] for floating [Text]
  final TextStyle floatingTextStyle;

  ///Enable RTL support
  ///
  ///boolean by default set to false
  final bool isRTL;

  ///key
  final Key key;
  FloatingText(
      {@required this.text,
      this.key,
      this.duration = const Duration(milliseconds: 200),
      this.isRTL = false,
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
  Duration dur;
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
    String s =
        widget.isRTL ? widget.text.split('').reversed.join() : widget.text;
    for (int i = 0; i < widget.text.length; i++) {
      _sList.add(s[i]);
    }
    _temp = 0;
  }

  void _setTimer() {
    _timer.cancel();
    _timer = Timer.periodic(dur, changePosition);
  }

  @override
  void initState() {
    _splitString();
    _temp = 0;
    _timer = Timer.periodic(widget.duration, changePosition);
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

    if (widget.duration != dur) {
      dur = widget.duration;
      _setTimer();
    }
    return Row(
      textDirection: widget.isRTL ? TextDirection.rtl : TextDirection.ltr,
      key: widget.key,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: _tList.map((s) {
        return s;
      }).toList(),
    );
  }
}
