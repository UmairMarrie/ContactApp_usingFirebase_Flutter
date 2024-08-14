import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/controller/ContactController.dart';
import 'package:flutter_with_firebase/screens/Components/MyTextField.dart';
import 'package:get/get.dart';

class MyTile extends StatelessWidget {

  const MyTile({super.key});

  @override
  Widget build(BuildContext context) {
    Contactcontroller contactcontroller = Get.put(Contactcontroller());
    return 
    Container(
      height: double.maxFinite,
      child: ListView(
        children: contactcontroller.contactlist.map((e) =>   Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(border: Border.all(color: Colors.deepPurple,width: 3)),
          child: ListTile(
              leading: Icon(Icons.call),
              title: Text(
                e.name.toString(),
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              subtitle: Text(e.number.toString()),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                      onTap: () {
                        contactcontroller.namecontroller.text = e.name!;
                         contactcontroller.numbercontroller.text = e.number!;
                        Get.defaultDialog(
                            title: "Edit Contact",
                            content: Column(
                              children: [
                                Mytextfield(
                                  btnname: "Name",
                                  onpress: () {},
                                  controller: contactcontroller.namecontroller,
                                  icon: Icons.person,
                                ),
                                Mytextfield(
                                  btnname: "Number",
                                  onpress: () {},
                                  controller: contactcontroller.numbercontroller,
                                  icon: Icons.numbers,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      child: Text(
                                        "cancel",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      onPressed: () {
                                        Get.back();
                                      },
                                    ),
                                    ElevatedButton(
                                      child: Text(
                                        "Edit",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      onPressed: () {
                                        contactcontroller.updateContacts(e);
                                      },
                                    ),
                                  ],
                                )
                              ],
                            )
                            );
                      },
                      child: Icon(Icons.edit)),
                  SizedBox(
                    width: 18,
                  ),
                  InkWell(onTap: () {
                      Get.defaultDialog(
                            title: "Delete Contact",
                            content: Column(
                              children: [
                              Text("Delete Contact",style: TextStyle(fontSize: 20),),
                              SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      child: Text(
                                        "cancel",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      onPressed: () {
                                        Get.back();
                                      },
                                    ),
                                    ElevatedButton(
                                      child: Text(
                                        "Delete",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      onPressed: () {
                                        contactcontroller.DeleteContact(e.id!);
                                      },
                                    ),
                                  ],
                                )
                              ],
                            )
                            );
                  }, child: Icon(Icons.delete))
                ],
              ),
            ),
        ),).toList()
        
        
      ),
    );
  }
}




