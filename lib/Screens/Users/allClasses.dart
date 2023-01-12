import 'package:flutter/material.dart';
import '../../models/Admins/classesModel.dart';
import '../../services/classesServices.dart';


class AllClasses extends StatefulWidget {
  const AllClasses({super.key});

  @override
  State<AllClasses> createState() => _AllClassesState();
}

class _AllClassesState extends State<AllClasses> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(child: const Text('All Classes')),
      ),
      body: StreamBuilder<List<Classes>>(
        stream: readClasses(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final allClasses = snapshot.data!;
            return Container(
              child: ListView.builder(
                itemCount: allClasses.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric( horizontal: 10 ,vertical: 10),
                    child: Card(
                       elevation: 100,
                     shadowColor: Colors.black,
                     color: Colors.grey[100],
                      child: SizedBox(
                      width: 100,
                      height: 100,
                      child: ListTile( 
                        title: Text(allClasses[index].classname, style: TextStyle(fontSize: 18,),),
                        subtitle: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Duration: '),
                                Text(allClasses[index].duration),
                              ],
                            ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Instructor Name: '),
                                Text(allClasses[index].instructorname),
                              ],
                            ),
                           
                          ],
                        ),
                        trailing:  Column(
                          children: [
                                  IconButton(
                                onPressed: () => deleteClasses(allClasses[index].id),
                                icon: const Icon(Icons.book)),
                                 Row(
                              children: [
                                Text('No Of Slots: '),
                                Text(allClasses[index].noOfSlots),
                              ],
                            ),
                          ],
                        )
                      
                      )
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}