import 'package:flutter/material.dart';
import './second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MainPage'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                        heroTag: null,
                        onPressed: null,
                        child: Icon(Icons.person),
                      ),
                      FloatingActionButton(
                        heroTag: null,
                        onPressed: null,
                        child: Icon(Icons.contact_mail),
                      ),
                      FloatingActionButton(
                        heroTag: null,
                        onPressed: null,
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 450),
              child: Card(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RaisedButton(
                            onPressed: null,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.view_agenda),
                                  Text('View')
                                ],
                              ),
                            ),
                          ),
                          RaisedButton(
                            onPressed: null,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Icon(Icons.list), Text('List')],
                              ),
                            ),
                          ),
                          RaisedButton(
                            onPressed: null,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.markunread),
                                  Text('Readed')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RaisedButton(
                            onPressed: null,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.view_agenda),
                                  Text('View')
                                ],
                              ),
                            ),
                          ),
                          RaisedButton(
                            onPressed: null,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Icon(Icons.list), Text('List')],
                              ),
                            ),
                          ),
                          RaisedButton(
                            onPressed: null,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.markunread),
                                  Text('Readed')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RaisedButton(
                            onPressed: null,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.view_agenda),
                                  Text('View')
                                ],
                              ),
                            ),
                          ),
                          RaisedButton(
                            onPressed: null,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Icon(Icons.list), Text('List')],
                              ),
                            ),
                          ),
                          RaisedButton(
                            onPressed: null,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.markunread),
                                  Text('Readed')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RaisedButton(
                            onPressed: null,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.view_agenda),
                                  Text('View')
                                ],
                              ),
                            ),
                          ),
                          RaisedButton(
                            onPressed: null,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Icon(Icons.list), Text('List')],
                              ),
                            ),
                          ),
                          RaisedButton(
                            onPressed: null,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.markunread),
                                  Text('Readed')
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                elevation: 5,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SecondPage();
                  }));
                },
                child: Text('Sec Page'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
