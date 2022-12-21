
import 'package:flutter/material.dart';


class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;

  void Function()? onPressed;

  GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
        
          children: [
            // item image
            
               Container(
                height: 155,
                width: 180,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            
            SizedBox(height: 20,),
            // item name
            Text(
              itemName,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
SizedBox(height: 10,),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '\₹' + itemPrice,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                    ElevatedButton(
              onPressed: onPressed, child: Text("ADD"),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
