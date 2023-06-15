import 'package:flutter/material.dart';


class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage('assets/images/Dilan.jpeg')),
                color: Colors.white),
            child: SizedBox(
              height: 600,
              width: 700,
            ),
          ),
          Container(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: (() {
                            Navigator.pop(context);
                          }),
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 30,
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2,
                                    color: Color.fromARGB(121, 3, 65, 116)),
                                borderRadius: BorderRadius.circular(15),
                                color: Color.fromARGB(71, 0, 0, 0)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 80),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Search Movie",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        15,
                      ),
                      topRight: Radius.circular(15)),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 35, 71, 155),
                    Color.fromARGB(255, 39, 81, 145),
                  ])),
              child: SizedBox(
                height: 380,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/Dilan.jpeg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Colors.grey,
                                  Color.fromARGB(255, 255, 255, 255),
                                ])),
                            child: SizedBox(
                              height: 180,
                              width: 150,
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dilan\n1990',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Directed By\nPidi Baiq',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  Text(
                                    '8,5/10',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            'Sinopsis',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Flexible(
                              child: Text(
                            'Dilan 1990 adalah film drama romantis Indonesia tahun 2018 yang disutradarai oleh Fajar Bustomi dan Pidi Baiq. Film ini diangkat dari novel Dilan: Dia adalah Dilanku Tahun 1990 karya Pidi Baiq dan dibintangi oleh Iqbaal Ramadhan dan Vanesha Prescilla. Para pemain pendukungnya antara lain Farhan, Ira Wibowo, Tike Priatnakusumah, dan personel grup idola JKT48, Adhisty Zara. Ridwan Kamil, yang saat rilis film menjabat sebagai Wali Kota Bandung, juga ikut bermain di film ini. Kakak Vanesha, Sissy Priscillia, menjadi narator film sekaligus suara dari Milea dewasa.',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.justify,
                          )),
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(234, 5, 111, 198),
                      Color.fromARGB(212, 13, 51, 156)
                    ])),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Buy Ticket",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
