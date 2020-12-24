import 'package:flutter/material.dart';

class Asw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      backgroundColor: Colors.cyan,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xfffe5788), Color(0xfff56d5d)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),

                          // image: DecorationImage(
                          //   image: NetworkImage(
                          //       "https://1.bp.blogspot.com/-qjCfEiOvddA/XSkDT_kTQDI/AAAAAAAAApQ/KCelQyBymTsR7zgbI_fZEOPXv7J5vOKqgCLcBGAs/s640/04-Toaru%2BKagaku.jpg"),
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4)),
                        image: DecorationImage(
                            image: AssetImage('assets/img/tutor1.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          20 + MediaQuery.of(context).size.height * 0.35,
                          20,
                          20),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Toaru Kagaku No Accelerator ',
                              style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 25,
                              ),
                              maxLines: 25,
                              textAlign: TextAlign.center,
                            ),
                            Text('Studio : J.C.Staff, A.C.G.T.'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.settings,
                                      color: Colors.grey,
                                    ),
                                    Text('About'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.search,
                                      color: Colors.grey,
                                    ),
                                    Text('Find'),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: null,
            child: Text('Watch'),
          )
        ],
      ),
    );
  }
}
