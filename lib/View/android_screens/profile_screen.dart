import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 10,),
              const CircleAvatar(
                radius: 60,
                child: Icon(Icons.camera_alt_rounded),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3)),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    labelText: 'Full Name',
                    prefixIcon: const Icon(Icons.person),
                  )),
              const SizedBox(
                height: 15,
              ),
              TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3)),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    labelText: 'Phone Number',
                    prefixIcon: const Icon(Icons.call),
                  )),
              const SizedBox(
                height: 15,
              ),
              TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3)),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    prefixIcon: const Icon(Icons.chat_bubble),
                    labelText: 'Chat Conversation',
                  )),
               const SizedBox(height: 10,),
               ListTile(
                onTap: (){
                  showDatePicker(context: context, firstDate : DateTime(1990), lastDate: DateTime.now());
                },
              leading: Icon(Icons.date_range_rounded),
                title: Text('Pick Date '),
              ),
               ListTile(
                 onTap:(){
                   showTimePicker(context: context , initialTime: TimeOfDay.now());
                 },
                leading: Icon(Icons.access_time),
                title: Text('Pick Time'),
              ),
        
              ElevatedButton(onPressed: (){}, child: const Text('Save')),
            ],
          ),
        ),
      ),
    );
  }
}
