import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:e_shop_pingolearn/ProductsModel.dart';

class Product extends StatefulWidget {
  const Product({super.key});
  static String id = 'Product';

  @override
  State<Product> createState() => _ProductState();
}

const int white = 0xFFF5F9FD;
const int blue = 0xFF0C54BE;
const int grey = 0x00CED3DC; //0x00CED3DC
const int navyBlue = 0xFF303F60;

class _ProductState extends State<Product> {
  Future<ProductsModel> getProductsApi() async {
    final response =
        await http.get(Uri.parse('https://dummyjson.com/products'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return ProductsModel.fromJson(data);
    } else {
      return ProductsModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(grey),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: FutureBuilder<ProductsModel>(
                    future: getProductsApi(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                            itemCount: snapshot.data!.products!.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height * .3,
                                    width:
                                        MediaQuery.of(context).size.height * .1,
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: snapshot.data!
                                            .products![index].images!.length,
                                        itemBuilder: (context, position) {
                                          return Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .25,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .5,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(snapshot
                                                        .data!
                                                        .products![index]
                                                        .images![position]))),
                                          );
                                        }),
                                  )
                                ],
                              );
                            });
                      } else {
                        return Text('Loading');
                      }
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
