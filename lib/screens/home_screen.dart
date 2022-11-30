import 'package:flutter/material.dart';
import 'package:iseneca/screens/second_screen.dart';

import '../widgets/custom_imput_field.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
     final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String,String> formValues = {
       'first_name': 'Alejandro',
        'password': '12345',
      
    };  
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Center(
        child:
          SingleChildScrollView(
            child:Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
             child: Form(
              key: myFormKey,
               child: Column(
                children:  [
                   const Image(            
                    image: NetworkImage('https://media.discordapp.net/attachments/922814405882818570/1037708121142988800/iseneca.png'),   
                      width: double.infinity,
                     height: 150,                      
                    ),              
                    CustomImputField(labelText: 'Usuario', hintText:  'Usuario',formProperty: 'first_name' ,formValues: formValues,),
                    const SizedBox(height: 30),
                    CustomImputField(labelText: 'Contraseña', hintText: 'Contraseña',obscureText: true,formProperty: 'role',formValues: formValues,suffixIcon: Icons.remove_red_eye,),
                    const  SizedBox(height: 30),
     
                    ElevatedButton(
                      onPressed: (){
                        FocusScope.of(context).requestFocus(FocusNode());
                         if(!myFormKey.currentState!.validate()){
                          print('Formulario es false');
                            return;
                         }else if (formValues['first_name'] == 'aljarilla' && formValues['password'] == '12345'){
                           Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  SecondScreen(first_name: formValues['first_name'], password: formValues['password']))
                            );
                         }
                      },
                         style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white, // Background color
                         ),
                      child: const SizedBox(
                        width: double.infinity,
                        height: 75,
                        child: Center(child: Text(
                          "Entrar",
                           style: TextStyle(fontSize: 20, color: Colors.blue),
                          ),),
                      ),             
                      )
                ],
               ),
             )

            )
    
          ),
        
      ),
      
      
    );
  }
}