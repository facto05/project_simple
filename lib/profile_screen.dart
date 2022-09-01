import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_simple/bottom_navigation.dart';

class ProfileState extends StatefulWidget {
  const ProfileState({Key? key}) : super(key: key);

  @override
  State<ProfileState> createState() => _ProfileStateState();
}

class _ProfileStateState extends State<ProfileState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              SvgPicture.asset(
                "svg/bg_profile.svg",
                width: MediaQuery.of(context).size.width,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BottomNavigation()));
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Text(
                    "Profile",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Stack(
                      children: [
                        ClipOval(
                          child: Material(
                            color: Colors.transparent,
                            child: Ink.image(
                              image:
                                  const AssetImage("images/default_avatar.jpg"),
                              fit: BoxFit.cover,
                              width: 95,
                              height: 95,
                            ),
                          ),
                        ),
                        editPictureButton(),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "User",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "user@mail.com",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: ElevatedButton.icon(
              onPressed: () {},
              label: const Text(
                "Feedback",
                style: TextStyle(
                    color: Color.fromARGB(255, 145, 29, 29),
                    fontWeight: FontWeight.bold),
              ),
              icon: SvgPicture.asset("svg/icon/ico_feedback.svg"),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: const Color.fromARGB(255, 255, 174, 174),
                  minimumSize: const Size.fromHeight(40)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: ElevatedButton.icon(
              onPressed: () {},
              label: const Text(
                "Edit Profile",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              icon: SvgPicture.asset("svg/icon/ico_edit_profile.svg"),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: Colors.white,
                  minimumSize: const Size.fromHeight(50)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: ElevatedButton.icon(
              onPressed: () {},
              label: const Text(
                "Edit Profile",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              icon: SvgPicture.asset("svg/icon/ico_edit_profile.svg"),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: Colors.white,
                  minimumSize: const Size.fromHeight(50)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: ElevatedButton.icon(
              onPressed: () {},
              label: const Text(
                "Edit Profile",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              icon: SvgPicture.asset("svg/icon/ico_edit_profile.svg"),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: Colors.white,
                  minimumSize: const Size.fromHeight(50)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: ElevatedButton.icon(
              onPressed: () {},
              label: const Text(
                "Edit Profile",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              icon: SvgPicture.asset("svg/icon/ico_edit_profile.svg"),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: Colors.white,
                  minimumSize: const Size.fromHeight(50)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: ElevatedButton.icon(
              onPressed: () {},
              label: const Text(
                "Edit Profile",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              icon: SvgPicture.asset("svg/icon/ico_edit_profile.svg"),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: Colors.white,
                  minimumSize: const Size.fromHeight(50)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: ElevatedButton.icon(
              onPressed: () {},
              label: const Text(
                "Edit Profile",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              icon: SvgPicture.asset("svg/icon/ico_edit_profile.svg"),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: Colors.white,
                  minimumSize: const Size.fromHeight(50)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: ElevatedButton.icon(
              onPressed: () {},
              label: const Text(
                "Edit Profile",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              icon: SvgPicture.asset("svg/icon/ico_edit_profile.svg"),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: Colors.white,
                  minimumSize: const Size.fromHeight(50)),
            ),
          ),
        ],
      ),
    );
  }

  Widget editPictureButton() => Positioned(
        bottom: -7,
        right: -7,
        child: ClipOval(
          child: IconButton(
            icon: SvgPicture.asset(
              "svg/icon/btn_take_photo.svg",
            ),
            iconSize: 30,
            onPressed: () {},
          ),
        ),
      );
}
