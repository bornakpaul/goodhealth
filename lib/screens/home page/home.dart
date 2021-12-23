import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodhealth/products/products.dart';
import 'package:goodhealth/screens/cart%20page/cart_controller.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //! Search Controller
  TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //! MediaQuery sizes
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    //! Search Bar
    final searchBar = TextFormField(
      autofocus: false,
      controller: _controller,
      onFieldSubmitted: (value) {},
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        hintText: "Search your item ...",
        hintStyle: TextStyle(
          fontFamily: "Overpass",
          fontSize: 18,
        ),
        border: InputBorder.none,
        prefixIcon: IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
      ),
      style: TextStyle(
        fontFamily: "Overpass",
        fontSize: 18,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Good Health"),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.transparent,
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                margin: EdgeInsets.only(left: 12.0, bottom: 8.0, right: 12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: searchBar,
              )),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: Product.products.length,
            itemBuilder: (context, index) {
              return ProductCard(
                index: index,
              );
            }),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final cartController = Get.put(CartController());

  final int index;
  ProductCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.only(
          right: 10.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              child: Image.asset(Product.products[index].imagePath),
            ),
            Wrap(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 15.0, bottom: 15.0, right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Product.products[index].title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      // Text(
                      //   Product.products[index].desc,
                      //   style: TextStyle(
                      //     fontSize: 16,
                      //   ),
                      // ),
                      Container(
                        width: 160,
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            style:
                                TextStyle(color: Colors.black, fontSize: 16.0),
                            text: Product.products[index].desc,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: 180,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Product.products[index].quantity.toString() +
                                  ' kg',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Rs ' + Product.products[index].price.toString(),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              cartController
                                  .addProduct(Product.products[index]);
                            },
                            child: Text(
                              'Add to cart',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              cartController
                                  .addProduct(Product.products[index]);
                            },
                            icon: Icon(CupertinoIcons.cart_badge_plus),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
