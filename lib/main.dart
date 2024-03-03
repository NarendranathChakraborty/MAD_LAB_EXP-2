import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/*
* Exp 2 : Common Widgets
* Task : To include icons, images, Text, TextStyle, Font, Image, Assets, Icons, Padding, and Center  in Flutter app
* */

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text('Netflix',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
                fontFamily: 'Roboto',
              ),
            ),
            centerTitle: true,
            leading: const Icon(
              Icons.menu,
              color: Colors.grey,
              size: 25,
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 40.0, width: 20.0,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Netflix_2015_logo.svg/2560px-Netflix_2015_logo.svg.png",
                      width: 200,
                      height: 100.0,
                    ),
                  ),
                  const Text('Movies',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 24,
                    ),
                  ),
                  // image card
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              children: [
                                Image.network(
                                  'https://i0.wp.com/www.smartprix.com/bytes/wp-content/uploads/2022/11/Web-series.jpg?fit=1041%2C635&ssl=1',
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(height: 10.0,),
                                const Center(
                                  child: Text("Netflix and Chill",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontFamily: 'Roboto',
                                    ),),
                                ),
                                const SizedBox(height: 10.0,),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
                          child: Image.network(
                            'https://www.thestatesman.com/wp-content/uploads/2020/01/B.jpg',
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        )
    );
  }
}