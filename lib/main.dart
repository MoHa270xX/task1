import 'package:flutter/material.dart';

void main() {
  runApp(const Task_1());
}

class Task_1 extends StatelessWidget {
  const Task_1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Profile Page", style: TextStyle(fontSize: 24)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(color: Color(0xff607D8B)),
              ),
              Positioned(
                top: 60,
                left: 20,
                child: CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage("assets/image/myphoto.jpg"),
                ),
              ),
              Positioned(
                left: 350,
                right: 20,
                top: 120,

                child: Icon(Icons.edit, size: 40, color: Colors.white),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, top: 32),
            child: Text(
              "Mohamed Ibrahim",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, top: 16),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Icon(Icons.email, size: 35),
                ),
                Text(
                  "moha270x@gmail.com",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 32, top: 16),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Icon(Icons.phone, size: 35),
                ),
                Text(
                  "+201003178639",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 16,
                bottom: 16,
              ),
              child: ListView(
                children: [
                  ListVeiwBody(
                    title: "Task 1",
                    subTitle: "Complete your profile",
                    saveIcone: Icons.save,
                    doneIcone: Icons.check,
                    colorOfIcone: Colors.black,
                  ),
                  ListVeiwBody(
                    title: "Task 2",
                    subTitle: "Verify your email",
                    saveIcone: Icons.save,
                    doneIcone: Icons.hourglass_bottom_outlined,
                    colorOfIcone: Colors.deepOrangeAccent,
                  ),
                  ListVeiwBody(
                    title: "Task 3",
                    subTitle: "Add a phone number",
                    saveIcone: Icons.save,
                    doneIcone: Icons.close,
                    colorOfIcone: Colors.red,
                  ),
                  SettingWidget(title: "Settings", saveIcone: Icons.settings),
                  ElevatedButtonExample(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListVeiwBody extends StatelessWidget {
  ListVeiwBody({
    super.key,
    required this.title,
    required this.subTitle,
    required this.saveIcone,
    required this.doneIcone, required this.colorOfIcone,
  });
  final String title;
  final String subTitle;
  final IconData saveIcone;
  final IconData doneIcone;
  final Color colorOfIcone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Card(
        color: Color(0xffF7F2FA),
        child: Container(
          child: ListTile(
            leading: Icon(saveIcone, size: 30),
            title: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(title, style: TextStyle(fontSize: 22)),
            ),

            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                subTitle,
                style: TextStyle(fontSize: 18, color: Color(0xff7B7781)),
              ),
            ),
            trailing: Icon(doneIcone, size: 35,color: colorOfIcone,),
          ),
        ),
      ),
    );
  }
}

class SettingWidget extends StatelessWidget {
  SettingWidget({required this.title, required this.saveIcone, super.key});
  final String title;
  final IconData saveIcone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Card(
        color: Color(0xffF7F2FA),
        child: Container(
          child: ListTile(
            leading: Icon(saveIcone, size: 30),
            title: Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: Text(title, style: TextStyle(fontSize: 22)),
            ),
          ),
        ),
      ),
    );
  }
}

class ElevatedButtonExample extends StatelessWidget {
  const ElevatedButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          textStyle: TextStyle(fontSize: 18),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shadowColor: Colors.black,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 18,
            right: 18,
            top: 4,
            bottom: 4,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Permium Member"),
              Icon(Icons.star, size: 30, color: Colors.yellowAccent),
            ],
          ),
        ),
      ),
    );
  }
}
