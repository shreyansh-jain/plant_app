import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding:
                              EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                          onPressed: () => {},
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: <Widget>[
                          IconCard(image: "assets/icons/sun.svg"),
                          IconCard(image: "assets/icons/sun.svg"),
                          IconCard(image: "assets/icons/sun.svg"),
                          IconCard(image: "assets/icons/sun.svg"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.8,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 60,
                          color: kPrimaryColor.withOpacity(0.29))
                    ],
                    image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img.png"))),
              )
            ],
          ),
        )
      ],
    );
  }
}

class IconCard extends StatelessWidget {
  const IconCard({
    Key key,
    this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
        padding: EdgeInsets.all(kDefaultPadding / 2),
        height: 62,
        width: 62,
        decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 15),
                  blurRadius: 22,
                  color: kPrimaryColor.withOpacity(0.22)),
              BoxShadow(
                  offset: Offset(-15, -15), blurRadius: 20, color: Colors.white)
            ]),
        child: SvgPicture.asset(image));
  }
}
