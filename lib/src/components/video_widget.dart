import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _thumbnail(),
          _simpleDetailInfo(),
        ],
      ),
    );
  }

  _thumbnail() {
    return Container(height: 250, color: Colors.grey.withOpacity(0.5));
  }

  _simpleDetailInfo() {
    return Container(
      padding: const EdgeInsets.only(left: 10 , bottom: 15),
      child: Row(children: [
        CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey.withOpacity(0.5),
            backgroundImage: Image.network(
                    "https://yt3.ggpht.com/ytc/AKedOLQagIEl2WOUacXZ8WlCPvApoIouP9sNGkMIDVdQ=s88-c-k-c0x00ffffff-no-rj")
                .image),
        SizedBox(width: 15,),
        Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Text("개남 유튜브 다시보기-개남 유튜브 다시보기-개남 유튜브 다시보기", maxLines: 2, )),
                    IconButton(onPressed: () {},
                        alignment: Alignment.topCenter,
                        icon: Icon(Icons.more_vert, size: 18))
                  ],
                ),
                Row(
                  children: [
                    Text("개발하는남자", style: TextStyle(
                      fontSize: 12,
                      color: Colors.black.withOpacity(0.8)
                    ),),
                    Text(" · "),
                    Text("조회수 1000회", style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.6)
                    ),),
                    Text(" · "),
                    Text("2021-12-27", style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.6)
                    ),)
                  ],
                )
              ],
            ))
      ]),
    );
  }
}
