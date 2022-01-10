import 'package:flutter/material.dart';
import 'package:manga_reader/api/manga_api.dart';
import 'package:manga_reader/model/manga_model.dart';
import 'package:manga_reader/style/glass.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<MangaModel>? forecastObject;
  String mangaName = 'JoJo';
  String limit = '100';

  @override
  void initState() {
    super.initState();
    forecastObject = MangaApi().mangaconnectapi(mangaName, limit);
  }

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://i.pinimg.com/originals/95/3e/fa/953efa4f537e14c61deaaa0af17fd03a.png',
                )),
          ),
          child: GlassMorphism(
            start: 0.4,
            end: 0.2,
            blur: 0.7,
            child: Center(
              child: FutureBuilder<MangaModel>(
                builder: (context, snapshot) {
                  
                 
                  if (snapshot.hasData) {
                    return Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10),
                            itemBuilder: (context, index) {
                              OneAttributes qwe = snapshot
                                  .data!.mangaList![index].attributesList!;
                              List qwer = qwe.title!.values.toList();
                              
                              return Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  // Container(
                                  //   width: 200,
                                  //   child: Opacity(
                                  //     opacity: 0.8,
                                  //     child: Image.network(
                                  //       'https://www.teahub.io/photos/full/229-2298182_anime-spirited-away-and-chihiro-image-.jpg',
                                  //       fit: BoxFit.cover,
                                  //     ),
                                  //   ),
                                  // ),

                                  snapshot.hasData
                                      ? Container(
                                          child: Text(
                                            '${qwer[0]}',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        )
                                      : SizedBox(),
                                ],
                              );
                            },
                            itemCount: snapshot.data!.mangaList!.length,
                          ),
                          snapshot.hasData ? Container(
                            child: Text(
                              '${snapshot.data!.mangaList!.length}',
                              style: TextStyle(fontSize: 30),
                            ),
                          ) : Icon(Icons.circle_notifications)
                        ]);
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
                future: forecastObject,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
