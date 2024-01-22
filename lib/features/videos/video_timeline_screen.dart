import 'package:flutter/material.dart';

class VideoTimelineScreen extends StatefulWidget {
  const VideoTimelineScreen({super.key});

  @override
  State<VideoTimelineScreen> createState() => _VideoTimelineScreenState();
}

class _VideoTimelineScreenState extends State<VideoTimelineScreen> {
  int _itemCount = 4;

  List<Color> colors = [
    Colors.purple,
    Colors.yellow,
    Colors.blue,
    Colors.green,
  ];

  void _onPageChanged(int page) {
    if (page == _itemCount - 1) {
      _itemCount = _itemCount + 4;
      colors.addAll(
        [
          Colors.purple,
          Colors.yellow,
          Colors.blue,
          Colors.green,
        ],
      );
      //Builder 새로고침
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      //PageView 성능을 위해 Builder로 -> 나중에 API 불러올때 고려.
      scrollDirection: Axis.vertical,
      itemCount: _itemCount,
      onPageChanged: _onPageChanged,
      itemBuilder: (context, index) => Container(
        color: colors[index],
        child: Center(
          child: Text(
            'Screen $index',
          ),
        ),
      ),
    );
  }
}
