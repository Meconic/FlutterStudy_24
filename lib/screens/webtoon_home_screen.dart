import 'package:flutter/material.dart';
import 'package:untitled/models/webtoon_model.dart';
import 'package:untitled/service/api_service.dart';
import 'package:untitled/widgets/webtoon_widget.dart';

class WebToonHomeScreen extends StatelessWidget {
  WebToonHomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    print(webtoons);
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 1,
          backgroundColor: Colors.white,
          foregroundColor: Colors.green,
          title: Text(
            "오늘의 웹툰",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          )),
      body: FutureBuilder(
          future: webtoons,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Expanded(child: makeList(snapshot)),
                ],
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      // separated 사이에 widget을 넣을수 있다.
      // 리사이클러뷰 같은 존재
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data?.length ?? 0,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      itemBuilder: (context, index) {
        var webtoon = snapshot.data?[index];
        return Webtoon(
          title: webtoon?.title ?? '',
          thumb: webtoon?.thumb ?? '',
          id: webtoon?.id ?? '',
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        width: 40,
      ),
    );
  }
}
