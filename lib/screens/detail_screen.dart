import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          _buildImageBackground(size, context),
          _buildContent(size),
        ],
      ),
    );
  }

  Widget _buildImageBackground(Size size, BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/image_detail.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(Size size) {
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.45),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildSectionHeader(),
            const SizedBox(height: 20),
            _buildAuthorInfo(),
            const SizedBox(height: 20),
            _buildTags(),
            const SizedBox(height: 20),
            _buildDescription(),
            const SizedBox(height: 20),
            _buildGallery(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader() {
    return Align(
      child: Container(
        width: 150,
        height: 7,
        decoration: BoxDecoration(
          color: Colors.red[50],
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _buildAuthorInfo() {
    return Row(
      children: <Widget>[
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                "https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 20),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Jean-Luis",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 3),
            Text(
              "Interior Design",
              style: TextStyle(fontSize: 13),
            )
          ],
        )
      ],
    );
  }

  Widget _buildTags() {
    return Row(
      children: <Widget>[
        _buildTag("Interior"),
        const SizedBox(width: 20),
        _buildTag("40m2"),
        const SizedBox(width: 20),
        _buildTag("Ideas"),
      ],
    );
  }

  Widget _buildTag(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Text(text),
      ),
    );
  }

  Widget _buildDescription() {
    return const Text(
      "A modern take on a classic design. This sofa boasts a dynamic pattern and soft color tones, which create a contemporary interpretation of classical decor. The multi-layered sponge technology used in the seating structure provides maximum comfort, while the velvet fabric adds a stylish and warm effect to any space. The ergonomic design and geometric patterns of the sofa make it an eye-catching centerpiece.The sofa is made to last with its metal-supported wooden construction, ensuring long-term use. The gold foot design adds a unique touch of elegance to the sofa, making it a must-have in any modern living space.",
      style: TextStyle(height: 1.6),
      textAlign: TextAlign.justify,
    );
  }

  Widget _buildGallery() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          "Gallery",
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              _buildImageItem("assets/images/image_2.png"),
              _buildImageItem("assets/images/image_3.png"),
              _buildImageItem("assets/images/image_4.png"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildImageItem(String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
