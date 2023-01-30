// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:khodrawati/constants.dart';
import 'package:khodrawati/models/FruitModels.dart';

class CardFruit extends StatelessWidget {
  const CardFruit({super.key, required this.fruitModels});

  final FruitModels fruitModels;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey.shade300, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(''),
              Icon(
                Icons.favorite_outline,
                color: Colors.black,
                size: 20,
              )
            ],
          ),
          Image.asset(
            fruitModels.path,
            width: double.infinity,
            height: 80,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                fruitModels.title,
                style: TextStyle(
                    color: Colors.grey.shade900,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: primaryColor,
                ),
                width: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.star,
                      size: 10,
                      color: Colors.white,
                    ),
                    Text(
                      "${fruitModels.views}/10",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${fruitModels.prix} DA",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.card_giftcard,
                size: 15,
                color: Colors.grey.shade700,
              )
            ],
          ),
        ],
      ),
    );
  }
}
