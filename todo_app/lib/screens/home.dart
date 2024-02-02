import 'package:flutter/material.dart';
import 'package:todo_app/design/themes.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/widget/todo_items.dart';

class Home extends StatelessWidget {
  final Todo todo;

  Home({Key?key,required this.todo}):super(key: key);

  final todoList = Todo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(children: [
          searchBox(),
          Expanded(
              child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 50,
                  bottom: 20,
                ),
                child: Text(
                  'All ToDo',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                ),
              ),
              for (Todo todo in todoList) 
              TodoItem(todo: todo),
            ],
          ))
        ]),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(
              Icons.search,
              color: tdBlack,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(
              maxHeight: 20,
              maxWidth: 25,
            ),
            border: InputBorder.none,
            hintText: 'Search'),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: tdBGColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: tdBlack,
            size: 30,
          ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/profile.jpg'),
            ),
          )
        ],
      ),
    );
  }
}
