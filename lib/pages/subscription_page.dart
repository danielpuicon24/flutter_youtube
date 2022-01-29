import 'package:flutter/material.dart';
import 'package:flutter_codigo4_youapp/ui/widgets/item_filter_widget.dart';
import 'package:flutter_codigo4_youapp/ui/widgets/item_list_video_widget.dart';
import 'package:flutter_codigo4_youapp/ui/widgets/item_slider_1_widget.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  @override
  _SubscriptionPageState createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {

  int indexFilter = 0;

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xff1b1b1b),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: _height * 0.12,
                // color: Colors.redAccent,
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          ItemSlider1Widget(),
                          ItemSlider1Widget(),
                          ItemSlider1Widget(),
                          ItemSlider1Widget(),
                          ItemSlider1Widget(),
                          ItemSlider1Widget(),
                          ItemSlider1Widget(),
                          SizedBox(
                            width: 70,
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: _height * 0.12,
                        width: 70,
                        color: Color(0xff1b1b1b),
                        alignment: Alignment.center,
                        child: Text(
                          "TODOS",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [

                    ItemFilterWidget(
                      title: "Todos",
                      selected: indexFilter == 0 ? true : false,
                      onPressed: (){
                        indexFilter = 0;
                        setState(() {

                        });
                      },
                    ),
                    ItemFilterWidget(
                      title: "Pódcast",
                      selected: indexFilter == 1 ? true : false,
                      onPressed: (){
                        indexFilter = 1;
                        setState(() {

                        });
                      },
                    ),
                    ItemFilterWidget(
                      title: "Zapatillas",
                      selected: indexFilter == 2 ? true : false,
                      onPressed: (){
                        indexFilter = 2;
                        setState(() {

                        });
                      },
                    ),
                    ItemFilterWidget(
                      title: "Música",
                      selected: indexFilter == 3 ? true : false,
                      onPressed: (){
                        indexFilter = 3;
                        setState(() {

                        });
                      },
                    ),
                    ItemFilterWidget(
                      title: "Cómics",
                      selected: indexFilter == 4 ? true : false,
                      onPressed: (){
                        indexFilter = 4;
                        setState(() {

                        });
                      },
                    ),

                  ],
                ),
              ),
              // ItemListVideoWidget(),
              // ItemListVideoWidget(),
              // ItemListVideoWidget(),
              // ItemListVideoWidget(),
              // ItemListVideoWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

