import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram '),
      ),
      body: ListView.builder(
        itemCount: 5, // Number of posts
        itemBuilder: (context, index) {
          return PostCard(index: index);
        },
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final int index;

  PostCard({required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 157, 70, 26),
              radius: 20.0,
              // You can replace this with user profile image
              // For example, Image.network('url_to_user_profile_image')
            ),
            title: Text('Username $index'),
            subtitle: Text('Location $index'),
            trailing: Icon(Icons.more_vert),
          ),
          Image.network(
            'data:image/jpeg;base64,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', // Sample image URL
            height: 300.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.comment),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.bookmark_border),
                onPressed: () {},
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Liked by user1, user2, and 10 others',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Caption for the post. #flutter #instagramclone',
            ),
          ),
        ],
      ),
    );
  }
}
