// import 'package:astrotak/Bloc/astrobloc.dart';
// import 'package:astrotak/Screens/profile.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class AstroPage extends StatefulWidget {
//   const AstroPage() : super();
//
//   @override
//   State<StatefulWidget> createState() {
//     return AstroPageState();
//   }
// }

//
// class AstroPageState extends State<AstroPage> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: BlocBuilder<Astrobloc, Astrostate>(
//           builder: (context, state) {
//             if (state is Astroquestionloading) {
//               return MaterialApp(
//                 debugShowCheckedModeBanner: false,
//                 home: Scaffold(
//                     appBar: AppBar(
//                       leading: IconButton(
//                           alignment: Alignment.centerLeft,
//                           onPressed: () {},
//                           icon: const ImageIcon(
//                             AssetImage("assets/hamburger.png"),
//                             color: Color.fromRGBO(252, 148, 44, 1),
//                           )),
//                       title: Image.asset(
//                         'assets/icon.png',
//                         fit: BoxFit.contain,
//                         width: 60.0,
//                         height: 60.0,
//                       ),
//                       centerTitle: true,
//                       backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
//                       actions: <Widget>[
//                         IconButton(
//                             alignment: Alignment.center,
//                             onPressed: () {
//                               context.read<Astrobloc>.add(ProfileClickevent);
//                             },
//                             icon: const ImageIcon(
//                               AssetImage("assets/profile.png"),
//                               color: Color.fromRGBO(252, 148, 44, 1),
//                             )),
//                       ],
//                     ),
//                     body: Column(
//                       children: [
//                         Container(
//                           padding: const EdgeInsets.all(10.0),
//                           color: const Color.fromRGBO(80, 100, 188, 1),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               const Text(
//                                 "Wallet Balance: \u{20B9} 0",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 20.0,
//                                     color: Color.fromRGBO(255, 255, 255, 1)),
//                               ),
//                               Align(
//                                 alignment: Alignment.bottomRight,
//                                 child: Card(
//                                   child: Container(
//                                     padding: const EdgeInsets.all(10.0),
//                                     child: const Text(
//                                       "Add Money",
//                                       style: TextStyle(
//                                         color: Color.fromRGBO(80, 100, 188, 1),
//                                       ),
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: const [
//                               Text(
//                                 "Ask a Question",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 20.0,
//                                     color: Color.fromRGBO(7, 6, 5, 1)),
//                               ),
//                               Text(
//                                 "Seek accurate answers to your life problems and get  guidance towards the right path. Whether  the  problem is related to love, self, life, business, money, education, or work, our astrologers will do  an in depth study of your  birth  chart  to provide personalized responses along with remedies",
//                                 style: TextStyle(
//                                     fontSize: 17.0,
//                                     color: Color.fromRGBO(7, 6, 5, 1)),
//                               ),
//                             ],
//                           ),
//                         ),
//                         const CircularProgressIndicator(),
//                         Container(
//                           padding: const EdgeInsets.all(10.0),
//                           child: const Text(
//                             "Seeking  accurate  answers to different questions  troubling your mind? Ask credible astrologers to know what future has in store for you.",
//                             style: TextStyle(
//                                 fontSize: 17.0,
//                                 color: Color.fromRGBO(7, 6, 5, 1)),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Container(
//                             color: const Color.fromRGBO(255, 241, 232, 1),
//                             padding: const EdgeInsets.all(10.0),
//                             child: const Text(
//                               "\u2022 Personalized responses provided  by our team of vedic astologers within 24 hours. \n "
//                               "\u2022 Qualified and experienced astrologers will look into your birth chart  and provide the right guidance. \n"
//                               "\u2022 You can  seek  answers  to any part of your life and  for most  pressing  issues. \n"
//                               "\u2022 Our team of Vedic astrologers will  not just part of answers but  also suggest remedial solution.",
//                               style: TextStyle(
//                                   fontSize: 18.0,
//                                   color: Color.fromRGBO(252, 179, 134, 1)),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     floatingActionButton: Container(
//                       margin: const EdgeInsets.fromLTRB(0, 0, 0, 0.0),
//                       child: FloatingActionButton(
//                         child: const Icon(Icons.menu),
//                         backgroundColor: const Color.fromRGBO(252, 148, 44, 1),
//                         onPressed: () {},
//                       ),
//                     )),
//               );
//             } else if (state is Astroquestionloaded) {
//               String _choose = "";
//               const maxLines = 5;
//               List<String> dropdownlist = [];
//               for (int i = 0; i < state.questiionlist.length; i++) {
//                 dropdownlist.add(state.questiionlist[i].name);
//               }
//               return MaterialApp(
//                 debugShowCheckedModeBanner: false,
//                 home: Scaffold(
//                     resizeToAvoidBottomInset: false,
//                     appBar: AppBar(
//                       leading: IconButton(
//                           alignment: Alignment.centerLeft,
//                           onPressed: () {},
//                           icon: const ImageIcon(
//                             AssetImage("assets/hamburger.png"),
//                             color: Color.fromRGBO(252, 148, 44, 1),
//                           )),
//                       title: Image.asset(
//                         'assets/icon.png',
//                         fit: BoxFit.contain,
//                         width: 60.0,
//                         height: 60.0,
//                       ),
//                       centerTitle: true,
//                       backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
//                       actions: <Widget>[
//                         IconButton(
//                             alignment: Alignment.center,
//                             onPressed: () {},
//                             icon: const ImageIcon(
//                               AssetImage("assets/profile.png"),
//                               color: Color.fromRGBO(252, 148, 44, 1),
//                             )),
//                       ],
//                     ),
//                     body: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           padding: const EdgeInsets.all(10.0),
//                           color: const Color.fromRGBO(80, 100, 188, 1),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               const Text(
//                                 "Wallet Balance: \u{20B9} 0",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 20.0,
//                                     color: Color.fromRGBO(255, 255, 255, 1)),
//                               ),
//                               Align(
//                                 alignment: Alignment.bottomRight,
//                                 child: Card(
//                                   child: Container(
//                                     padding: const EdgeInsets.all(10.0),
//                                     child: const Text(
//                                       "Add Money",
//                                       style: TextStyle(
//                                         color: Color.fromRGBO(80, 100, 188, 1),
//                                       ),
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: const [
//                               Text(
//                                 "Ask a Question",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 20.0,
//                                     color: Color.fromRGBO(7, 6, 5, 1)),
//                               ),
//                               Text(
//                                 "Seek accurate answers to your life problems and get  guidance towards the right path. Whether  the  problem is related to love, self, life, business, money, education, or work, our astrologers will do  an in depth study of your  birth  chart  to provide personalized responses along with remedies",
//                                 style: TextStyle(
//                                     fontSize: 17.0,
//                                     color: Color.fromRGBO(7, 6, 5, 1)),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           padding: const EdgeInsets.all(10.0),
//                           width: MediaQuery.of(context).size.width,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text(
//                                 "Choose Category",
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20.0,
//                                   color: Color.fromRGBO(7, 6, 5, 1),
//                                 ),
//                               ),
//                               DropdownButton<String>(
//                                 focusColor: Colors.white,
//                                 value: _choose,
//                                 iconDisabledColor: Colors.black,
//                                 isExpanded: true,
//                                 //elevation: 5,
//                                 style: const TextStyle(color: Colors.black),
//                                 iconEnabledColor: Colors.black,
//                                 items: dropdownlist
//                                     .map<DropdownMenuItem<String>>(
//                                         (String value) {
//                                   return DropdownMenuItem<String>(
//                                     value: value,
//                                     child: Text(
//                                       value,
//                                       style: TextStyle(color: Colors.black),
//                                     ),
//                                   );
//                                 }).toList(),
//                                 hint: const Text(
//                                   "Please Category",
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 17,
//                                       fontWeight: FontWeight.w500),
//                                 ),
//                                 onChanged: (String? value) {
//                                   setState(() {
//                                     _choose = value!;
//                                   });
//                                 },
//                               ),
//                               SizedBox(
//                                 height: maxLines * 24,
//                                 child: TextField(
//                                   maxLines: maxLines,
//                                   decoration: InputDecoration(
//                                       border: OutlineInputBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(10.0),
//                                       ),
//                                       filled: true,
//                                       hintStyle:
//                                           TextStyle(color: Colors.grey[800]),
//                                       hintText: "Type in question here",
//                                       fillColor: Colors.white70),
//                                 ),
//                               ),
//                               /*Container(
//                                 padding: const EdgeInsets.all(10.0),
//                                 child: Column(
//                                   children: [
//                                     const Text(
//                                       "Ideas what to Ask (Select Any)",
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontSize: 18.0,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                     ListView.builder(
//                                         itemCount: state
//                                             .questiionlist[
//                                                 dropdownlist.indexOf(_choose)]
//                                             .suggestions
//                                             .length,
//                                         itemBuilder:
//                                             (BuildContext context, int index) {
//                                           return ListTile(
//                                               leading: const Icon(Icons.list),
//                                               title: Text(state
//                                                   .questiionlist[dropdownlist
//                                                       .indexOf(_choose)]
//                                                   .suggestions[index]));
//                                         }),
//                                   ],
//                                 ),
//                               )*/
//                             ],
//                           ),
//                         ),
//                         Container(
//                           padding: const EdgeInsets.all(10.0),
//                           child: const Text(
//                             "Seeking  accurate  answers to different questions  troubling your mind? Ask credible astrologers to know what future has in store for you.",
//                             style: TextStyle(
//                                 fontSize: 17.0,
//                                 color: Color.fromRGBO(7, 6, 5, 1)),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Container(
//                             color: const Color.fromRGBO(255, 241, 232, 1),
//                             padding: const EdgeInsets.all(10.0),
//                             child: const Text(
//                               "\u2022 Personalized responses provided  by our team of vedic astologers within 24 hours. \n "
//                               "\u2022 Qualified and experienced astrologers will look into your birth chart  and provide the right guidance. \n"
//                               "\u2022 You can  seek  answers  to any part of your life and  for most  pressing  issues. \n"
//                               "\u2022 Our team of Vedic astrologers will  not just part of answers but  also suggest remedial solution.",
//                               style: TextStyle(
//                                   fontSize: 18.0,
//                                   color: Color.fromRGBO(252, 179, 134, 1)),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     bottomSheet: Container(
//                       height: 60.0,
//                       padding: const EdgeInsets.all(10.0),
//                       color: const Color.fromRGBO(80, 100, 188, 1),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(
//                             children: const [
//                               /* const Text(
//                                 "\u{20B9} ",
//                                 style: TextStyle(
//                                     fontSize: 15.0,
//                                     color: Color.fromRGBO(255, 255, 255, 1)),
//                               ),
//                               Text(
//                                 state
//                                     .questiionlist[
//                                         dropdownlist.indexOf(_choose)]
//                                     .price,
//                                 style: const TextStyle(
//                                     fontSize: 15.0,
//                                     color: Color.fromRGBO(255, 255, 255, 1)),
//                               ),
//                               Text(
//                                 "(1 Question on $_choose",
//                                 style: const TextStyle(
//                                     fontSize: 15.0,
//                                     color: Color.fromRGBO(255, 255, 255, 1)),
//                               ),*/
//                               Text(
//                                 "\u{20B9} 150 (1 Question on Love)",
//                                 style: TextStyle(
//                                     fontSize: 15.0,
//                                     color: Color.fromRGBO(255, 255, 255, 1)),
//                               ),
//                             ],
//                           ),
//                           Align(
//                             alignment: Alignment.bottomRight,
//                             child: Card(
//                               child: Container(
//                                 padding: const EdgeInsets.all(10.0),
//                                 child: const Text(
//                                   "Add Now",
//                                   style: TextStyle(
//                                     color: Color.fromRGBO(80, 100, 188, 1),
//                                   ),
//                                   textAlign: TextAlign.center,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     floatingActionButton: Container(
//                       margin: const EdgeInsets.fromLTRB(0, 0, 0, 60.0),
//                       child: FloatingActionButton(
//                         child: const Icon(Icons.menu),
//                         backgroundColor: const Color.fromRGBO(252, 148, 44, 1),
//                         onPressed: () {},
//                       ),
//                     )),
//               );
//             } else if (state is Astroquestionnotloaded) {
//               return MaterialApp(
//                 debugShowCheckedModeBanner: false,
//                 home: Scaffold(
//                     appBar: AppBar(
//                       leading: IconButton(
//                           alignment: Alignment.centerLeft,
//                           onPressed: () {},
//                           icon: const ImageIcon(
//                             AssetImage("assets/hamburger.png"),
//                             color: Color.fromRGBO(252, 148, 44, 1),
//                           )),
//                       title: Image.asset(
//                         'assets/icon.png',
//                         fit: BoxFit.contain,
//                         width: 60.0,
//                         height: 60.0,
//                       ),
//                       centerTitle: true,
//                       backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
//                       actions: <Widget>[
//                         IconButton(
//                             alignment: Alignment.center,
//                             onPressed: () {},
//                             icon: const ImageIcon(
//                               AssetImage("assets/profile.png"),
//                               color: Color.fromRGBO(252, 148, 44, 1),
//                             )),
//                       ],
//                     ),
//                     body: Column(
//                       children: [
//                         Container(
//                           padding: const EdgeInsets.all(10.0),
//                           color: const Color.fromRGBO(80, 100, 188, 1),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               const Text(
//                                 "Wallet Balance: \u{20B9} 0",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 20.0,
//                                     color: Color.fromRGBO(255, 255, 255, 1)),
//                               ),
//                               Align(
//                                 alignment: Alignment.bottomRight,
//                                 child: Card(
//                                   child: Container(
//                                     padding: const EdgeInsets.all(10.0),
//                                     child: const Text(
//                                       "Add Money",
//                                       style: TextStyle(
//                                         color: Color.fromRGBO(80, 100, 188, 1),
//                                       ),
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: const [
//                               Text(
//                                 "Ask a Question",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 20.0,
//                                     color: Color.fromRGBO(7, 6, 5, 1)),
//                               ),
//                               Text(
//                                 "Seek accurate answers to your life problems and get  guidance towards the right path. Whether  the  problem is related to love, self, life, business, money, education, or work, our astrologers will do  an in depth study of your  birth  chart  to provide personalized responses along with remedies",
//                                 style: TextStyle(
//                                     fontSize: 17.0,
//                                     color: Color.fromRGBO(7, 6, 5, 1)),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           padding: const EdgeInsets.all(10.0),
//                           child: const Text(
//                             "Seeking  accurate  answers to different questions  troubling your mind? Ask credible astrologers to know what future has in store for you.",
//                             style: TextStyle(
//                                 fontSize: 17.0,
//                                 color: Color.fromRGBO(7, 6, 5, 1)),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Container(
//                             color: const Color.fromRGBO(255, 241, 232, 1),
//                             padding: const EdgeInsets.all(10.0),
//                             child: const Text(
//                               "\u2022 Personalized responses provided  by our team of vedic astologers within 24 hours. \n "
//                               "\u2022 Qualified and experienced astrologers will look into your birth chart  and provide the right guidance. \n"
//                               "\u2022 You can  seek  answers  to any part of your life and  for most  pressing  issues. \n"
//                               "\u2022 Our team of Vedic astrologers will  not just part of answers but  also suggest remedial solution.",
//                               style: TextStyle(
//                                   fontSize: 18.0,
//                                   color: Color.fromRGBO(252, 179, 134, 1)),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     bottomSheet: Container(
//                       height: 60.0,
//                       padding: const EdgeInsets.all(10.0),
//                       color: const Color.fromRGBO(80, 100, 188, 1),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Text(
//                             "\u{20B9} 150 (1 Question on Love )",
//                             style: TextStyle(
//                                 fontSize: 15.0,
//                                 color: Color.fromRGBO(255, 255, 255, 1)),
//                           ),
//                           Align(
//                             alignment: Alignment.bottomRight,
//                             child: Card(
//                               child: Container(
//                                 padding: const EdgeInsets.all(10.0),
//                                 child: const Text(
//                                   "Add Now",
//                                   style: TextStyle(
//                                     color: Color.fromRGBO(80, 100, 188, 1),
//                                   ),
//                                   textAlign: TextAlign.center,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     floatingActionButton: Container(
//                       margin: const EdgeInsets.fromLTRB(0, 0, 0, 60.0),
//                       child: FloatingActionButton(
//                         child: const Icon(Icons.menu),
//                         backgroundColor: const Color.fromRGBO(252, 148, 44, 1),
//                         onPressed: () {},
//                       ),
//                     )),
//               );
//             } else if (state is ProfileClickstate) {
//               return ProfilePage();
//             }
//             return const Text('No State');
//           },
//         ),
//       ),
//     );
//   }
// }
import 'package:astrotak/Bloc/astrobloc.dart';
import 'package:astrotak/Screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AstroPage extends StatefulWidget {
  BuildContext context;
  AstroPage({Key? key, required this.context}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AstroPageState(context);
  }
}

class AstroPageState extends State<AstroPage> {
  BuildContext contextt;
  AstroPageState(this.contextt);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Astrobloc, Astrostate>(builder: (context, state) {
      if (state is Astroquestionloading) {
        return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              leading: IconButton(
                  alignment: Alignment.centerLeft,
                  onPressed: () {},
                  icon: const ImageIcon(
                    AssetImage("assets/hamburger.png"),
                    color: Color.fromRGBO(252, 148, 44, 1),
                  )),
              title: Image.asset(
                'assets/icon.png',
                fit: BoxFit.contain,
                width: 60.0,
                height: 60.0,
              ),
              centerTitle: true,
              backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
              actions: <Widget>[
                IconButton(
                    alignment: Alignment.center,
                    onPressed: () {
                      //      contextt.read<Astrobloc>().add(ProfileClickevent());
                      Navigator.of(contextt).push(MaterialPageRoute(
                          builder: (contextt) => const ProfilePage()));
                    },
                    icon: const ImageIcon(
                      AssetImage("assets/profile.png"),
                      color: Color.fromRGBO(252, 148, 44, 1),
                    )),
              ],
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  color: const Color.fromRGBO(80, 100, 188, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Wallet Balance: \u{20B9} 0",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Card(
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: const Text(
                              "Add Money",
                              style: TextStyle(
                                color: Color.fromRGBO(80, 100, 188, 1),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Ask a Question",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Color.fromRGBO(7, 6, 5, 1)),
                      ),
                      Text(
                        "Seek accurate answers to your life problems and get  guidance towards the right path. Whether  the  problem is related to love, self, life, business, money, education, or work, our astrologers will do  an in depth study of your  birth  chart  to provide personalized responses along with remedies",
                        style: TextStyle(
                            fontSize: 17.0, color: Color.fromRGBO(7, 6, 5, 1)),
                      ),
                    ],
                  ),
                ),
                const CircularProgressIndicator(),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    "Seeking  accurate  answers to different questions  troubling your mind? Ask credible astrologers to know what future has in store for you.",
                    style: TextStyle(
                        fontSize: 17.0, color: Color.fromRGBO(7, 6, 5, 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: const Color.fromRGBO(255, 241, 232, 1),
                    padding: const EdgeInsets.all(10.0),
                    child: const Text(
                      "\u2022 Personalized responses provided  by our team of vedic astologers within 24 hours. \n "
                      "\u2022 Qualified and experienced astrologers will look into your birth chart  and provide the right guidance. \n"
                      "\u2022 You can  seek  answers  to any part of your life and  for most  pressing  issues. \n"
                      "\u2022 Our team of Vedic astrologers will  not just part of answers but  also suggest remedial solution.",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Color.fromRGBO(252, 179, 134, 1)),
                    ),
                  ),
                ),
              ],
            ),
            bottomSheet: Container(
              height: 60.0,
              padding: const EdgeInsets.all(10.0),
              color: const Color.fromRGBO(80, 100, 188, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      /* const Text(
                                 "\u{20B9} ",
                                 style: TextStyle(
                                     fontSize: 15.0,
                                     color: Color.fromRGBO(255, 255, 255, 1)),
                               ),
                               Text(
                                 state
                                     .questiionlist[
                                         dropdownlist.indexOf(_choose)]
                                     .price,
                                style: const TextStyle(
                                     fontSize: 15.0,
                                     color: Color.fromRGBO(255, 255, 255, 1)),
                               ),
                               Text(
                                 "(1 Question on $_choose",
                                 style: const TextStyle(
                                     fontSize: 15.0,
                                     color: Color.fromRGBO(255, 255, 255, 1)),
                               ),*/
                      Text(
                        "\u{20B9} 150 (1 Question on Love)",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        child: const Text(
                          "Add Now",
                          style: TextStyle(
                            color: Color.fromRGBO(80, 100, 188, 1),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 60.0),
              child: FloatingActionButton(
                child: const Icon(Icons.menu),
                backgroundColor: const Color.fromRGBO(252, 148, 44, 1),
                onPressed: () {},
              ),
            ));
      } else if (state is Astroquestionloaded) {
        String _choose = "";
        const maxLines = 5;
        List<String> dropdownlist = [];
        for (int i = 0; i < state.questiionlist.length; i++) {
          dropdownlist.add(state.questiionlist[i].name);
        }
        return Builder(builder: (context) {
// User? user=state.user;
// print('user id is'+user!.id.toString());
          return Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(
                leading: IconButton(
                    alignment: Alignment.centerLeft,
                    onPressed: () {},
                    icon: const ImageIcon(
                      AssetImage("assets/hamburger.png"),
                      color: Color.fromRGBO(252, 148, 44, 1),
                    )),
                title: Image.asset(
                  'assets/icon.png',
                  fit: BoxFit.contain,
                  width: 60.0,
                  height: 60.0,
                ),
                centerTitle: true,
                backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                actions: <Widget>[
                  IconButton(
                      alignment: Alignment.center,
                      onPressed: () {
                        //contextt.read<Astrobloc>().add(ProfileClickevent());
                        Navigator.of(contextt).push(MaterialPageRoute(
                            builder: (contextt) => const ProfilePage()));
                      },
                      icon: const ImageIcon(
                        AssetImage("assets/profile.png"),
                        color: Color.fromRGBO(252, 148, 44, 1),
                      )),
                ],
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    color: const Color.fromRGBO(80, 100, 188, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Wallet Balance: \u{20B9} 0",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Card(
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              child: const Text(
                                "Add Money",
                                style: TextStyle(
                                  color: Color.fromRGBO(80, 100, 188, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Ask a Question",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Color.fromRGBO(7, 6, 5, 1)),
                        ),
                        Text(
                          "Seek accurate answers to your life problems and get  guidance towards the right path. Whether  the  problem is related to love, self, life, business, money, education, or work, our astrologers will do  an in depth study of your  birth  chart  to provide personalized responses along with remedies",
                          style: TextStyle(
                              fontSize: 17.0,
                              color: Color.fromRGBO(7, 6, 5, 1)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Choose Category",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Color.fromRGBO(7, 6, 5, 1),
                          ),
                        ),
                        DropdownButton<String>(
                          focusColor: Colors.white,
                          value: _choose,
                          iconDisabledColor: Colors.black,
                          isExpanded: true,
                          //elevation: 5,
                          style: const TextStyle(color: Colors.black),
                          iconEnabledColor: Colors.black,
                          items: dropdownlist
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
                          hint: const Text(
                            "Please Category",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              _choose = value!;
                            });
                          },
                        ),
                        SizedBox(
                          height: maxLines * 24,
                          child: TextField(
                            maxLines: maxLines,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                hintStyle: TextStyle(color: Colors.grey[800]),
                                hintText: "Type in question here",
                                fillColor: Colors.white70),
                          ),
                        ),
                        /*Container(
                                 padding: const EdgeInsets.all(10.0),
                                 child: Column(
                                   children: [
                                     const Text(
                                       "Ideas what to Ask (Select Any)",
                                       style: TextStyle(
                                           color: Colors.black,
                                           fontSize: 18.0,
                                           fontWeight: FontWeight.bold),
                                     ),
                                     ListView.builder(
                                         itemCount: state
                                             .questiionlist[
                                                 dropdownlist.indexOf(_choose)]
                                             .suggestions
                                             .length,
                                         itemBuilder:
                                             (BuildContext context, int index) {
                                           return ListTile(
                                               leading: const Icon(Icons.list),
                                               title: Text(state
                                                   .questiionlist[dropdownlist
                                                       .indexOf(_choose)]
                                                   .suggestions[index]));
                                        }),
                                   ],
                                 ),
                               )*/
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: const Text(
                      "Seeking  accurate  answers to different questions  troubling your mind? Ask credible astrologers to know what future has in store for you.",
                      style: TextStyle(
                          fontSize: 17.0, color: Color.fromRGBO(7, 6, 5, 1)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: const Color.fromRGBO(255, 241, 232, 1),
                      padding: const EdgeInsets.all(10.0),
                      child: const Text(
                        "\u2022 Personalized responses provided  by our team of vedic astologers within 24 hours. \n "
                        "\u2022 Qualified and experienced astrologers will look into your birth chart  and provide the right guidance. \n"
                        "\u2022 You can  seek  answers  to any part of your life and  for most  pressing  issues. \n"
                        "\u2022 Our team of Vedic astrologers will  not just part of answers but  also suggest remedial solution.",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Color.fromRGBO(252, 179, 134, 1)),
                      ),
                    ),
                  ),
                ],
              ),
              bottomSheet: Container(
                height: 60.0,
                padding: const EdgeInsets.all(10.0),
                color: const Color.fromRGBO(80, 100, 188, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        /* const Text(
                                 "\u{20B9} ",
                                 style: TextStyle(
                                     fontSize: 15.0,
                                     color: Color.fromRGBO(255, 255, 255, 1)),
                               ),
                               Text(
                                 state
                                     .questiionlist[
                                         dropdownlist.indexOf(_choose)]
                                     .price,
                                style: const TextStyle(
                                     fontSize: 15.0,
                                     color: Color.fromRGBO(255, 255, 255, 1)),
                               ),
                               Text(
                                 "(1 Question on $_choose",
                                 style: const TextStyle(
                                     fontSize: 15.0,
                                     color: Color.fromRGBO(255, 255, 255, 1)),
                               ),*/
                        Text(
                          "\u{20B9} 150 (1 Question on Love)",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: const Text(
                            "Add Now",
                            style: TextStyle(
                              color: Color.fromRGBO(80, 100, 188, 1),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              floatingActionButton: Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 60.0),
                child: FloatingActionButton(
                  child: const Icon(Icons.menu),
                  backgroundColor: const Color.fromRGBO(252, 148, 44, 1),
                  onPressed: () {},
                ),
              ));
        });
      } else if (state is Astroquestionnotloaded) {
        return Builder(builder: (context) {
// User? user=state.user;
// print('user id is'+user!.id.toString());
          return Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(
                leading: IconButton(
                    alignment: Alignment.centerLeft,
                    onPressed: () {},
                    icon: const ImageIcon(
                      AssetImage("assets/hamburger.png"),
                      color: Color.fromRGBO(252, 148, 44, 1),
                    )),
                title: Image.asset(
                  'assets/icon.png',
                  fit: BoxFit.contain,
                  width: 60.0,
                  height: 60.0,
                ),
                centerTitle: true,
                backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                actions: <Widget>[
                  IconButton(
                      alignment: Alignment.center,
                      onPressed: () {
                        Navigator.of(contextt).push(MaterialPageRoute(
                            builder: (contextt) => const ProfilePage()));
                      },
                      icon: const ImageIcon(
                        AssetImage("assets/profile.png"),
                        color: Color.fromRGBO(252, 148, 44, 1),
                      )),
                ],
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    color: const Color.fromRGBO(80, 100, 188, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Wallet Balance: \u{20B9} 0",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Card(
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              child: const Text(
                                "Add Money",
                                style: TextStyle(
                                  color: Color.fromRGBO(80, 100, 188, 1),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Ask a Question",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Color.fromRGBO(7, 6, 5, 1)),
                        ),
                        Text(
                          "Seek accurate answers to your life problems and get  guidance towards the right path. Whether  the  problem is related to love, self, life, business, money, education, or work, our astrologers will do  an in depth study of your  birth  chart  to provide personalized responses along with remedies",
                          style: TextStyle(
                              fontSize: 17.0,
                              color: Color.fromRGBO(7, 6, 5, 1)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: const Text(
                      "Seeking  accurate  answers to different questions  troubling your mind? Ask credible astrologers to know what future has in store for you.",
                      style: TextStyle(
                          fontSize: 17.0, color: Color.fromRGBO(7, 6, 5, 1)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: const Color.fromRGBO(255, 241, 232, 1),
                      padding: const EdgeInsets.all(10.0),
                      child: const Text(
                        "\u2022 Personalized responses provided  by our team of vedic astologers within 24 hours. \n "
                        "\u2022 Qualified and experienced astrologers will look into your birth chart  and provide the right guidance. \n"
                        "\u2022 You can  seek  answers  to any part of your life and  for most  pressing  issues. \n"
                        "\u2022 Our team of Vedic astrologers will  not just part of answers but  also suggest remedial solution.",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Color.fromRGBO(252, 179, 134, 1)),
                      ),
                    ),
                  ),
                ],
              ),
              bottomSheet: Container(
                height: 60.0,
                padding: const EdgeInsets.all(10.0),
                color: const Color.fromRGBO(80, 100, 188, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        /* const Text(
                                 "\u{20B9} ",
                                 style: TextStyle(
                                     fontSize: 15.0,
                                     color: Color.fromRGBO(255, 255, 255, 1)),
                               ),
                               Text(
                                 state
                                     .questiionlist[
                                         dropdownlist.indexOf(_choose)]
                                     .price,
                                style: const TextStyle(
                                     fontSize: 15.0,
                                     color: Color.fromRGBO(255, 255, 255, 1)),
                               ),
                               Text(
                                 "(1 Question on $_choose",
                                 style: const TextStyle(
                                     fontSize: 15.0,
                                     color: Color.fromRGBO(255, 255, 255, 1)),
                               ),*/
                        Text(
                          "\u{20B9} 150 (1 Question on Love)",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: const Text(
                            "Add Now",
                            style: TextStyle(
                              color: Color.fromRGBO(80, 100, 188, 1),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              floatingActionButton: Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 60.0),
                child: FloatingActionButton(
                  child: const Icon(Icons.menu),
                  backgroundColor: const Color.fromRGBO(252, 148, 44, 1),
                  onPressed: () {},
                ),
              ));
        });
      } else if (state is Astroquestionloaded) {
        return const ProfilePage();
      }
      return Container();
    });
  }
}
