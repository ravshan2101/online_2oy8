import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xefef018197),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              child: Image(image: AssetImage('assets/images/amazon_logo.png')),
            ),
            Container(
              child: Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
                ],
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(),
      body: Container(
        color: Colors.grey.shade300,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              color: Color(0xefef018197),
              child: Container(
                height: 50,
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Row(
                  children: const [
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          hintText: 'What are you looking for',
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.search,
                            color: Color(0xefef018197),
                          )),
                    )),
                    Icon(
                      Icons.camera_alt,
                      color: Color(0xefef018197),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    color: Colors.blueGrey,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Deliver to Korea, Republic of',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 140,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          width: 180,
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              'We ship 45 million products',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          color: Colors.white,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(70),
                                    bottomLeft: Radius.circular(70)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/image_1.jpeg'))),
                          ),
                        ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 160,
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Sign in for the best experience',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          color: Colors.orange,
                          child: const Center(
                            child: Text(
                              'Sign in',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        // ignore: prefer_const_constructors
                        Text(
                          'Create an account',
                          style: const TextStyle(
                              color: Colors.blueAccent, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Deal of the Day',
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Image(
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 240,
                            image: AssetImage('assets/images/item_7.jpeg')),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Up to 31% off APC UPS Battery Back',
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '\$10.99 - \$79.9',
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Best sellers in Electronics',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: Row(children: [
                            Expanded(
                                child: Container(
                              child: Column(
                                children: const [
                                  Expanded(
                                      child: Image(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/item_7.jpeg'),
                                  )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Expanded(
                                      child: Image(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/item_6.jpeg'),
                                  )),
                                ],
                              ),
                            )),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                                child: Container(
                              child: Column(
                                children: const [
                                  Expanded(
                                      child: Image(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/item_4.jpeg'),
                                  )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Expanded(
                                      child: Image(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/item_5.jpeg'),
                                  )),
                                ],
                              ),
                            )),
                          ]),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
