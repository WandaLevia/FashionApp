import 'package:dots_indicator/dots_indicator.dart';
import 'package:fashion/data/discount.dart';
import 'package:fashion/data/fashion.dart';
import 'package:fashion/detailpakaianpria.dart';
import 'package:fashion/widgets/big_text.dart';
import 'package:fashion/widgets/detailaksesoris.dart';
import 'package:fashion/widgets/detailpakaiananak.dart';
import 'package:fashion/widgets/detailpakaianwanita.dart';
import 'package:fashion/widgets/detailsepatu.dart';
import 'package:fashion/widgets/detailtas.dart';
import 'package:fashion/widgets/iconandtextwidget.dart';
import 'package:fashion/widgets/small_text.dart';
import 'package:flutter/material.dart';

class FashionPageBody extends StatefulWidget {
  const FashionPageBody({Key? key}) : super(key: key);
  @override
  _FashionPageBody createState() => _FashionPageBody();
}

class _FashionPageBody extends State<FashionPageBody> {
  PageController pageController = PageController(viewportFraction: 0.9);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = 220;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //color: const Color.fromARGB(255, 255, 255, 255),
          height: 320,
          child: PageView.builder(
              controller: pageController,
              itemCount: 3,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        new DotsIndicator(
          dotsCount: 3,
          position: _currPageValue.toInt(),
          decorator: DotsDecorator(
            activeColor: Colors.brown,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        //Category
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(
            left: 30,
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
            BigText(
              text: "Kategori",
            ),
          ]),
        ),

        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // You can adjust this value as needed
            crossAxisSpacing: 10.0, // Adjust the spacing as needed
            mainAxisSpacing: 10.0, // Adjust the spacing as needed
          ),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  if (categories[index].name == 'Pakaian Pria') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Detail(categories: categories[index]),
                      ),
                    );
                  } else if (categories[index].name == 'Pakaian Wanita') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailPW(categories: categories[index]),
                      ),
                    );
                  } else if (categories[index].name == 'Pakaian Anak') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailPA(categories: categories[index]),
                      ),
                    );
                  } else if (categories[index].name == 'Sepatu') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailS(categories: categories[index]),
                      ),
                    );
                  } else if (categories[index].name == 'Tas') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailT(categories: categories[index]),
                      ),
                    );
                  } else if (categories[index].name == 'Aksesoris') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailAK(categories: categories[index]),
                      ),
                    );
                  }
                },
                child: Card(
                  elevation: 3, // Adjust the elevation as needed
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        15), // Adjust the border radius as needed
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 69,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            image: DecorationImage(
                              image: AssetImage(categories[index].images),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(
                              8.0), // Adjust the padding as needed
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                categories[index].name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      16, // Adjust the font size as needed
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                categories[index].description,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ));
          },
        )
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
        transform: matrix,
        child: Stack(
          children: [
            Transform(
              transform: matrix,
              child: Container(
                margin: EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: index.isEven
                      ? Color.fromARGB(255, 141, 124, 86)
                      : Color.fromARGB(255, 142, 121, 100),
                ),
                child: Image.asset(
                  ListDiscount[index].images,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 120,
                margin: EdgeInsets.only(left: 25, right: 50, bottom: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFE8E8E8),
                      blurRadius: 5.0,
                      offset: Offset(0, 5),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, 0),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(5, 0),
                    ),
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(ListDiscount[index].name),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(
                              5,
                              (starindex) => Icon(
                                Icons.star,
                                color: Colors.amberAccent,
                                size: 15,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(ListDiscount[index].rating),
                          SizedBox(width: 30),
                          Text(ListDiscount[index].pembelian),
                          SizedBox(width: 30),
                          SmallText(text: "Komentar"),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          IconAndTextWidget(
                            icon: Icons.location_on,
                            text: ListDiscount[index].jarak,
                            iconColor: Colors.redAccent,
                          ),
                          SizedBox(width: 100),
                          IconAndTextWidget(
                            icon: Icons.access_time,
                            text: ListDiscount[index].waktu,
                            iconColor: Colors.redAccent,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
