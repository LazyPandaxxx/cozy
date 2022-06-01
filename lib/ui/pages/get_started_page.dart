import 'package:cozy/shared/theme.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget logo() {
      return Container(
        width: 50,
        height: 50,
        margin: const EdgeInsets.only(top: 50),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/logo.png',
            ),
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Text(
          'Find Cozy House\nto Stay and Happy',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text(
          'Stop membuang banyak waktu\npada tempat yang tidak habitable',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            height: 1.6,
          ),
        ),
      );
    }

    Widget exploreButton() {
      return Container(
        width: 210,
        height: 50,
        margin: const EdgeInsets.only(top: 40),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17),
            ),
          ),
          child: Text(
            'Explore Now',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/splash_image.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  logo(),
                  title(),
                  subtitle(),
                  exploreButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
