import 'package:flutter/material.dart';

class ItemSlider1Widget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double _height = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.only(right: 18.0),
      constraints: BoxConstraints(
        maxWidth: _height * 0.08,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: _height * 0.04,
            backgroundImage: NetworkImage(
                "https://yt3.ggpht.com/ytc/AKedOLTzm4MXu8dttlPAC3LyaLktWVdZ4MBW5c21vDrWeNU=s900-c-k-c0x00ffffff-no-rj"),
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            "Flutter Perú sadsd asdsadsd",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 11.0,
              color: Colors.white54,
            ),
          )
        ],
      ),
    );
  }
}
