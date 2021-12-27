import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class YoutubeDetail extends StatelessWidget {
  const YoutubeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 250,
            color: Colors.grey.withOpacity(0.5),
          ),
          Expanded(
            child: _description(),
          )
        ],
      ),
    );
  }

  Widget get _line => Container(
        height: 1,
        color: Colors.black.withOpacity(0.1),
      );

  Widget _description() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _titleZone(),
          _line,
          _descriptionZone(),
          _bottomZone(),
          SizedBox(
            height: 20,
          ),
          _line,
          _ownerZone(),
        ],
      ),
    );
  }

  Widget _titleZone() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "개발하는 남자 유튜브 영상 다시보기",
            style: TextStyle(fontSize: 15),
          ),
          Row(
            children: [
              Text(
                "조회수 1000회",
                style: TextStyle(fontSize: 13, color: Colors.black.withOpacity(0.5)),
              ),
              Text(" · "),
              Text(
                "2021-12-27",
                style: TextStyle(fontSize: 13, color: Colors.black.withOpacity(0.5)),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _descriptionZone() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Text(
        "안녕하세요. 개발하는 남자 개남입니다",
        style: TextStyle(fontSize: 14),
      ),
    );
  }

  Widget _bottomZone() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buttonOne("like", "1000"),
        _buttonOne("dislike", "1000"),
        _buttonOne("share", "공유"),
        _buttonOne("save", "저장"),
      ],
    );
  }

  Widget _buttonOne(String iconPath, String text) {
    return Column(
      children: [
        SvgPicture.asset("assets/svg/icons/$iconPath.svg"),
        Text(text),
      ],
    );
  }

  Widget _ownerZone() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey.withOpacity(0.5),
              backgroundImage: Image.network(
                      "https://yt3.ggpht.com/ytc/AKedOLQagIEl2WOUacXZ8WlCPvApoIouP9sNGkMIDVdQ=s88-c-k-c0x00ffffff-no-rj")
                  .image),
          SizedBox(width: 15,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("개발하는남자", style: TextStyle(fontSize: 18)),
                Text(
                  "구독자 100000",
                  style: TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.6)),
                )
              ],
            ),
          ),
          GestureDetector(
            child: Text(
              "구독",
              style: TextStyle(color: Colors.red, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
