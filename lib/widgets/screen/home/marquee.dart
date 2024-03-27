import 'dart:async';

import 'package:flutter/material.dart';

class MarqueeWidget extends StatefulWidget {
  MarqueeWidget({super.key});
  final List _texts = [
    'Livraison gratuite à partir de 60 £',
    '15 % de réduction pour les nouveaux abonnés',
    'Retours gratuits au Royaume-Uni'
  ];
  String _content = 'Waiting...';
  int _textIndex = 0;
  Color _setColor(int index) {
    if (index == _textIndex) return Color.fromARGB(255, 91, 149, 255);
    return Colors.white.withOpacity(0.4);
  }

  // ? veut dire que la variable peut etre null
  Timer? _timer;
  // void _setTimer (Timer ){}
  @override
  State<MarqueeWidget> createState() => _MarqueeWidgetState();
}

class _MarqueeWidgetState extends State<MarqueeWidget> {
  void _setTimer(Timer timer) {
    if (widget._textIndex < widget._texts.length - 1) {
      widget._textIndex++;
    } else {
      widget._textIndex = 0;
    }
    setState(() {
      widget._content = widget._texts[widget._textIndex];
    });
  }

  @override
  void initState() {
    super.initState();
    widget._content = widget._texts[0];
    Timer _timer = Timer.periodic(const Duration(seconds: 5), _setTimer);
  }

  @override
  void dispose() {
    super.dispose();
    widget._timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: Column(
        children: [
          Text(
            widget._content,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              // fontFamily: 'Foundation',
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 5,
                      height: 5,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 2,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget._setColor(index),
                      ),
                    );
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
