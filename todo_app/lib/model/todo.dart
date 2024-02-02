class Todo {
  String? id;
  String? todoText;
  bool isDone;

  Todo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });
  static List<Todo> todoList() {
    return [
      Todo(id: '01', todoText: 'Morning Workouts', isDone: true),
      Todo(id: '02', todoText: 'Morning Workouts', isDone: true),
      Todo(id: '03', todoText: 'Morning Workouts', isDone: false),
      Todo(id: '04', todoText: 'Morning Workouts', isDone: false),
      Todo(id: '05', todoText: 'Morning Workouts', isDone: false),
    ];
  }
}
