import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: const EdgeInsets.only(left: 10.0, top: 20.0),
            alignment: Alignment.topRight,
            color: Colors.deepPurpleAccent,
            child: const Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    "Car!",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30.0,
                        fontFamily: 'UbuntuMono',
                        // fontWeight: FontWeight.w300,
                        fontWeight: FontWeight.w700,
                        // fontStyle: FontStyle.italic,
                        color: Colors.white),
                  )),
                  Expanded(
                      child: Text(
                    "Battle & Magnite!",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'UbuntuMono',
                        // fontWeight: FontWeight.w300,
                        fontWeight: FontWeight.w700,
                        // fontStyle: FontStyle.italic,
                        color: Colors.white),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    "Bike!",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30.0,
                        fontFamily: 'UbuntuMono',
                        // fontWeight: FontWeight.w300,
                        fontWeight: FontWeight.w700,
                        // fontStyle: FontStyle.italic,
                        color: Colors.white),
                  )),
                  Expanded(
                      child: Text(
                    "Livo & BMW!",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'UbuntuMono',
                        // fontWeight: FontWeight.w300,
                        fontWeight: FontWeight.w700,
                        // fontStyle: FontStyle.italic,
                        color: Colors.white),
                  )),
                ],
              ),
              LandingImage(),
              PhoneButton()
            ])
            // same as for column for formating the code

            // width: 200.0,
            // height: 120.0,
            // padding: EdgeInsets.all(60.0),
            // margin: EdgeInsets.only(right: 20.0,bottom: 20.0),
            // child: Text("H!", textDirection: TextDirection.ltr,
            //   style: TextStyle(
            //     fontSize: 30.0,
            //     fontFamily: 'UbuntuMono',
            //     // fontWeight: FontWeight.w300,
            //     fontWeight: FontWeight.w700,
            //     // fontStyle: FontStyle.italic,
            //     color: Colors.white
            //   ),
            // ),
            ));
  }
}

class LandingImage extends StatelessWidget {
  const LandingImage({super.key});

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/Landing.png');
    Image image = Image(image: assetImage, width: 100.0, height: 100.0);

    return Container(child: image);
  }
}

class PhoneButton extends StatelessWidget {
  const PhoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 200.0,
      height: 50.0,
      child: ElevatedButton(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.blueAccent)),
        onPressed: () => BookVihical(context),
        child: const Text(
          "Book Bike/car!",
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
              fontFamily: 'UbuntuMono',
              fontWeight: FontWeight.w300),
        ),
      ),
    );
  }

  void BookVihical(BuildContext context) {

    var alertDialog = const AlertDialog(
      title: Text("Your Appointment is Done Succesfully!"),
      content: Text("Have a Safe Ride Sir!"),
    );
    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
