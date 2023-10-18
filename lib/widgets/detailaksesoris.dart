import 'package:fashion/data/fashion.dart';
import 'package:fashion/data/aksesoris.dart';
import 'package:fashion/pages/fashion/detail_ak.dart';
import 'package:fashion/widgets/big_text.dart';
import 'package:flutter/material.dart';

class DetailAK extends StatefulWidget {
  const DetailAK({super.key, required Category categories});

  @override
  State<DetailAK> createState() => _MainFashionPage();
}

class _MainFashionPage extends State<DetailAK> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //header
        Container(
            child: Container(
          margin: EdgeInsets.only(top: 45, bottom: 15),
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Kategori : "),
                ],
              )
            ],
          ),
        )),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: ListAksesoris.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Detail_AK(ListAksesoris: ListAksesoris[index]),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white38,
                        ),
                        child: Image.asset(
                          ListAksesoris[index].image,
                          width:
                              120, // Adjust the width to match the container's width
                          height:
                              120, // Adjust the height to match the container's height
                          fit: BoxFit.cover, // Image fits the container
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Colors.brown, // Warna latar belakang box
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), // Warna bayangan
                                spreadRadius: 2, // Lebar bayangan
                                blurRadius: 5, // Tingkat kabur bayangan
                                offset: Offset(0, 3), // Posisi bayangan (x, y)
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  ListAksesoris[index].name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white, // Warna teks
                                  ),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
        //body
      ],
    ));
  }
}
