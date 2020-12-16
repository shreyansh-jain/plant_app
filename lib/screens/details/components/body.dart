import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/images_and_icons_card.dart';
import 'package:plant_app/screens/details/components/title_and_card.dart';
import 'package:plant_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImagesAndIconsCard(size: size),
          TitleAndPrice(title: "Angelina", price: 440, country: "India"),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                  width: size.width / 2,
                  height: 84,
                  child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(20))),
                      color: kPrimaryColor,
                      onPressed: () {},
                      child: Text(
                        "Buy Now",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ))),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Description"),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
