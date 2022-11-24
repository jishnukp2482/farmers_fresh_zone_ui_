import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:farmers_fresh_zone_ui_/bestsellingproducts.dart';
import 'package:farmers_fresh_zone_ui_/blog.dart';
import 'package:farmers_fresh_zone_ui_/customerreview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(MaterialApp(
    home: farmersui(),
    theme: ThemeData(primarySwatch: Colors.green),
    debugShowCheckedModeBanner: false,
  ));
}

class farmersui extends StatefulWidget {
  @override
  State<farmersui> createState() => _farmersuiState();
}

class _farmersuiState extends State<farmersui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            title: const Text(
              "FARMERS FRESH ZONE",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            actions: [
              const Padding(padding: EdgeInsets.all(10)),
              const Icon(Icons.location_on_outlined),
              const Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "Kochi",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    
                  )),
                  Icon(Icons.keyboard_arrow_down),
            ],
            bottom: AppBar(
              elevation: 0,
              title: Container(
                color: Colors.white,
                width: double.infinity,
                height: 40,
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search for Vegetables,fruits...",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        )),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
            [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 25,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                        child: Text(
                      "VEGETABLES",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    )),
                  ),
                  Container(
                    height: 25,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                        child: Text("FRUITS",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    height: 25,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                        child: Text("EXOTIC",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    height: 25,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                        child: Text("FRESH CUTS",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold))),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CarouselSlider(
                  items: [
                    Container(
                      width: double.infinity,
                      child: const Image(
                        image: AssetImage("assets/images/carrot.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: const Image(
                        image: AssetImage("assets/images/vegetables.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: const Image(
                        image: AssetImage("assets/images/veg2.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: const Image(
                        image: AssetImage("assets/images/veg3.webp"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: const Image(
                        image: AssetImage("assets/images/veg4.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: const Image(
                        image: AssetImage("assets/images/veg5.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 200,
                    enlargeCenterPage: false,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.easeIn,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 500),
                    viewportFraction: 1,
                  )),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey)),
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.timer,
                            color: Colors.black87,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("30 MINS POLICY"),
                        ],
                      ),
                      Column(
                        children: [
                          const Icon(
                            Icons.phone_iphone,
                            color: Colors.black87,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("TRACABILITY"),
                        ],
                      ),
                      Column(
                        children: [
                          const Icon(
                            Icons.home_work,
                            color: Colors.black87,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("LOCAL SURROUND"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    "Shope By Category",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 20,
              ),
              vegfruit(),
              SizedBox(
                height: 2,
              ),
              Divider(
                thickness: 8,
                color: Colors.grey.withOpacity(.2),
              ),
              Container(
                height: 250,
                width: double.infinity,
                child: Image(
                  image: AssetImage("assets/images/foodculture.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              Divider(
                thickness: 8,
                color: Colors.grey.withOpacity(.2),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Best Selling Products",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
              SizedBox(
                height: 10,
              ),
              bestsellingproducts(),
              SizedBox(
                height: 2,
              ),
              Container(
                width: double.infinity,
                child: Center(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "VIEW MORE",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              Divider(
                thickness: 8,
                color: Colors.grey.withOpacity(.2),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                 color: Colors.grey.withOpacity(.2),
                width: double.infinity,
                child: Row(
                  children: [
                    Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        Padding(
                          padding: EdgeInsets.only(top: 40),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "we are working towards",
                            style: TextStyle(
                                color: Color.fromARGB(
                                  255,
                                  132,
                                  101,
                                  90,
                                ),
                                fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "safe food - which are Nutri -",
                            style: TextStyle(
                                color: Color.fromARGB(255, 132, 101, 90),
                                fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Locked and hygenic as well",
                            style: TextStyle(
                                color: Color.fromARGB(255, 132, 101, 90),
                                fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                "READ MORE",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.play_circle,
                              color: Colors.green,
                            )
                          ],
                        ),
                        
                      ],
                    ),
                    SizedBox(width: 100,),
                    Image(image: AssetImage("assets/images/certified.png"),width: 150,),
                  ],
                ),
              ),
               SizedBox(
                height: 2,
              ),
               Divider(
                thickness: 8,
                color: Colors.grey.withOpacity(.2),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Our Blog Posts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
              blog(),
              SizedBox(height: 5,),
              Container(
                width: double.infinity,
                child: Center(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "VIEW MORE",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              Divider(thickness: 8,color: Colors.grey.withOpacity(.2),),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("What Our Customers Say?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 5,),
              customerreview(),
              SizedBox(height: 10,),
              Container(
                height: 150,
                width: double.infinity,
               
                  child: Column(
                    children: [
                      Center(child: Text("This Kochi-based-farm-to-fork online",)),
                      SizedBox(height: 5,),
                      Center(child: Text("marketplace is connecting farmers directly")),
                      SizedBox(height: 5,),
                      Center(child: Text("to customers")),
                    SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 10,
                            width: 90,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/images/newslogo/economictimes.png") ,
                                fit: BoxFit.fill),
                            ),
                          ),
                           Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/images/newslogo/yourstory.png") ,
                                fit: BoxFit.cover),
                            ),
                          ),
                           Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/images/newslogo/newindian.png") ,
                                fit: BoxFit.cover),
                            ),
                          ),
                           Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/images/newslogo/manoramanews.png") ,
                                fit: BoxFit.cover),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                Divider(thickness: 8,color: Colors.grey.withOpacity(.2),),
                Container(
                  padding: EdgeInsets.only(top: 20,),
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Get To Know Us",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Row(
                       
                        children: [
                          TextButton(onPressed: (){}, child: Text("About Us ",style: TextStyle(color: Colors.grey),)),
                          Text("|",style:TextStyle(color: Colors.grey),),
                          TextButton(onPressed: (){}, child: Text("Our Farmers ",style: TextStyle(color: Colors.grey),)),
                         Text("|",style:TextStyle(color: Colors.grey),),
                          TextButton(onPressed: (){}, child: Text("Blog",style: TextStyle(color: Colors.grey),)),
                        ],
                      ),

                      SizedBox(height: 20,),
                        Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Useful Links",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                       SizedBox(height: 10,),
                      Row(
                       
                        children: [
                          TextButton(onPressed: (){}, child: Text("Privacy Policy ",style: TextStyle(color: Colors.grey),)),
                          Text("|",style:TextStyle(color: Colors.grey),),
                          TextButton(onPressed: (){}, child: Text("Return & Refund Policy ",style: TextStyle(color: Colors.grey),)),
                         Text("|",style:TextStyle(color: Colors.grey),),
                          TextButton(onPressed: (){}, child: Text("Terms & Condition",style: TextStyle(color: Colors.grey),)),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:[
                          Icon(FontAwesomeIcons.twitter,color: Colors.grey,),
                            Icon(FontAwesomeIcons.youtube,color: Colors.grey,),
                              Icon(FontAwesomeIcons.facebookF,color: Colors.grey,),
                                Icon(FontAwesomeIcons.instagram,color: Colors.grey,),
                        ]
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Copyright @ 2021 Farmers Fresh Zone.",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                      SizedBox(height: 2,),
                      Text("All Rights Reserved. V 2.40.21",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)
                    ],
                  ),

                )

              



             
            ],
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
        const BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
        const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart), label: "CART"),
        const BottomNavigationBarItem(
            icon: Icon(Icons.person), label: "ACCOUNT"),
      ]),
    );
  }
}

class vegfruit extends StatelessWidget {
  List<String> images = [
    'assets/images/veg1.jpg',
    'assets/images/fruits.jpg',
    'assets/images/exotic.jpg',
    "assets/images/vegcuts.jpg",
    "assets/images/nutrition.jpg",
    "assets/images/packedflavours.jpg",
    "assets/images/vegsalad.jpg"
  ];
  List<String> titles = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts ",
    "Nutrition Chargers",
    "Packed Flavours",
    "Gourmet Salads",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Container(
                  height: 120,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    image: DecorationImage(
                        image: AssetImage(images[index]), fit: BoxFit.fill),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(titles[index])
              ],
            ),
          ),
        );
      },
    );
  }
}
