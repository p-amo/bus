import 'package:flutter/material.dart';

class PostBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: const BoxDecoration(
        color: Color(0xFFEDF2F6),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "City Name, Country",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    //SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 25,
                        ),
                        Text(
                          "4.5",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 25),
                const Text(
                  "Data",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/images/city4.jpg",
                            fit: BoxFit.cover,
                            width: 120,
                            height: 90,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        width: 120,
                        height: 90,
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/city10.jpg"),
                            fit: BoxFit.cover,
                            opacity: 0.4,
                          ),
                        ),
                        child: const Text(
                          "10+",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Container(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                              )
                            ]),
                        child: const Icon(Icons.bookmark_outline, size: 40),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.redAccent,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                              ),
                            ]),
                        child: const Text(
                          "Book Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
