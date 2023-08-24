import 'package:flutter/material.dart';
import 'package:interior_app_ui/screens/detail_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget _buildDesigner(String name, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Text(name),
        ],
      ),
    );
  }

  Widget _buildImage(String imagePath, double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Interior App",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 40),
                const Text(
                  "Top Designer",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      _buildDesigner("Jean-Luis", "https://images.unsplash.com/photo-1525879000488-bff3b1c387cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"),
                      _buildDesigner("Phillinpe", "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"),
                      _buildDesigner("Michael", "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"),
                      _buildDesigner("Lesly Juarez", "https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  "Popular Design",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailPage(),
                      ),
                    );
                  },
                  child: _buildImage("assets/images/image_1.png", double.infinity, 150),
                ),
                const SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        _buildImage("assets/images/image_2.png", (MediaQuery.of(context).size.width - 80) / 2, 150),
                        const SizedBox(height: 20),
                        _buildImage("assets/images/image_3.png", (MediaQuery.of(context).size.width - 80) / 2, 230),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: <Widget>[
                        _buildImage("assets/images/image_4.png", (MediaQuery.of(context).size.width - 80) / 2, 230),
                        const SizedBox(height: 20),
                        _buildImage("assets/images/image_5.png", (MediaQuery.of(context).size.width - 80) / 2, 150),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
