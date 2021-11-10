import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Theme.of(context).focusColor,
            content: const Text("Sell your Kidney"),
          ),
        );
      },
      child: const Text("Add to cart"),
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Theme.of(context).focusColor),
        shape: MaterialStateProperty.all(const StadiumBorder()),
      ),
    );
  }
}
