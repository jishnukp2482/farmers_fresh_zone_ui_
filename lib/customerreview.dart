import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class customerreview extends StatelessWidget {
  final List<Map> review = [
    {
      "id": 1,
      "title": "Prince P I",
      "image":"assets/images/customerreview/person1.jpg",
      "subtitle": "Online digital marketing business",
      "review":
          "As concerned parents. we wanted our kids to eat pesticide-free & healthy food and that's how we came across Farmers Fresh Zone. Their fresh products & prompt delivery is the reason we have been a part of the Farmers Fresh Zone family for almost three years now. Farmers Fresh Zone is the best solution to countless concerned parents like us!"
    },
    {
      "id": 2,
      "title": "Neethu Vipin",
      "image":"assets/images/customerreview/person2.jpg",
      "subtitle": "Clerk,Navel base,Kochi",
      "review":
          "I tried Farmers Fresh Zone's products for the first time when I was expecting a child. Finding safe, chemical-free products in the city is difficult. But thanks to Farmers Fresh Zone, I was able to feed myself & my baby fruits and vegetables that are fresh, healthy & 100% Safe-to-eat. FFZ has prompt delivery, fresh & top quality products, my family & I are thoroughly impressed by their service!",
    },
    {
      "id": 3,
      "title": "Rinish K N",
      "image":"assets/images/customerreview/person3.jpg",
      "subtitle": "CTO,RapidValue",
      "review":
          "I was extremely pleased after seeing the initiative by Farmers Fresh Zone to connect the Farmer-Supplier-Customer ecosystem. One thing that sets FFZ apart from the rest is definitely the fresh taste of their products. I also had a chance to visit their farm, it was a great experience to take a look at the beautiful farms!",
    },
    {
      "id": 4,
      
      "title": "Hrishikesh Nair",
      "image":"assets/images/customerreview/person4.jpg",
      "subtitle": "CEO,Infopark",
      "review":
          "I am a regular customer of Farmers Fresh Zone & needless to say, I am extremely satisfied with their service & service quality! The deliveries are quick, products are fresh & I save time and effort by ordering online. The best part is, I get all of this at a really reasonable price!",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: review.length,
        itemBuilder: (BuildContext context, int item, int count) {
          var reviews = review.firstWhere((element) => element["id"] == item);
          
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 100,
              child: Card(
                
                child: Container(
                  height: 100,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(reviews['title'],style: TextStyle(  color: Colors.green),),
                        subtitle: Text(reviews['subtitle']),
                        leading: CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage(reviews["image"]),
                        ),
                        trailing: Icon(Icons.format_quote_rounded,color: Colors.grey,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Expanded(child: Text(reviews["review"],)),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 1,
          autoPlayAnimationDuration: Duration(milliseconds: 200),
          enlargeCenterPage: false,
        ));
  }
}
