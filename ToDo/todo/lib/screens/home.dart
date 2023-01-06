import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/model/todo.dart';
import 'package:todo/widgets/ToDoItem.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todoList = ToDo.todoList();
  void _handleToDoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _toDoDelete(String id) {
    // print(id);
    setState(() {
      todoList.removeWhere((element) => element.id == id);
    });
  }

  void _toDoAdd(String todo) {
    print(todo);
    setState(
      () {
        todoList.add(ToDo(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            todoText: todo,
            isDone: false));
      },
    );
  }

  // void _handleToDoChange(ToDo todo) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                const searchBox(),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 50, bottom: 20),
                          child: const Text(
                            'All To Do List',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          )),
                      for (ToDo todo in todoList)
                        ToDoItem(
                          todo: todo,
                          onToDoChanged: _handleToDoChange,
                          onDeleteItem: _toDoDelete,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          AddTodo(
            onAddToDoItem: _toDoAdd,
          )
        ],
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
          const Icon(
            Icons.menu,
            color: tdBlack,
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/Avatar.jpg'),
            ),
          )
        ],
      ),
    );
  }
}

class AddTodo extends StatelessWidget {
  final onAddToDoItem;
  final text = TextEditingController();

  AddTodo({Key? key, this.onAddToDoItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 10.0,
                    spreadRadius: 0.0,
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: TextField(
                controller: text,
                onEditingComplete: () => onAddToDoItem(text.text),
                decoration: InputDecoration(
                    hintText: "Add a new todo item", border: InputBorder.none),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              bottom: 20,
              right: 20,
            ),
            child: ElevatedButton(
              onPressed: () {
                onAddToDoItem(text.text);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: tdBlue,
                  minimumSize: const Size(60, 60),
                  elevation: 10),
              child: const Icon(Icons.add),
            ),
          )
        ],
      ),
    );
  }
}

class searchBox extends StatelessWidget {
  const searchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: const TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(
              Icons.search,
              color: tdBlack,
            ),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(color: tdGrey)),
      ),
    );
  }
}
