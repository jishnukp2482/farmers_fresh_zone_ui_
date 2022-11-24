import 'package:flutter/material.dart';

class bestsellingproducts extends StatelessWidget{
  final List <String> imagess=[
    "assets/images/bestsellingproducts/carrot.jpg",
    "assets/images/bestsellingproducts/saladverde.jpg",
    "assets/images/bestsellingproducts/broccoli.jpg",
    "assets/images/bestsellingproducts/banana.jpg",
  ];
  final List <String> title=[
    "carrot","Salad Verde","Broccoli Florets","Banana Nendran-semi ripe"];
  final List <String> price=["₹49","₹129","₹119","₹41"];  
  final List <String> weight=["0.50 Kg","1.00 Box","1.00 Box","1.00 Kg"];
  @override
  Widget build(BuildContext context) {
   return GridView.builder(
    itemCount: imagess.length,
    shrinkWrap: true,
    padding: EdgeInsets.all(10),
    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,

    ) , itemBuilder:(BuildContext context,int index){
      return Card(
        child: Container(
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),),
          child: Column(
          children: [
            Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                topRight: Radius.circular(10),),
                image: DecorationImage(image: AssetImage(imagess[index]),
                fit: BoxFit.fill),),
              ),
              SizedBox(height: 5,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                Padding(padding: EdgeInsets.only(left: 5),
                
                child: Text(title[index],style: TextStyle(fontWeight: FontWeight.bold),),),
                
                Padding(
                  padding: const EdgeInsets.only(left: 2,top: 10),
                  child: Text(price[index],style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 2),
                  child: Row(
                   
                    children: [
                      Text(weight[index],style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(width: 70,),
                      SizedBox(width: 70,
                     child: ElevatedButton(onPressed: (){}, child: Text("ADD"),style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.green)),))
                    ],
                  ),
                ),
              ],
              ),
            
          ],
          ),
          
        ),
      );
    });
  }

}