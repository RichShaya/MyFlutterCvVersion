import 'package:flutter/material.dart';

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
      elevation: 0,
      backgroundColor: Colors.deepPurple,
      title: const Text('شایان فتحی'),
      centerTitle: true,
    );
  }

  Widget _getBody() {
    return Column(
      children: [_getProfile()],
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
          'من شایان فتحیم یه آدم فضایی',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
        ),
        SizedBox(height: 20),
        Text(
          'همیشه دنبال اینم که بیشتر کشف کنم و شور شوقم برای کشف کردن هیچوقت تموم نمیشه ',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.grey[700]),
        ),
      ],
    );
  }
}
