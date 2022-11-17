import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
            title: const Text("FARMERS FRESH ZONE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            actions: [
              const Padding(padding: EdgeInsets.all(10)),
              const Icon(Icons.location_on_outlined),
              const Padding(padding: EdgeInsets.all(10),
             child: Center(
                child: Text("Kochi",style: TextStyle(fontWeight: FontWeight.bold),),)
              ),
              
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
                      prefixIcon: Icon(Icons.search,color: Colors.grey,)
                    ),
                  ),
                ),
              ),
            ),
            
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
             const SizedBox(height: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                 
                 
                  height: 25,width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:Colors.green
                    ),
                    borderRadius: BorderRadius.circular(20),
                    
                  ),
                  child: const Center(child: Text("VEGETABLES",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)),
                ),
                Container(
                 
                 
                  height: 25,width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:Colors.green
                    ),
                    borderRadius: BorderRadius.circular(20),
                    
                  ),
                  child: const Center(child: Text("FRUITS",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold))),
                ),
                Container(
                 
                 
                  height: 25,width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:Colors.green
                    ),
                    borderRadius: BorderRadius.circular(20),
                    
                  ),
                  child: const Center(child: Text("EXOTIC",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold))),
                ),
                Container(
                 
                 
                  height: 25,width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    
                  ),
                  child: const Center(child: Text("FRESH CUTS",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold))),
                ),
              
              ],
             ),
            const SizedBox(height: 10,),
            CarouselSlider(
              items:[
                Container(
                 width:double.infinity,
                  child: const Image(image: AssetImage("assets/images/carrot.png"),
                  fit: BoxFit.fill,), 
                ),
                Container(
              width:double.infinity,
                  child: const Image(image: AssetImage("assets/images/vegetables.jpg"),
                  fit: BoxFit.fill,), 
                ),
                 Container(
              width:double.infinity,
                  child: const Image(image: AssetImage("assets/images/veg2.jpg"),
                  fit: BoxFit.fill,), 
                ),
                  Container(
              width:double.infinity,
                  child: const Image(image: AssetImage("assets/images/veg3.webp"),
                  fit: BoxFit.fill,), 
                ),
                 Container(
              width:double.infinity,
                  child: const Image(image: AssetImage("assets/images/veg4.jpg"),
                  fit: BoxFit.fill,), 
                ),
                Container(
              width:double.infinity,
                  child: const Image(image: AssetImage("assets/images/veg5.jpg"),
                  fit: BoxFit.fill,), 
                ),
                             
              ] , options: CarouselOptions(
                height: 200,
                enlargeCenterPage: false,
                autoPlay: true,aspectRatio: 16/9,
                autoPlayCurve: Curves.easeIn,
                autoPlayAnimationDuration: const Duration(milliseconds: 500),
                viewportFraction: 1,
              )),
              const SizedBox(
                height: 20, ),
                Padding(padding: const EdgeInsets.only(right: 20,left: 20),
                child: Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.grey)
                ),
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Icon(Icons.timer,color: Colors.black87,),
                        const SizedBox(height: 10,),
                        const Text("30 MINS POLICY"),
                      ],
                    ),
                     Column(
                      children: [
                        const Icon(Icons.phone_iphone,color: Colors.black87,),
                        const SizedBox(height: 10,),
                        const Text("TRACABILITY"),
                      ],
                    ),
                     Column(
                      children: [
                        const Icon(Icons.home_work,color: Colors.black87,),
                        const SizedBox(height: 10,),
                        const Text("LOCAL SURROUND"),
                      ],
                    ),
                   
                  ],

                ),
                ),),
                const Padding(padding: EdgeInsets.only(top: 20,left: 10),
               child:  Text("Shope By Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
               const SizedBox(height: 20,),
               vegfruit(),

            ],
          ))
        ],
        
      ),
    bottomNavigationBar: BottomNavigationBar(
     
        
        items: [
        const BottomNavigationBarItem(icon: Icon(Icons.home),label: "HOME"),
        const BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "CART"),
        const BottomNavigationBarItem(icon: Icon(Icons.person),label: "ACCOUNT"),
      ]),
    );
  }
}
class vegfruit extends StatelessWidget{
  List <String> images=[
    'assets/images/veg1.jpg',
    'assets/images/fruits.jpg',
    'assets/images/exotic.jpg',
    "assets/images/vegcuts.jpg",
    "assets/images/nutrition.jpg",
    "assets/images/packedflavours.jpg",
    "assets/images/vegsalad.jpg"
    
  ];
  List <String> titles=[
    "Vegetables","Fruits","Exotic","Fresh Cuts ","Nutrition Chargers","Packed Flavours","Gourmet Salads",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
      mainAxisSpacing: 5,crossAxisSpacing: 5), 
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index) { 
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/9,
              width: MediaQuery.of(context).size.width*.3,
              decoration: BoxDecoration(
                boxShadow: [const BoxShadow(
                  color: Colors.black87,
                  blurRadius: 15,

                ),],
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage(images[index]),
                fit: BoxFit.fill),
              ),
            ),
            const SizedBox(height: 5,),
            Text(titles[index]),
          ],

        );
       },
    );
  }

}