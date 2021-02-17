import 'package:flutter/material.dart';

class BestDealWidget extends StatefulWidget {
  @override
  _BestDealWidgetState createState() => _BestDealWidgetState();
}

class _BestDealWidgetState extends State<BestDealWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          BestDealTitle(),
          Expanded(
            child: BestFoodList(),
          )
        ],
      ),
    );
  }
}

class BestDealTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Best Deals",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class BestDealTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String rating;
  String numberOfRating;
  String price;
  String slug;

  BestDealTiles(
      {Key key,
      @required this.name,
      @required this.imageUrl,
      @required this.rating,
      @required this.numberOfRating,
      @required this.price,
      @required this.slug})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: BoxDecoration(boxShadow: []),
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset(
                'assets/images/bestdeals/' + imageUrl + ".jpg",
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 1,
              margin: EdgeInsets.all(5),
            ),
          ),
        ],
      ),
    );
  }
}

class BestFoodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        BestDealTiles(
            name: "Fried Egg",
            imageUrl: "ic_Deal1",
            rating: '4.9',
            numberOfRating: '200',
            price: '15.06',
            slug: "fried_egg"),
        BestDealTiles(
            name: "Mixed vegetable",
            imageUrl: "ic_Deal2",
            rating: "4.9",
            numberOfRating: "100",
            price: "17.03",
            slug: ""),
        BestDealTiles(
            name: "Salad with chicken meat",
            imageUrl: "ic_Deal3",
            rating: "4.0",
            numberOfRating: "50",
            price: "11.00",
            slug: ""),
        
      ],
    );
  }
}
