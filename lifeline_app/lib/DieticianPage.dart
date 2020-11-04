import 'package:flutter/material.dart';
import 'meal.dart';

class DieticianPage extends StatefulWidget {
  DieticianPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DieticianPageState createState() => _DieticianPageState();
}

class _DieticianPageState extends State<DieticianPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color(0xffe9e9),
        body: Stack(children: <Widget>[
          Positioned(
            top: 0,
            height: height * 0.35,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: const Radius.circular(40),
              ),
              child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(
                      top: 40, left: 32, right: 16, bottom: 10),
                  child: Column()),
            ),
          ),
          Positioned(
            top: height * 0.38,
            left: 0,
            right: 0,
            child: Container(
              height: height * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 0,
                      left: 32,
                      right: 16,
                    ),
                    child: Text(
                      "Today's Recommended Menu",
                      style: const TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 32,
                        ),
                        for (int i = 0; i < meals.length; i++)
                          _mealCard(
                            meal: meals[i],
                          )
                      ],
                    ),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10,left: 32, right: 32),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color(0xFF20008B),
                            const Color(0xFF200087),
                          ],
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Text("YOUR NEXT WORKOUT"),
                          Text("UPPER BODY"),
                          Row(
                            children: <Widget>[
                              IconButton(icon: Image.asset(""), onPressed: null),
                              SizedBox(width: 10,)
                            ],
                          )
                        ],
                      ),

                    ),
                  ),
                ],
              ),
            ),
          )
        ]));
  }
}

class _mealCard extends StatelessWidget {
  final Meal meal;

  const _mealCard({Key key, @required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
        bottom: 10,
      ),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                child: Image.network(
                  meal.imagePath,
                  width: 150,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Flexible(
                fit: FlexFit.tight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(meal.mealTime,

                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.blueGrey
                    ),
                    ),
                    Text(meal.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.black)
                    ),
                    Text("${meal.kiloCaloriesBurnt} kcal",
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.blueGrey)),
                    Row(
                      children: <Widget>[
                        Icon(Icons.access_time,
                          size: 15,
                          color: Colors.black12,),
                        SizedBox(width: 4,),
                        Text("${meal.timeTaken}min",
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.blueGrey)),
                      ],
                    ),

                    SizedBox(height: 16),
                  ],
                ),
                ),
            )
            // Flexible(
            //   fit: FlexFit.tight,
            //   child: OpenContainer(
            //     closedShape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            //     transitionDuration: const Duration(milliseconds: 1000),
            //     openBuilder: (context, _) {
            //       return MealDetailScreen(
            //         meal: meal,
            //       );
            //     },
            //     closedBuilder: (context, openContainer) {
            //       return GestureDetector(
            //         onTap: openContainer,
            //         child: ClipRRect(
            //           borderRadius: BorderRadius.all(Radius.circular(20)),
            //           child: Image.network(
            //             meal.imagePath,
            //             width: 150,
            //             fit: BoxFit.fill,
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
            // Flexible(
            //   fit: FlexFit.tight,
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 12.0),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         SizedBox(height: 5),
            //         Text(
            //           meal.mealTime,
            //           style: const TextStyle(
            //             fontWeight: FontWeight.w500,
            //             fontSize: 14,
            //             color: Colors.blueGrey,
            //           ),
            //         ),
            //         Text(
            //           meal.name,
            //           style: const TextStyle(
            //             fontWeight: FontWeight.w700,
            //             fontSize: 18,
            //             color: Colors.black,
            //           ),
            //         ),
            //         Text(
            //           "${meal.kiloCaloriesBurnt} kcal",
            //           style: const TextStyle(
            //             fontWeight: FontWeight.w500,
            //             fontSize: 14,
            //             color: Colors.blueGrey,
            //           ),
            //         ),
            //         Row(
            //           children: <Widget>[
            //             Icon(
            //               Icons.access_time,
            //               size: 15,
            //               color: Colors.black12,
            //             ),
            //             SizedBox(
            //               width: 4,
            //             ),
            //             Text(
            //               "${meal.timeTaken} min",
            //               style: const TextStyle(
            //                 fontWeight: FontWeight.w500,
            //                 fontSize: 14,
            //                 color: Colors.blueGrey,
            //               ),
            //             ),
            //           ],
            //         ),
            //         SizedBox(height: 16),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
