import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box(
      {super.key, required this.i, required this.used, required this.onTap});
  final int i;
  final List<String> used;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(i),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.orange
        ),
        // color: Colors.blue,
        margin: const EdgeInsets.all(8),
        child: Center(
          child: Text(used[i],
              style: const TextStyle(fontSize: 50, color: Colors.white)),
        ),
      ),
    );
  }
}

class RestartButton extends StatelessWidget {
  const RestartButton({super.key, required this.press});
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: ElevatedButton(onPressed: press, child: const Text("Restart",), style: ElevatedButton.styleFrom(
      primary: Colors.amberAccent,
        onPrimary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Change the button's border radius here
        ),),
    ));
  }
}
