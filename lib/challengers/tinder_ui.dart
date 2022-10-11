import 'package:flutter/material.dart';

class TinderUI extends StatelessWidget {
  const TinderUI({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios_rounded, size: 25),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(233, 73, 118, 1),
            Color.fromRGBO(238, 116, 98, 1)
          ], begin: Alignment.bottomLeft, end: Alignment.topRight),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: SizedBox(
                width: size.width,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Image(
                      filterQuality: FilterQuality.high,
                      height: size.height * .05,
                      color: Colors.white,
                      image: const AssetImage(
                        'assets/images/tinder_logo.png',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: SizedBox(
                width: size.width,
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        '''By Tapping Create Account or Sign In, you agree to our Terms. Learn how we process your data in our   Privacy Policy and Cookies Police.''',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat_Black',
                            fontWeight: FontWeight.w200),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextFildComponent(text: 'Sing in with aplle'),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextFildComponent(text: 'Sing in with facebook'),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextFildComponent(text: 'Sing in with phone number'),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text('Trouble Signing In?'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextFildComponent extends StatelessWidget {
  const CustomTextFildComponent({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width > 400 ? 400 : size.width * .90,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Center(
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
