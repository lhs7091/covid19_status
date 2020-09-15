import 'package:covid19_status/api/api_service.dart';
import 'package:covid19_status/model/model.dart';
<<<<<<< HEAD
import 'package:covid19_status/model/modelToday.dart';
=======
>>>>>>> 56a367bbfa14e105b787709df3fff0bf41307200
import 'package:flutter/material.dart';
import 'package:covid19_status/widget/myClipper.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:covid19_status/constant/constants.dart';
import 'package:covid19_status/widget/counter.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  APIService apiService = new APIService();

<<<<<<< HEAD
  Model model;
  ModelToday modelToday;
  bool _isModelLoading = true;
  bool _isModelTodayLoading = true;

  @override
  void initState() {
    apiService.getDataByMobile().then((value) {
      setState(() {
        model = value;
        _isModelLoading = false;
      });
    });
    apiService.getTodayDataByMobile().then((value) {
      setState(() {
        modelToday = value;
        _isModelTodayLoading = false;
      });
    });
    super.initState();
  }

=======
>>>>>>> 56a367bbfa14e105b787709df3fff0bf41307200
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: apiService.getDataByMobile(),
        builder: (BuildContext context, AsyncSnapshot<Model> snapshot) {
          if (snapshot.hasData) {
            Model model = snapshot.data;
            return Scaffold(
              body: Column(
                children: [
                  ClipPath(
                    clipper: MyClipper(),
                    child: Container(
                      padding:
                          EdgeInsets.only(left: 40.0, top: 50.0, right: 20.0),
                      height: 250.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Color(0xFF3383CD), Color(0xFF11249F)]),
                        image: DecorationImage(
                            image: AssetImage("assets/images/virus.png")),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: kIsWeb
                                ? Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                  )
                                : SvgPicture.asset("assets/icons/menu.svg"),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  child: kIsWeb
                                      ? Container()
                                      : SvgPicture.asset(
                                          "assets/icons/Drcorona.svg",
                                          width: 200.0,
                                          fit: BoxFit.fitWidth,
                                          alignment: Alignment.topCenter,
                                        ),
                                ),
                                Positioned(
                                  top: 20.0,
                                  left: 150.0,
                                  child: Text(
                                    "All you need \nis stay at home",
                                    style: kHeadingTextStyle.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    height: 60.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(color: Color(0xFFE5E5E5)),
                    ),
                    child: Row(
                      children: [
                        kIsWeb
                            ? Container()
                            : SvgPicture.asset(
                                "assets/icons/maps-and-flags.svg"),
                        SizedBox(width: 20.0),
                        Expanded(
                          child: DropdownButton(
                            isExpanded: true,
                            underline: SizedBox(),
                            icon: kIsWeb
                                ? Icon(Icons.arrow_drop_down)
                                : SvgPicture.asset("assets/icons/dropdown.svg"),
                            value: 'Korea',
                            items: ['Korea', 'Japan']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                  ),
<<<<<<< HEAD
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            height: 60.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.0),
              border: Border.all(color: Color(0xFFE5E5E5)),
            ),
            child: Row(
              children: [
                kIsWeb
                    ? Container()
                    : SvgPicture.asset("assets/icons/maps-and-flags.svg"),
                SizedBox(width: 20.0),
                Expanded(
                  child: DropdownButton(
                    isExpanded: true,
                    underline: SizedBox(),
                    icon: kIsWeb
                        ? Icon(Icons.arrow_drop_down)
                        : SvgPicture.asset("assets/icons/dropdown.svg"),
                    value: 'Korea',
                    items: ['Korea', 'Japan']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          _isModelTodayLoading || _isModelLoading
              ? CircularProgressIndicator()
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: "Case Update\n",
                                style: kTitleTextstyle,
                              ),
                              TextSpan(
                                text: "based on " +
                                    model.updateTime
                                        .substring(23)
                                        .replaceAll("시 기준)", "") +
                                    " O'clock",
                                style: TextStyle(
                                  color: kTextLightColor,
                                ),
                              ),
                            ]),
                          ),
                          Spacer(),
                          Text(
                            "See details",
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 30.0,
                              color: kShadowColor,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Counter(
                              color: kInfectedColor,
                              number: model.totalCase,
                              title: 'Infected',
                            ),
                            Counter(
                              color: kDeathColor,
                              number: model.totalDeath,
                              title: 'Deaths',
                            ),
                            Counter(
                              color: kRecovercolor,
                              number: model.totalRecovered,
                              title: 'Recovered',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Today Case Update',
                            style: kTitleTextstyle,
                          ),
                          Text(
                            'See details',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
          _isModelTodayLoading || _isModelLoading
              ? CircularProgressIndicator()
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 30.0,
                              color: kShadowColor,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Counter(
                              color: kInfectedColor,
                              number: modelToday.korea.newCase,
                              title: 'Infected',
                            ),
                            Counter(
                              color: kDeathColor,
                              number: model.todayDeath,
                              title: 'Deaths',
                            ),
                            Counter(
                              color: kRecovercolor,
                              number: model.todayRecovered,
                              title: 'Recovered',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
=======
                  SizedBox(height: 20.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Case Update\n",
                                  style: kTitleTextstyle,
                                ),
                                TextSpan(
                                  text: "based on " +
                                      model.updateTime
                                          .substring(23)
                                          .replaceAll("시 기준)", "") +
                                      " O'clock",
                                  style: TextStyle(
                                    color: kTextLightColor,
                                  ),
                                ),
                              ]),
                            ),
                            Spacer(),
                            Text(
                              "See details",
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 4),
                                blurRadius: 30.0,
                                color: kShadowColor,
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Counter(
                                color: kInfectedColor,
                                number: model.totalCase,
                                title: 'Infected',
                              ),
                              Counter(
                                color: kDeathColor,
                                number: model.totalDeath,
                                title: 'Deaths',
                              ),
                              Counter(
                                color: kRecovercolor,
                                number: model.totalRecovered,
                                title: 'Recovered',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Spread of virus',
                              style: kTitleTextstyle,
                            ),
                            Text(
                              'See details',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        // Container(
                        //   margin: EdgeInsets.only(top: 10.0),
                        //   height: 130.0,
                        //   width: double.infinity,
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(20.0),
                        //       color: Colors.white,
                        //       boxShadow: [
                        //         BoxShadow(
                        //           offset: Offset(0, 10),
                        //           blurRadius: 30.0,
                        //           color: kShadowColor,
                        //         )
                        //       ]),
                        //   child: Image.asset(
                        //     "assets/images/map.png",
                        //     fit: BoxFit.contain,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Container();
          }
        });
>>>>>>> 56a367bbfa14e105b787709df3fff0bf41307200
  }
}
