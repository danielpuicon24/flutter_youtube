import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo4_youapp/models/video_model.dart';
import 'package:flutter_codigo4_youapp/services/api_service.dart';
import 'package:flutter_codigo4_youapp/ui/widgets/item_filter_widget.dart';
import 'package:flutter_codigo4_youapp/ui/widgets/item_list_video_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  APIService _apiService = APIService();
  int indexFilter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff1B1B1B),
      body: FutureBuilder(
        future: _apiService.getVideoList(),
        builder: (BuildContext context, AsyncSnapshot snap) {

          if (snap.hasData) {
            List<VideoModel> videoList = snap.data;
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xff2E2E2E),
                                elevation: 0,
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 12.0)),
                            onPressed: () {},
                            icon: Icon(
                              Icons.explore_outlined,
                              size: 26,
                            ),
                            label: Text(
                              "Explorar",
                            ),
                          ),
                          SizedBox(
                            height: 34,
                            child: VerticalDivider(
                              color: Colors.white24,
                              thickness: 0.9,
                              width: 28,
                            ),
                          ),
                          ItemFilterWidget(
                            title: "Todos",
                            selected: indexFilter == 0 ? true : false,
                            onPressed: () {
                              indexFilter = 0;
                              setState(() {});
                            },
                          ),
                          ItemFilterWidget(
                            title: "Pódcast",
                            selected: indexFilter == 1 ? true : false,
                            onPressed: () {
                              indexFilter = 1;
                              setState(() {});
                            },
                          ),
                          ItemFilterWidget(
                            title: "Zapatillas",
                            selected: indexFilter == 2 ? true : false,
                            onPressed: () {
                              indexFilter = 2;
                              setState(() {});
                            },
                          ),
                          ItemFilterWidget(
                            title: "Música",
                            selected: indexFilter == 3 ? true : false,
                            onPressed: () {
                              indexFilter = 3;
                              setState(() {});
                            },
                          ),
                          ItemFilterWidget(
                            title: "Cómics",
                            selected: indexFilter == 4 ? true : false,
                            onPressed: () {
                              indexFilter = 4;
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: videoList.length,
                    itemBuilder: (context, index){

                      return ItemListVideoWidget(
                        image: videoList[index].snippet.thumbnails.high.url,
                        title: videoList[index].snippet.title,
                        channelName: videoList[index].snippet.channelTitle,
                        channelId: videoList[index].snippet.channelId,
                      );
                    },
                  ),

                ],
              ),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
