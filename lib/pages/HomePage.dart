import 'package:flutter/material.dart';
import 'package:wallpapers_app_ui/widgets/ImagesWidget.dart';
import 'package:wallpapers_app_ui/widgets/SearchWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu, size: 30),
                    Text(
                      "DP Wallpapers",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "favPage");
                      },
                      child: Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              SearchWidget(),
              TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                padding: EdgeInsets.symmetric(horizontal: 5),
                indicator: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 2)),
                ),
                tabs: [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Trending",
                  ),
                  Tab(
                    text: "Featured",
                  ),
                  Tab(
                    text: "Nature",
                  ),
                  Tab(
                    text: "Sky",
                  ),
                  Tab(
                    text: "See",
                  ),
                ],
              ),
              Flexible(
                flex: 1,
                child: TabBarView(
                  children: [
                   ImagesWidget(),
                   ImagesWidget(),
                   ImagesWidget(),
                   ImagesWidget(),
                   ImagesWidget(),
                   ImagesWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
