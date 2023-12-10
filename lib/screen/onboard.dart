import 'package:flutter/material.dart';
import 'package:technews/screen/register.dart';


class onboard extends StatelessWidget {

  const onboard({super.key});
static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 1,
              width: double.infinity,
              child: Image.asset(
                'image/mobile1.jpg',
                fit: BoxFit.cover,
              )),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 48),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('TECH NEWS',
                    style: TextStyle(
                        fontSize: 34,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w900)),
                // Row(
                //   children: [
                //     const Text(
                //       'ARE',
                //       style: TextStyle(
                //           fontSize: 34,
                //           color: Colors.white,
                //           fontWeight: FontWeight.w900),
                //     ),
                //     SizedBox(
                //       width: 10,
                //     ),
                //     const Text(
                //       'HEREEEE',
                //       style: TextStyle(
                //           fontSize: 34,
                //           color: Color.fromRGBO(255, 255, 255, 1),
                //           fontWeight: FontWeight.w900),
                //     )
                //   ],
                // ),
                SizedBox(
                  height: 24,
                ),
                const Text(
                  "Explore any tech news, based on its category",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w200),
                ),
                const Text(
                  "And Now, Feel It Yourself.",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w200),
                ),
                SizedBox(
                  height: 46,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color.fromRGBO(255, 255, 255, 1)
                    ),
                    height: 88,
                    width: double.infinity,
                    child: Center(
                      child: Text("Let’s go started", style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600
                      ),),
                    ),
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