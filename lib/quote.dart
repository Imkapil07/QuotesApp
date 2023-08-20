import 'package:flutter/material.dart';

class MyQuote extends StatefulWidget {
  const MyQuote({super.key});

  @override
  State<MyQuote> createState() => _MyQuoteState();
}

class _MyQuoteState extends State<MyQuote> {
  int _index = 0;

  List quotes = [
    "The only way to do great work is to love what you do.",
    "Life is what happens when you're busy making other plans.",
    "The future belongs to those who believe in the beauty of their dreams.",
    "Success is not final, failure is not fatal: It is the courage to continue that counts.",
    "In three words I can sum up everything I've learned about life: it goes on.",
    "The best time to plant a tree was 20 years ago. The second best time is now.",
    "You miss 100% of the shots you don't take.",
    "The only limit to our realization of tomorrow will be our doubts of today.",
    "Don't watch the clock; do what it does. Keep going.",
    "I have not failed. I've just found 10,000 ways that won't work.",
    "Believe you can and you're halfway there.",
    "Strive not to be a success, but rather to be of value.",
    "Life is 10% what happens to us and 90% how we react to it.",
    "The only person you should try to be better than is the person you were yesterday.",
    "Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent.shade400,
        title: const Text("Quote App"),
      ),
      body: Container(
        color: const Color.fromARGB(255, 223, 218, 218),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    margin: const EdgeInsets.all(25.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(14.5),
                    ),
                    child: Center(
                        child: Text(
                      quotes[_index % quotes.length],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16.5,
                        fontStyle: FontStyle.italic,
                      ),
                    ))),
              ),
            ),
            const Divider(
              thickness: 1.2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: ElevatedButton.icon(
                onPressed: _showQoute,
                icon: const Icon(Icons.wb_sunny),
                label: const Text(
                  "Inspire Me!",
                  style: TextStyle(color: Colors.white, fontSize: 18.8),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.greenAccent.shade400),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  void _showQoute() {
    setState(() {
      _index += 1;
    });
  }
}
