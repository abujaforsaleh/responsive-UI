import 'package:flutter/material.dart';
import 'package:responsive_ui/screens/helper/responsive_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);



  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: itemBuilder());
              },),
        )

      ),

    );
  }

  ResponsiveHelper itemBuilder() {
    return ResponsiveHelper(

          mobile: Column(
            children: [
              sliderWidget(),
              const SizedBox(height: 10,),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: ((MediaQuery.of(context).size.width-320)/2)-10),
                  child: sliderTitleWidget(18.0)),

            ],
          ),
          tab: Row(
            children: [
              sliderWidget(),
              const SizedBox(width: 10,),
              Expanded(
                child: sliderTitleWidget(21.0),
              ),

            ],
          ),
          desktop: Row(
            children: [
              sliderWidget(),
              const SizedBox(width: 10,),
              Expanded(
                child: sliderTitleWidget(21.0),
              ),
            ],
          ),
        );
  }

  Text sliderTitleWidget(double fontSize) {
    return Text("Hello world! \n\nThis is pulok and i am a student of bangladesh army university of engineering and technology.",
                  style: TextStyle(fontSize: fontSize),
                );
  }

  Container sliderWidget() {
    return Container(
            width: 320,
            height: 180,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.redAccent, Colors.pink],),
              borderRadius: BorderRadius.circular(12),

            ),
          );
  }
}
