import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:technews/widgets/botton_nav_bar.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const routeName = '/profile';
  final double coverHeight = 280;
  final double profileHeight = 144;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(index: 2),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Blakang
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.amber,
              child: Image.network(
                "https://www.karier.mu/blog/wp-content/uploads/2021/12/programmin-990x500.jpg",
                fit: BoxFit.cover,
              ),
            ),
            // Depan
            Column(
              children: <Widget>[
                SizedBox(
                  height: 120,
                ),
                buildProfileImage(),
                buildContent(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "About",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        textAlign: TextAlign.justify,
                        softWrap: true,
                        "Tony Stark adalah seorang jenius ilmuwan, penemu, dan pengusaha sukses. Ia adalah CEO Stark Industries, sebuah perusahaan teknologi miliknya yang terkenal dengan pengembangan teknologi canggih, terutama dalam bidang senjata. Tony Stark dikenal sebagai salah satu otak terbesar di dunia dalam hal teknologi.",
                        style: TextStyle(fontSize: 18, height: 1.4),
                      ),
                    ],
                  ),
                ),

                // buildTop(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTop() {
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        )
      ],
    );
  }

  Widget buildContent() => Column(
        children: [
          const SizedBox(height: 8),
          Text(
            "Tony Stark",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            "Flutter Software Engineer",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialIcon(FontAwesomeIcons.slack),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.github),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.twitter),
              const SizedBox(width: 12),
              buildSocialIcon(FontAwesomeIcons.linkedin),
              const SizedBox(width: 12),
            ],
          ),
        ],
      );

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Column(
          children: [
            Image.network(
              "https://www.karier.mu/blog/wp-content/uploads/2021/12/programmin-990x500.jpg",
              fit: BoxFit.cover,
            ),
            Text(
              "About",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              "Tony Stark adalah seorang jenius ilmuwan, penemu, dan pengusaha sukses. Ia adalah CEO Stark Industries, sebuah perusahaan teknologi miliknya yang terkenal dengan pengembangan teknologi canggih, terutama dalam bidang senjata. Tony Stark dikenal sebagai salah satu otak terbesar di dunia dalam hal teknologi.",
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
          ],
        ),
        width: double.infinity,
        height: coverHeight,
        padding: EdgeInsets.symmetric(horizontal: 48),
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [

        //   ],
        // ),
      );

  Widget buildSocialIcon(IconData icon) => CircleAvatar(
        radius: 25,
        child: Material(
          shape: CircleBorder(),
          clipBehavior: Clip.hardEdge,
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Center(child: Icon(icon, size: 32)),
          ),
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        // backgroundColor: Colors.grey.shade800,
        backgroundImage: NetworkImage(
            "https://wellgroomedgentleman.com/media/images/Tony_Stark_Beard_with_Quiff_Hairstyle.width-800.jpg",
            scale: 6),
      );
}