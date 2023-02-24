
import 'package:flutter/material.dart';


class AmountWidget extends StatefulWidget {

  const AmountWidget({super.key});
  @override
  State<AmountWidget> createState() => _AmountWidgetState();
}

class _AmountWidgetState extends State<AmountWidget> {
  
  bool _showWidget = true;
  bool show = false;
  Color? _color = Colors.blue[800];
  Color? _textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _color,
        borderRadius: BorderRadius.circular(20.0)
      ),
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: 400,
      height: 50,
      child: GestureDetector(
        child: Text(_showWidget ? "Show Amount" : "Rs.1000",
              style: TextStyle(
                color: _textColor,
                fontWeight: FontWeight.w500,
                fontSize: 20.0
              ),
              ),
              onTap: () {
                if (show == false){
                  setState(() {
                    _color = Colors.blue[200];
                    _textColor = Colors.blue[800];
                    show = true;
                  });
                }
                else if (show == true){
                  setState(() {
                     _color = Colors.blue[900];
                     _textColor = Colors.white;
                    show = false;
                  });
                }
              setState(() {
                _showWidget = !_showWidget;
              });
            },
      ),
    );
        // _showWidget
        //     ? Container(
        //         width: double.infinity,
        //         height: 100.0,
        //         color: Colors.lightBlue,
        //         child: const Center(
        //           child: Text("Show Widget"),
        //         ),
        //       )
        //     : Container(),
      //],
    //);
  }
}