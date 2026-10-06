import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: TodoParent()));
}

class TodoItem {
  final String task;
  bool isCompleted;
  TodoItem(this.task, {this.isCompleted = false});
}

class TodoParent extends StatefulWidget {
  const TodoParent({super.key});

  @override
  State<TodoParent> createState() => _TodoParentState();
}

class _TodoParentState extends State<TodoParent> {
  final List<TodoItem> _todos = [];
  final TextEditingController _controller = TextEditingController();

  void _addTodo() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _todos.add(TodoItem(_controller.text));
        _controller.clear();
      });
    }
  }

  void _toggleTodo(int index) {
    setState(() {
      _todos[index].isCompleted = !_todos[index].isCompleted;
    });
  }

  void _removeTodo(int index) {
    setState(() {
      _todos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('To-Do List')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: TextField(controller: _controller, decoration: const InputDecoration(labelText: 'New Task'))),
                IconButton(icon: const Icon(Icons.add), onPressed: _addTodo),
              ],
            ),
          ),
          Expanded(
            child: TodoList(
              items: List.from(_todos), // Passing a copy to trigger didUpdateWidget if needed
              onToggle: _toggleTodo,
              onRemove: _removeTodo,
            ),
          ),
        ],
      ),
    );
  }
}

class TodoList extends StatefulWidget {
  final List<TodoItem> items;
  final Function(int) onToggle;
  final Function(int) onRemove;

  const TodoList({super.key, required this.items, required this.onToggle, required this.onRemove});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  void didUpdateWidget(covariant TodoList oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('TodoList didUpdateWidget: List updated with ${widget.items.length} items');
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        final item = widget.items[index];
        return ListTile(
          leading: Checkbox(
            value: item.isCompleted,
            onChanged: (_) => widget.onToggle(index),
          ),
          title: Text(
            item.task,
            style: TextStyle(decoration: item.isCompleted ? TextDecoration.lineThrough : null),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.delete, color: Colors.red),
            onPressed: () => widget.onRemove(index),
          ),
        );
      },
    );
  }
}
