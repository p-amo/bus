import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                )
              ]),
              child: const Icon(Icons.sort_rounded, size: 26),
            ),
          ),
          const Row(
            children: [
              Icon(
                Icons.location_on,
                color: Color(0xFFF65959),
              ),
              Text(
                "Nairobi, Kenya",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              )
            ],
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                  )
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(
                Icons.search,
                size: 28,
              ),
            ),
          )
        ],
      ),
    );
  }
}
