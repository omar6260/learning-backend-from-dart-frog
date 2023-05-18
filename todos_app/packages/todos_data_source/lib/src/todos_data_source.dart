import '../todos_data_source.dart';

/// {@template todos_data_source}
/// A generic interface for managing todos.
/// {@endtemplate}
abstract class TodosDataSource {
  Future<Todo> create(Todo todo);

  Future<List<Todo>> readAll();

  Future<Todo?> read(String id);

  Future<Todo> update(String id, Todo todo);

  Future<void> delete(String id);
}
