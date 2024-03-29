import 'package:flutter/material.dart';

class AnimatedInput extends StatelessWidget {
  late final AnimationController controller;
  late final Animation<Color> containerColorAnim;
  late final Animation<double> containerOpacityAnim;
  late final Animation<double> containerBorderRadiusAnim;
  late Animation<double> containerSizeAnim;

  AnimatedInput({required this.controller})
      : containerOpacityAnim = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.7, 0.9),
          ),
        ),
        containerSizeAnim = Tween<double>(
          begin: 60,
          end: 280,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.2, 0.3),
          ),
        ),
        containerBorderRadiusAnim = Tween<double>(
          begin: 0.0,
          end: 30,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.25, 0.4),
          ),
        ),
        containerColorAnim = Tween(
          begin: Colors.white.withOpacity(0),
          end: Colors.black12,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.0, 0.25),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _animated,
      animation: controller,
    );
  }

  @override
  Widget _animated(context, child) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: containerColorAnim.value,
        borderRadius: BorderRadius.all(
          Radius.circular(
            containerBorderRadiusAnim.value,
          ),
        ),
      ),
      margin: const EdgeInsets.all(5),
      width: containerSizeAnim.value,
      child: Opacity(
        opacity: containerOpacityAnim.value,
        child: Row(
          children: <Widget>[
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.search),
            const SizedBox(
              width: 20,
            ),
            Container(
              width: 200,
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Search ...",
                  labelStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
