import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inexsoftproject/models/repo.dart';
import 'package:provider/provider.dart';


import '../Itemtiles/grocery.dart';
import '../models/cartmodel.dart';
import 'cart.dart';


class MeatPage extends StatefulWidget {
  const MeatPage({super.key});

  @override
  State<MeatPage> createState() => _MeatPageState();
}

class _MeatPageState extends State<MeatPage> {
 List<dynamic>? meatListSearch = [];
  final FocusNode _textFocusNode = FocusNode();
  TextEditingController? _textEditingController = TextEditingController();
  @override
  void dispose() {
    _textFocusNode.dispose();
    _textEditingController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CartPage();
            },
          ),
        ),
        child: const Icon(Icons.shopping_bag),
      ),
      appBar: AppBar(automaticallyImplyLeading: false,
          backgroundColor: Colors.blue.shade300,toolbarHeight: 200,
          title: Center( 
            child: Column( 
              children: [  Text(
              "Fresh Meat",textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                //fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Text(
              "For your lovely home ",textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                //fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
              SizedBox(height: 20),
                Container(height: 50, width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextField(
                    controller: _textEditingController,
                    focusNode: _textFocusNode,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Search here',
                        contentPadding: EdgeInsets.all(8)),
                    onChanged: (value) {
                      setState(() {
                        meatListSearch = listmeatItems
                            .where((item) => item[0]
                                .toLowerCase()
                                .contains(_textEditingController!.text.toLowerCase()))
                            .toList();
                      });
                    },
                  ),
                ),
              ],
            ),
          )),
      body: _textEditingController!.text.isNotEmpty &&
              meatListSearch!.length == 0
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search_off,
                        size: 160,
                      ),
                    ),
                     Center(
                        child: Text(
                          "Sorry for your inconvience we don't have the item as of now",textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w400,),
                        ),
                      ),
                  ],
                ),
              ),
            )
          : Consumer<CartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                  padding: const EdgeInsets.all(12),
                  scrollDirection: Axis.vertical,
                  itemCount: _textEditingController!.text.isNotEmpty
                      ? meatListSearch!.length
                      : value.meatItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.5,
                  ),
                  itemBuilder: (context, index) {
                    return GroceryItemTile(
                        itemName: _textEditingController!.text.isNotEmpty
                            ? meatListSearch![index][0]
                            : value.meatItems[index][0],
                        itemPrice: _textEditingController!.text.isNotEmpty
                            ? meatListSearch![index][1]
                            : value.meatItems[index][1],
                        imagePath: _textEditingController!.text.isNotEmpty
                            ? meatListSearch![index][2]
                            : value.meatItems[index][2],
                        onPressed: () {
                          Provider.of<CartModel>(context, listen: false)
                              .addmeatItemToCart(index);
                          final snackBar = SnackBar(duration: Duration(seconds: 1),
                            content: Text(
                                '${value.meatItems[index][0]} is added to cart'),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        });
                  },
                );
              },
            ),
    );
  }
}
