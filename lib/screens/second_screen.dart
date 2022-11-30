import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:iseneca/providers/users_providers.dart';
import 'package:iseneca/screens/home_screen.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  final String? first_name;
  final String? password;
  const SecondScreen({Key? key, this.first_name, this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UsersProvider>(context,listen:false);
    return FutureBuilder(
      future: userProvider.getDataFromGoogleSheet(),
      builder: (BuildContext context, AsyncSnapshot snapshot){
          if(snapshot.hasData){
            snapshot.data.forEach(user))
          }
      }
    );
    
  }
}


















return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              icon: const Icon(Icons.arrow_back)),
        ],
        leading: const Text(''),
      ),
      body: Column(
        children: [
          Image(
            image: const NetworkImage(
                'https://media.discordapp.net/attachments/922814405882818570/1037708121142988800/iseneca.png'),
            width: double.infinity,
            height: 150,
            color: Colors.blue.shade900,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$first_name',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Icon(Icons.people),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                height: 40,
              ),
              Text(
                'C.E.I.P. Maestros Eduardo Lobillo',
                style: TextStyle(color: Colors.lightBlue, fontSize: 18),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                height: 30,
              ),
              Text(
                'Perfil Profesorado',
                style: TextStyle(color: Colors.lightBlue, fontSize: 18),
              )
            ],
          )
        ],

        //Text('$first_name'),
      ),
    );