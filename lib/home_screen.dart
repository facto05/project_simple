import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_simple/banner.dart';

class HomeState extends StatefulWidget {
  const HomeState({Key? key}) : super(key: key);

  @override
  State<HomeState> createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              SvgPicture.asset(
                "svg/icon/bg_header_birthday.svg",
                width: MediaQuery.of(context).size.width,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child:
                        SvgPicture.asset("svg/icon/iglo_logo_small_white.svg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SvgPicture.asset("svg/icon/ico_notif_off.svg"),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(text: "Happy Birthday, "),
                  TextSpan(
                      text: "Annisa",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
                ],
              ),
            ),
          ),
          const ImageSlider(),
        ],
      ),
    );
  }
}
