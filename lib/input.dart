import 'package:flutter/material.dart';


class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

bool check = false;

class _homepageState extends State<homepage> {
  final GlobalKey<FormState> _fromKey = GlobalKey();
  final TextEditingController _text1 = TextEditingController();
  final TextEditingController _text2 = TextEditingController();
  final TextEditingController _text3 = TextEditingController();
  String?groupFood;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input'),
      ),
      body: Center(
        child: Form(
          child: ListView(
            children: [
              Text('textFormField#1'),
              TextFormField(
                controller: _text1,
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter Username',
                ),
                keyboardType: TextInputType.text,
                onChanged: (value){ 
                  setState(() {
                    
                  });
                },
              ),
            
              Text('textFormField#2'),
              TextFormField(
                controller: _text2,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter Password',
                ),
                keyboardType: TextInputType.phone,
                onChanged: (value){ 
                  setState(() {
                    
                  });
                },
              ),
             
              Text('textFormField#2'),
              TextField(
                controller: _text3,
                decoration: InputDecoration(
                  prefixIcon:Icon(Icons.message_outlined) ,
                  enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    )
                  )
                ),
                keyboardType: TextInputType.phone,
                onChanged: (value){ 
                  setState(() {
                    
                  });
                },
                           
              ),
              Text('ShowInput : ${_text1.text}'),
              Text('ShowInput : ${_text2.text}'),
              Text('ShowInput : ${_text3.text}'),

              Text('RadioListTile#1'),
              RadioListTile(
                title: Text('pizza'),
                controlAffinity: ListTileControlAffinity.platform,
                value: 'pizza', groupValue: groupFood,
                 onChanged: (value) {
                   setState(() {
                     groupFood = value;
                   });
                 }),
              RadioListTile(
                title: Text('shabu'),
                controlAffinity: ListTileControlAffinity.platform,
                value: 'shabu', groupValue: groupFood,
                 onChanged: (value) {
                   setState(() {
                     groupFood = value;
                   });
                 }),
              RadioListTile(
                title: Text('Steak'),
                controlAffinity: ListTileControlAffinity.platform,
                value: 'Steak', groupValue: groupFood,
                 onChanged: (value) {
                   setState(() {
                     groupFood = value;
                   });
                 }),
                 Text('ShowInput : ${groupFood}'),
                CheckboxListTile( title: Text('apple'),
                  value: check,
                 onChanged: ((value) {
                   setState(() {
                     check = value!;
                   });
                 }) 
                  ),
              Text('ShowInput : ${check}'),

            ],
          )),
      ),
    );
  }
}