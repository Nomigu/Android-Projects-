import 'package:baara_app/models/services.dart';
import 'package:flutter/material.dart';

class ItemDigitalServicese extends StatelessWidget {
  final Services services;
  ItemDigitalServicese({
    required this.services,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, bottom: 10),
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 2,
            spreadRadius: 2,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(services.imageUrl),
                  fit: BoxFit.fill
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            services.text,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
