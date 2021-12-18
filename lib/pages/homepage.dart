import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuisine App',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
      )
        ),
      ),
      body : ListView(
        children: [
          lobster(),
          topic(),
          profile(),
          date(),
          card(),
          line(),
          paragraph(),
          button1(),
          button2(),
        ],
      )
    );
  }

Container button1() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('วัตถุดิบที่ใช้'),
      ),
    );
  }

  Container button2() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('ขั้นตอนการทำ'),
      ),
    );
  }

  Container paragraph() {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 10, 30, 20),
      child: Column(
        children: const [
          Text(
                'ใครว่าทำเมนูล็อบสเตอร์นั้นไม่สามารถทำได้ที่บ้าน จิ๋วหิวโซคนนี้ขอคาน! เพราะวันนี้จะมาชวนเพื่อน ๆ เข้าครัวทำเมนู “ล็อบสเตอร์อบชีส” ที่บ้านกันแบบง่าย ๆ และไม่ต้องเตรียมล็อบสเตอร์ให้วุ่นวาย ส่วนซอสก็สามารถทำได้ไม่ยาก งานนี้รับรองว่าเด็ดไม่แพ้ร้านเลยล่ะจ้า ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),   
        ],
      ),
    );
  }

Row line() {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 20),
            child: Divider(
              thickness: 2,
              color: Colors.grey[700],
            ),
          ),
        ),
        const Text('เกริ่นสักหน่อย',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 20),
            child: Divider(
              thickness: 2,
              color: Colors.grey[700],
            ),
          ),
        ),  
      ],
    );
  }


  Container card() {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Card(
            color: Colors.orange[100],
            child: Row(
              children: [
                ob1(),
                ob2(),
                ob3(),
                ob4(),
              ],
            ),
            
          ),
    );
  }

Widget ob4() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 8, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.user,
              color: Colors.green,
            ),
            Text(
              'สำหรับ',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            ),
            Text(
              '5 เสิร์ฟ',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            ),
          ],
        ),    
    ),
    );
    
  }

Widget ob3() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 8, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.gripfire,
              color: Colors.red,
            ),
            Text(
              'แคลอรี่',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            ),
            Text(
              '300 Kcal/เสิร์ฟ',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            ),
          ],
        ),    
    ),
    );
    
  }

 Widget ob2() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 8, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.utensils,
              color: Colors.orange,
            ),
            Text(
              'เวลาปรุง',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            ),
            Text(
              '50 นาที',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            ),
          ],
        ),    
    ),
    );
    
  }

  Widget ob1() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(25, 10, 8, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FaIcon(
              FontAwesomeIcons.stopwatch,
              color: Colors.blue,
            ),
            Text(
              'เวลาเตรียม',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            ),
            Text(
              '10 นาที',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            ),
          ],
        ),    
    ),
    );
    
  }

  Widget date() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
              '17 ธ.ค. 2564 ● โดย เชฟกิ๊ฟ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[850],
              ),
            ),
      ],
    );
  }

  Container profile() {
    return Container(
          child: const CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage('https://scontent.fhdy2-1.fna.fbcdn.net/v/t39.30808-6/268950260_1288039978326483_1796520402318123278_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeExAH0IXLK23um3LGUkG9ZuTzCrce1N8fJPMKtx7U3x8sRne7ej0jBoRHu0E3Ya0TG_IRj1rw6C8Kqamy__kYm5&_nc_ohc=BRToXoKxdasAX_59J3s&tn=et-ri8-P6DS7ItuR&_nc_zt=23&_nc_ht=scontent.fhdy2-1.fna&oh=00_AT-VnT5_BNXTvrxWPp_kV2gbSHNkXqpLbiZdyvIsLf2raQ&oe=61C19F02',
          ),
          ),
        );
  }

  Container topic() {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: Column(
        children: const [
          Text(
                'วิธีทำ “ล็อบสเตอร์อบชีส” เมนูอาหารฝรั่งทำง่ายแบบไม่ง้อร้าน!',
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),   
          Text(
                'เนื้อล็อบสเตอร์เด้ง ๆ โปะซอสเข้มข้นและชีสเน้น ๆ กับเมนู “ล็อบสเตอร์อบชีส” ที่มาพร้อมวิธีทำที่ทำตามได้ไม่ยาก พร้อมแล้วตามมาเข้าครัวกันเลย! ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.justify,
              ),
        ],
      ),
    );
  }

  SizedBox lobster() {
    return SizedBox(
      width: 200,
      height: 200,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: new AssetImage('images/lobster_cover.jpg')
          ),
        ),
      ),
    );
  }






}