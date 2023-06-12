
import 'package:flutter/material.dart';
import 'package:todo_list/splask.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Splask(),

    );
  }
}
class TodoList extends StatefulWidget{
  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  var addedWork=[];


  var work=TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('My ToDoList')),),
      body: Column(
        children: [
          TextField(
            controller: work,
            decoration: InputDecoration(
                label: Text('Enter your work')
            ),
          ),
          SizedBox(height: 350,
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90,vertical: 50),
              child: ListView.builder(itemBuilder: (context,index){
                return InkWell(
                    onTap: (){
                      setState(() {
                        var works=work.text.toString();
                        addedWork.removeAt(index);


                      });


                    },
                    child: Text(addedWork[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),)
                );
              },
                itemCount: addedWork.length,
              ),
            ),
          ),
          Flexible(
            child: ElevatedButton(onPressed: (){
              setState(() {
                var works=work.text.toString();
                addedWork.add(works);

              });


            }, child: Text('Add work')),
          )
        ],
      ),
    );
  }
}