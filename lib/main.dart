import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  Application application = const Application();
  runApp(application);
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Vazir'),
      home: Scaffold(
        appBar: _getAppBar(),
        body: SafeArea(
          child: _getBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      elevation: 5,
      backgroundColor: Colors.black87,
      title: const Text(
        'RESUME',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 3,
        ),
      ),
      centerTitle: true,
    );
  }

  Widget _getBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
        ),
        _getProfile(),
        SizedBox(height: 20),
        _rowSocialMedia(),
        SizedBox(height: 30),
        _getSkills()
      ],
    );
  }

  Widget _getProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 15),
        CircleAvatar(
          backgroundImage: AssetImage("images/avatar.jpg"),
          radius: 90,
        ),
        SizedBox(height: 15),
        Text(
          'شایان فتحی',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        Text(
          'همیشه دنبال اینم که بیشتر کشف کنم و شور شوقم برای کشف کردن هیچوقت تموم نمیشه ',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.grey[700]),
        ),
      ],
    );
  }

  Widget _rowSocialMedia() {
    return Wrap(
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.instagram,
            color: Colors.black54,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.linkedin,
            color: Colors.black54,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.github,
            color: Colors.black54,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.twitter,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }

  Widget _getSkills() {
    const skills = ['flutter', 'android', 'java', 'kotlin', 'dart'];

    return Wrap(
      spacing: 20,
      children: [
        for (var skill in skills)
          Card(
            elevation: 7,
            shadowColor: Colors.black45,
            child: Column(
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  child: Image(
                    image: AssetImage('images/$skill.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(9),
                  child: Text(
                    '$skill',
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
