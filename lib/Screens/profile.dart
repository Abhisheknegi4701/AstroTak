import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage() : super();

  @override
  State<StatefulWidget> createState() {
    return ProfilePageState();
  }
}

class ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Align(
            alignment: Alignment.centerRight,
            child: Card(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                      color: const Color.fromRGBO(252, 148, 44, 1),
                    )),
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: const Text(
                  "Logout",
                  style: TextStyle(
                    color: Color.fromRGBO(252, 148, 44, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
        bottom: TabBar(
          controller: tabController,
          unselectedLabelColor: Colors.white,
          labelColor: const Color.fromRGBO(252, 148, 44, 1),
          indicatorColor: const Color.fromRGBO(252, 148, 44, 1),
          tabs: [
            Container(
              height: 40,
              alignment: Alignment.center,
              color: Colors.white,
              child: Text(
                "My Profile",
                style: TextStyle(
                    color: tabController.index == 0
                        ? const Color.fromRGBO(252, 148, 44, 1)
                        : Colors.black),
              ),
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              color: Colors.white,
              child: Text(
                "Order History",
                style: TextStyle(
                    color: tabController.index == 1
                        ? const Color.fromRGBO(252, 148, 44, 1)
                        : Colors.black),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: const <Widget>[MyProfile(), OrderHistory()],
// if you want yo disable swiping in tab the use below code
//            physics: NeverScrollableScrollPhysics(),
        controller: tabController,
      ),
    );
  }
}

class OrderHistory extends StatelessWidget {
  const OrderHistory() : super();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "OrderHistory",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}

class MyProfile extends StatefulWidget {
  const MyProfile() : super();

  @override
  State<StatefulWidget> createState() {
    return MyProfileState();
  }
}

class MyProfileState extends State<MyProfile> {
  TextEditingController nameController = TextEditingController();
  TextEditingController dobController1 = TextEditingController();
  TextEditingController dobController2 = TextEditingController();
  TextEditingController dobController3 = TextEditingController();
  TextEditingController tobController1 = TextEditingController();
  TextEditingController tobController2 = TextEditingController();
  TextEditingController pobController = TextEditingController();
  static final _keyValidationForm = GlobalKey<FormState>();
  bool _autoValidate = false;

  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 0;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: selected == 0
                              ? const Color.fromRGBO(252, 148, 44, 1)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                        child: Text(
                          "Basic Profile",
                          style: TextStyle(
                              color:
                                  selected == 0 ? Colors.white : Colors.black,
                              fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = 1;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: selected == 1 || selected == 2
                              ? const Color.fromRGBO(252, 148, 44, 1)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding:
                            const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                        child: Text(
                          "Friends and Family Profile",
                          style: TextStyle(
                              color: selected == 1 || selected == 2
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
                selected == 0
                    ? basicPage()
                    : selected == 1
                        ? familyandfriend()
                        : selected == 2
                            ? addform()
                            : Container(),
              ],
            )),
      ),
    );
  }

  Widget basicPage() {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: const Center(
        child: Text("Basic Profile"),
      ),
    );
  }

  Widget familyandfriend() {
    return Container(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            margin: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            color: const Color.fromRGBO(224, 227, 241, 1),
            child: Row(
              children: [
                const Icon(
                  Icons.account_balance_wallet,
                  color: Color.fromRGBO(74, 96, 188, 1),
                ),
                const Text(
                  "Wallet balance \u{20B9} 0",
                  style: TextStyle(color: Color.fromRGBO(148, 158, 211, 1)),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Card(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(7.0)),
                      padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "Name",
                  style: TextStyle(color: Color.fromRGBO(148, 158, 211, 1)),
                ),
                Text(
                  "DOB",
                  style: TextStyle(color: Color.fromRGBO(148, 158, 211, 1)),
                ),
                Text(
                  "TOB",
                  style: TextStyle(color: Color.fromRGBO(148, 158, 211, 1)),
                ),
                Text(
                  "Relation",
                  style: TextStyle(color: Color.fromRGBO(148, 158, 211, 1)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                    padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: Colors.black)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Mohit kr",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "11-08-1994",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "8:30",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Brother",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                selected = 2;
                              });
                            },
                            icon: const Icon(
                              Icons.edit,
                              color: Color.fromRGBO(252, 148, 44, 1),
                            )),
                        IconButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: const Text(
                                      "Do you really want to Delete?"),
                                  actions: <Widget>[
                                    FlatButton(
                                      color:
                                          const Color.fromRGBO(252, 148, 44, 1),
                                      onPressed: () {
                                        Navigator.of(ctx).pop();
                                      },
                                      child: const Text(
                                        "Yes",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    FlatButton(
                                      color:
                                          const Color.fromRGBO(252, 148, 44, 1),
                                      onPressed: () {
                                        Navigator.of(ctx).pop();
                                      },
                                      child: const Text(
                                        "No",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.delete,
                              color: Color.fromRGBO(244, 67, 54, 1),
                            ))
                      ],
                    ),
                  );
                }),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selected = 2;
              });
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(252, 148, 44, 1),
                borderRadius: BorderRadius.circular(5.0),
              ),
              padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              child: const Text(
                "Add New Profile",
                style: TextStyle(color: Colors.white, fontSize: 14.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget addform() {
    return Container(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        selected = 1;
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    )),
                const Text(
                  "Add New Profile",
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ],
            ),
          ),
          Form(
            autovalidate: _autoValidate,
            key: _keyValidationForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Name",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5.0)),
                      child: TextFormField(
                        maxLines: 1,
                        controller: nameController,
                        validator: (value) {
                          if (value!.length < 5 || !value.contains('@')) {
                            return "Enter Valid Name";
                          }
                          return null;
                        },
                        maxLength: 1,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                            counterText: '',
                            border: InputBorder.none,
                            fillColor: Color(0xfff3f3f4),
                            filled: true),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Date of Birth",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 5,
                          margin:
                              const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: TextFormField(
                            maxLines: 1,
                            controller: dobController1,
                            maxLength: 1,
                            validator: (value) {
                              if (value!.length < 5 || !value.contains('@')) {
                                return "Invalid DD";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                                counterText: '',
                                border: InputBorder.none,
                                hintText: "DD",
                                fillColor: Color(0xfff3f3f4),
                                filled: true),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 5,
                          margin:
                              const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: TextFormField(
                            maxLines: 1,
                            controller: dobController2,
                            maxLength: 1,
                            validator: (value) {
                              if (value!.length < 5 || !value.contains('@')) {
                                return "Invalid MM";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                                counterText: '',
                                border: InputBorder.none,
                                hintText: "MM",
                                fillColor: Color(0xfff3f3f4),
                                filled: true),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 4,
                          margin:
                              const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: TextFormField(
                            maxLines: 1,
                            controller: dobController3,
                            maxLength: 1,
                            validator: (value) {
                              if (value!.length < 5 || !value.contains('@')) {
                                return "Invalid YYYY";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                                counterText: '',
                                border: InputBorder.none,
                                hintText: "YYYY",
                                fillColor: Color(0xfff3f3f4),
                                filled: true),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Time of Birth",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          margin:
                              const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: TextFormField(
                            maxLines: 1,
                            controller: tobController1,
                            maxLength: 1,
                            validator: (value) {
                              if (value!.length < 5 || !value.contains('@')) {
                                return "Invalid HH";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                                counterText: '',
                                border: InputBorder.none,
                                hintText: "HH",
                                fillColor: Color(0xfff3f3f4),
                                filled: true),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          margin:
                              const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: TextFormField(
                            maxLines: 1,
                            controller: tobController2,
                            maxLength: 1,
                            validator: (value) {
                              if (value!.length < 5 || !value.contains('@')) {
                                return "Invalid MM";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                                counterText: '',
                                border: InputBorder.none,
                                hintText: "MM",
                                fillColor: Color(0xfff3f3f4),
                                filled: true),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Place of Birth",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5.0)),
                      child: TextFormField(
                        maxLines: 1,
                        controller: pobController,
                        maxLength: 1,
                        validator: (value) {
                          if (value!.length < 5 || !value.contains('@')) {
                            return "Please Select a City";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                            counterText: '',
                            border: InputBorder.none,
                            fillColor: Color(0xfff3f3f4),
                            filled: true),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "Gender",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              margin: const EdgeInsets.fromLTRB(
                                  10.0, 0.0, 10.0, 0.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: DropdownButton<String>(
                                items: <String>['Male', 'Female', 'Others']
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                isExpanded: true,
                                onChanged: (_) {},
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "Relation",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              margin: const EdgeInsets.fromLTRB(
                                  10.0, 0.0, 10.0, 0.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: DropdownButton<String>(
                                items: <String>[
                                  'Brother',
                                  'Mother',
                                  'Sister',
                                  'Dad'
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                isExpanded: true,
                                onChanged: (_) {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    if (_keyValidationForm.currentState!.validate()) {
                    } else {
                      setState(() {
                        _autoValidate = true;
                      });
                    }
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(252, 148, 44, 1),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: const Text(
                      "Save Changes",
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
