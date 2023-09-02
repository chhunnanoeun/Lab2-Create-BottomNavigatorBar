import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ReelsPage(),
    );
  }
}

class ReelsPage extends StatefulWidget {
  @override
  _ReelsPageState createState() => _ReelsPageState();
}

class _ReelsPageState extends State<ReelsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reels Page'),
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with the actual number of reels.
        itemBuilder: (context, index) {
          return ReelCard(
            username: 'User ${index + 1}',
            videoUrl: 'https://example.com/reel${index + 1}.mp4',
          );
        },
      ),
    );
  }
}

class ReelCard extends StatelessWidget {
  final String username;
  final String videoUrl;

  ReelCard({required this.username, required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 16 / 9, // Adjust the aspect ratio as needed.
          child: VideoPlayerWidget(videoUrl: videoUrl),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            username,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;

  VideoPlayerWidget({required this.videoUrl});

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  // You can use a video player library or widget here to play the video.

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Text(
          'Video Player Placeholder', // Replace with actual video player widget.
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
