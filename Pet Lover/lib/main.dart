// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  // ignore: duplicate_ignore, duplicate_ignore
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Fish(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pet Lovers"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Image.asset("assets/dog.jpg"),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "E-mail",
                  hintText: "Enter your e-mail",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Enter your password",
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 80,
                    right: 80,
                    bottom: 10,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Log In ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            // DrawerHeader(
            //   // ignore: sort_child_properties_last
            //   child: Text(
            //     "Lucifer",
            //     style: TextStyle(fontSize: 20),
            //   ),
            //   decoration: BoxDecoration(color: Colors.blue),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text("Sagar Chaudhary"),
              accountEmail: Text("sagarcdy@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://scontent.fktm17-1.fna.fbcdn.net/v/t39.30808-6/328994681_923607742104018_8098544775933261079_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=iGj2sWueGscAX8Nmh8e&_nc_ht=scontent.fktm17-1.fna&oh=00_AfAyP0uH-dDXW0l_h7hFaTFNMD0yj765FD0cNpbJuxcojA&oe=647E5029"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("E-mail"),
              subtitle: Text("sagarcdy@gmail.com"),
              trailing: Icon(Icons.send),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        child: const Icon(Icons.edit),
      ),
    );
  }
}

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Pet Lover"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Sagar Chaudhary"),
              accountEmail: Text("sagarcdy@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1529429617124-95b109e86bb8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=735&q=80"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("E-mail"),
              subtitle: Text("sagarcdy@gmail.com"),
              trailing: Icon(Icons.send),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  style: ButtonStyle(
                      side: MaterialStatePropertyAll(
                          BorderSide(width: 2, color: Colors.blue))),
                  onPressed: () {},
                  child: Text(
                    "Dog Supplies",
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                      side: MaterialStatePropertyAll(
                          BorderSide(width: 2, color: Colors.blue))),
                  onPressed: () {},
                  child: Text(
                    "Cat Supplies",
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                      side: MaterialStatePropertyAll(
                          BorderSide(width: 2, color: Colors.blue))),
                  onPressed: () {},
                  child: Text(
                    "Fish Supplies",
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.blue),
            ),
            child: Image.asset("assets/husk.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blue),
                  ),
                  child: Image.asset(
                    "assets/cat.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blue),
                  ),
                  child: Image.asset(
                    "assets/fish.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 50,
                  right: 50,
                  bottom: 10,
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Explore More ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Dog extends StatelessWidget {
  const Dog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dogs Breed"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Sagar Chaudhary"),
              accountEmail: Text("sagarcdy@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1529429617124-95b109e86bb8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=735&q=80"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("E-mail"),
              subtitle: Text("sagarcdy@gmail.com"),
              trailing: Icon(Icons.send),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 200,
                      width: 190,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      child: Image(
                        image: NetworkImage(
                            "https://www.akc.org/wp-content/uploads/2017/11/Siberian-Husky-standing-outdoors-in-the-winter.jpg"),
                        fit: BoxFit.cover,
                      )),
                  Container(
                    height: 200,
                    width: 190,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Image(
                      image: NetworkImage(
                          "https://i.guim.co.uk/img/media/3a5dbbf3c9b07b6fee44bce4cc0d81928285a166/0_227_5184_3110/master/5184.jpg?width=1200&quality=85&auto=format&fit=max&s=c5c144d7a61f8ff7b4cfb39be476ad73"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65, right: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Text(
                      "   Husky",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Text(
                      "     Pog",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 200,
                      width: 190,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      child: Image(
                        image: NetworkImage(
                            "https://cdn-fastly.petguide.com/media/2022/02/16/8260985/japanese-spitz.jpg?size=720x845&nocrop=1"),
                        fit: BoxFit.cover,
                      )),
                  Container(
                    height: 200,
                    width: 190,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Image(
                      image: NetworkImage(
                          "https://media.istockphoto.com/id/1251621519/photo/a-friendly-pit-bull-terrier-mixed-breed-dog-with-floppy-ears-and-a-happy-expression.jpg?s=612x612&w=0&k=20&c=HDCueFlTUQYawda8UD2RdbQVzxXlT-LOGXd5lAwk5Vw="),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20,
                    width: 120,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Text(
                      " Japanese Spitz ",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Text(
                      "   Pitbull",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 200,
                      width: 190,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      child: Image(
                        image: NetworkImage(
                            "https://cf.ltkcdn.net/dogs/dog-breeds/images/orig/323566-1600x1066-german-shepherd-characteristics.jpg"),
                        fit: BoxFit.cover,
                      )),
                  Container(
                    height: 200,
                    width: 190,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Image(
                      image: NetworkImage(
                          "https://betterpet.com/wp-content/uploads/2023/02/neapolitan-mastiff.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20,
                    width: 150,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Text(
                      "  German Shephered",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Text(
                      "   Matiff",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Cat extends StatelessWidget {
  const Cat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cats Breed"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Sagar Chaudhary"),
              accountEmail: Text("sagarcdy@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1529429617124-95b109e86bb8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=735&q=80"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("E-mail"),
              subtitle: Text("sagarcdy@gmail.com"),
              trailing: Icon(Icons.send),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 200,
                      width: 190,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      child: Image(
                        image: NetworkImage(
                            "https://img.freepik.com/premium-photo/greek-cat-walks-along-street-greek-village-island-skopelos-greece_610315-5806.jpg?w=360"),
                        fit: BoxFit.cover,
                      )),
                  Container(
                    height: 200,
                    width: 190,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Image(
                      image: NetworkImage(
                          "https://www.thesprucepets.com/thmb/D3tqi0xMC2xkaIrKYXO0xPGNoGo=/1419x0/filters:no_upscale():strip_icc()/GettyImages-514937248-363cfffc62414aa0aee6afb7648e9027.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65, right: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Text(
                      "   Manx ",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Text(
                      "  Somali",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 200,
                      width: 190,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      child: Image(
                        image: NetworkImage(
                            "https://img.cutenesscdn.com/375/clsd/getty/9d63ea7f7bd0464b8ebcf42a5d6b8a45"),
                        fit: BoxFit.cover,
                      )),
                  Container(
                    height: 200,
                    width: 190,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Image(
                      image: NetworkImage(
                          "https://149837733.v2.pressablecdn.com/wp-content/uploads/2019/09/Toyger-Cat.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65, right: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Text(
                      " Persian ",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Text(
                      "   Toyger",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 200,
                      width: 190,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      child: Image(
                        image: NetworkImage(
                            "https://c8.alamy.com/comp/KG18R4/cat-ocicat-black-spotted-silver-KG18R4.jpg"),
                        fit: BoxFit.cover,
                      )),
                  Container(
                    height: 200,
                    width: 190,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Image(
                      image: NetworkImage(
                          "https://www.litter-robot.com/media//americancurl-cat5.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20,
                    width: 150,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Text(
                      "  Ocicat",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Text(
                      " Curl",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Fish extends StatelessWidget {
  const Fish({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Fish Breed"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Sagar Chaudhary"),
              accountEmail: Text("sagarcdy@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1529429617124-95b109e86bb8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=735&q=80"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("E-mail"),
              subtitle: Text("sagarcdy@gmail.com"),
              trailing: Icon(Icons.send),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 200,
                      width: 190,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      child: Image(
                        image: NetworkImage(
                            "https://aquadiction.world/img/profile/lionhead-goldfish-8.webp"),
                        fit: BoxFit.cover,
                      )),
                  Container(
                    height: 200,
                    width: 190,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Image(
                      image: NetworkImage(
                          "https://www.aquaholicsonline.com.au/assets/full/LF-RJEWEL6CM.jpg?20210309033054"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65, right: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Text(
                      "Lion Head ",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Text(
                      "  Jewel",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 200,
                      width: 190,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      child: Image(
                        image: NetworkImage(
                            "https://petkeen.com/wp-content/uploads/2021/01/Comet-Goldfish-on-aquarium_agus-fitriyanto-suratno_shutterstock.jpg"),
                        fit: BoxFit.cover,
                      )),
                  Container(
                    height: 200,
                    width: 190,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Image(
                      image: NetworkImage(
                          "https://www.vdvelde.com/wp-content/uploads/2023/02/Komeetstaart-goudvis-1-scaled.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65, right: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Text(
                      " Goldfish ",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Text(
                      "   Comet",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 200,
                      width: 190,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.blue)),
                      child: Image(
                        image: NetworkImage(
                            "https://www.aquariumofpacific.org/images/made_new/images-uploads-clownfish_600_q85.jpg"),
                        fit: BoxFit.cover,
                      )),
                  Container(
                    height: 200,
                    width: 190,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Image(
                      image: NetworkImage(
                          "https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1500w,f_auto,q_auto:best/streams/2012/June/120627/433864-120625-lionfish-hmed-930a.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20,
                    width: 150,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Text(
                      "  Clownfish",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue)),
                    child: Text(
                      " Lionfish",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
