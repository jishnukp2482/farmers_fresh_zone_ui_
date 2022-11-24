import 'package:flutter/material.dart';

class blog extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              
              Container(
                height: 260,
                width: 540,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                image: DecorationImage(
                                  image: AssetImage( "assets/images/ourblogposts/bloodpressure.jpg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Control Blood pressure",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                           
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              
                              children: [
                                Text( "3 months ago",style: TextStyle(fontSize: 15),),
                                SizedBox(width: 60,),
                                IconButton(onPressed: (){}, icon: Icon(Icons.trending_flat,color: Colors.green,))
                                ],
                            ),
                          ],
                        ),
                      ),
                    ),
                     Card(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                image: DecorationImage(
                                  image: AssetImage(  "assets/images/ourblogposts/broccoli.jpg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                               "Five reasons Why Broccoli Shou",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                           
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              
                              children: [
                                Text(  "4 months ago",style: TextStyle(fontSize: 15),),
                                SizedBox(width: 60,),
                                IconButton(onPressed: (){}, icon: Icon(Icons.trending_flat,color: Colors.green,))
                                ],
                            ),
                          ],
                        ),
                      ),
                    ),
                     Card(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                image: DecorationImage(
                                  image: AssetImage(   "assets/images/ourblogposts/fro.jpg"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Five tips that prevent you fro",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                           
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              
                              children: [
                                Text(   "4 months ago",style: TextStyle(fontSize: 15),),
                                SizedBox(width: 60,),
                                IconButton(onPressed: (){}, icon: Icon(Icons.trending_flat,color: Colors.green,))
                                ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
