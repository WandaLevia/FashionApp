import 'package:fashion/data/tas.dart';
import 'package:fashion/widgets/big_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Detail_Tas extends StatelessWidget {
  const Detail_Tas({Key? key, required this.ListTas});
  final Tas ListTas;

  @override
  Widget build(BuildContext context) {
    Color.fromARGB(99, 255, 255, 255);
    return Scaffold(
      body: Stack(
        children: [
          //backgorund image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(ListTas.image),
              )),
            ),
          ),
          //icon widget

          //penjelasan
          Positioned(
              left: 0,
              right: 0,
              top: 332,
              bottom: 0,
              child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ListTas.name,
                        style: TextStyle(
                          fontSize:
                              20.0, // Ganti dengan ukuran font yang Anda inginkan
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ReadMoreText(
                        ListTas.penjelasan,
                        trimLines:
                            4, // Sesuaikan dengan jumlah baris yang ingin ditampilkan sebelum "Read More"
                        colorClickableText: Colors.black,
                        textAlign:
                            TextAlign.justify, // Set the text alignment here
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Show more',
                        trimExpandedText: 'Show less',
                        moreStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )))
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
        decoration: BoxDecoration(
            color: const Color.fromARGB(77, 235, 224, 224),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20 * 2),
                topRight: Radius.circular(20 * 2))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 20, bottom: 18, left: 20, right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10 / 2,
                  ),
                  BigText(text: "0"),
                  SizedBox(
                    width: 10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(top: 20, bottom: 18, left: 20, right: 20),
              child: BigText(
                text: "\$100 Add to cart",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.brown,
              ),
            )
          ],
        ),
      ),
    );
  }
}
