import 'modal_class.dart';
import 'package:flutter/material.dart';
const TextStyle _style =
TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);
List<Question> question = <Question>[
  Question(
    id: 1,
    money: 1000,
    column: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      color: Colors.purple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('1. In the Film "OMG Oh My God" Kanji', style: _style),
          Text("Bhai field a case against whom for the", style: _style),
          Text("damage of his shop due to an", style: _style),
          Text("earthquake ?", style: _style),
        ],
      ),
    ),
    a: "Bharat Mata",
    b: "Parliament",
    c: "Mumbai City",
    d: "Bhagwan",
  ),
  Question(
    id: 2,
    money: 2000,
    column: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("2. What is the new name of the", style: _style),
          Text("Hyderabad franchise that would", style: _style),
          Text("replace Deccan Charges in IPL6?", style: _style),
        ],
      ),
    ),
    a: "Sun Charges",
    b: "Nizam Jyoti",
    c: "Andhra Aces",
    d: "Sun risers \n Hyderabad",
  ),
  Question(
    id: 3,
    money: 3000,
    column: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("3. In india,under which Union Ministry", style: _style),
          Text("does the 'Rajbhasha Vibhag' function?", style: _style),
        ],
      ),
    ),
    a: "Home Affairs",
    b: "HRD",
    c: "Culture",
    d: "Law & Justice",
  ),
  Question(
    id: 4,
    money: 5000,
    column: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      color: Colors.yellowAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("4. According to a proverb,what is said", style: _style),
          Text("to be 'the mother of invention'?", style: _style),
        ],
      ),
    ),
    a: "Society",
    b: "Problem",
    c: "Science",
    d: "Necessity",
  ),
  Question(
    id: 5,
    money: 10000,
    column: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      color: Colors.lightGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("5. Which actress got married to", style: _style),
          Text("Siddharth Roy Kapur in 2012 ?", style: _style),
        ],
      ),
    ),
    a: "Prachi Desai",
    b: "Lisa Ray",
    c: "Vidya Balan",
    d: "Susmita Sen",
  ),
  Question(
    id: 6,
    money: 20000,
    column: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      color: Colors.lightBlueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("6. To whom did Ravindranath Tagore", style: _style),
          Text("dedicate his book 'visva parichay' written", style: _style),
          Text("on science", style: _style),
        ],
      ),
    ),
    a: "C v raman",
    b: "Satyendra \n nath Bose",
    c: "P c Royn",
    d: "Jagdish \n Chandra Bose",
  ),
  Question(
    id: 7,
    money: 40000,
    column: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("7. Which of these is a chemical element", style: _style),
          Text("present in the periodic table?", style: _style),
        ],
      ),
    ),
    a: "Eurocium",
    b: "Asiacium",
    c: "Americium",
    d: "Africium",
  ),
  Question(
    id: 8,
    money: 80000,
    column: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      color: Colors.indigo,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("8. Which of this is not a work of", style: _style),
          Text("Kalidas?", style: _style),
        ],
      ),
    ),
    a: "Raghuvamsham",
    b: "Kadambari",
    c: "Vikramorvasiyam",
    d: "Meghadutam",
  ),
  Question(
    id: 9,
    money: 160000,
    column: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      color: Colors.indigoAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("9. According to the Devi,Bhagavata,", style: _style),
          Text("from the tears of which god is the", style: _style),
          Text("rudraksha tree believed to have been", style: _style),
          Text("created?", style: _style),
        ],
      ),
    ),
    a: "Vishnu",
    b: "Shiva",
    c: "Krishna",
    d: "Kamadeva",
  ),
  Question(
    id: 10,
    money: 320000,
    column: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      color: Colors.orangeAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("10. Which is the name means 'gold-", style: _style),
          Text("like'?", style: _style),
        ],
      ),
    ),
    a: "Sonakshi",
    b: "Deepika",
    c: "Sonam",
    d: "Katrina",
  ),
  Question(
    id: 11,
    money: 320000,
    column: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      color: Colors.orangeAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("11. Which is the name means 'gold-", style: _style),
          Text("like'?", style: _style),
        ],
      ),
    ),
    a: "Sonakshi",
    b: "Deepika",
    c: "Sonam",
    d: "Katrina",
  ),
];