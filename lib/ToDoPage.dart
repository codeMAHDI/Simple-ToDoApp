import 'package:flutter/material.dart';
import 'package:to_do_app/style.dart';

class Todopage extends StatefulWidget {
  const Todopage({Key? key}) : super(key: key);

  @override
  State<Todopage> createState() => _TodopageState();
}

class _TodopageState extends State<Todopage> {
  List TodoList = [];
  String Item='';

  MyInputOnChange(value){
    setState(() {
      Item= value;
    });
  }

  AddItem(){
    setState(() {
      TodoList.add({'item': Item});
    });
  }

  RemoveItem(index){
    setState(() {
      TodoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do App'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(flex: 70,child: TextFormField(
                    onChanged: (value){
                      MyInputOnChange(value);
                    },
                    decoration: AppInputDecocation('List Item'),)),
                  SizedBox(width: 7,),
                  Expanded(
                    flex: 30,
                    child: ElevatedButton(
                     style: AppButtonStyle(),
                      onPressed: () {
                       AddItem();
                      },
                      child: Text('Add'),
                    ),
                  ),
                ],
              ),),
            SizedBox(height: 10,),
            Expanded(
              flex: 90,
              child: ListView.builder(
                itemCount: TodoList.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    child: SizeBox50(
                      Row(
                        children: [
                          Expanded(
                              flex: 80,
                              child: Text(TodoList[index]['item'])),
                          Expanded(
                              flex: 20,
                              child: TextButton(onPressed: (){
                               RemoveItem(index);
                              }, child: Icon(Icons.delete,color: Colors.green,size: 22,))),
                        ],
                      )
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
