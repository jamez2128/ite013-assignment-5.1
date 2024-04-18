class Users {
  final int userId;
  final String username;
  final String password;

  Users({
    this.userId = 0,
    required this.username,
    required this.password,
  });

  factory Users.fromJson(Map<String, dynamic> data) => Users(
    userId: data['user_id'],
    username: data['username'],
    password: data['password'],
  );

  Map<String, dynamic> toMap() => {
    'user_id': userId,
    'username': username,
    'password': password,
  };
}

class QuizHistory {
  final int quizId;
  final String username;
  final int score;
  final String quizTaken;

  QuizHistory({
    this.quizId = 0,
    required this.score,
    required this.username,
    required this.quizTaken,
  });

  factory QuizHistory.fromJson(Map<String, dynamic> data) => QuizHistory(
    quizId: data['quiz_id'],
    score: data['score'],
    username: data['username'],
    quizTaken: data['quiz_taken'],
  );

  Map<String, dynamic> toMap() => {
    'quiz_id': quizId,
    'score': score,
    'username': username,
    'quiz_taken': quizTaken,
  };
}