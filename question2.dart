// Question 2: Collections & Control Flow (Difficulty: 2/5) ⭐⭐


import 'dart:math';

void main() {

  List<String> studentNames = ["Alice","Bob","Charlie","Diana","Eve"]; // TODO: Add the student names
  
  Map<String, int> studentScores = {
    "Alice": 0,
    "Bob": 0,
    "Charlie":0,
    "Diana": 0,
    "Eve": 0,
  };
  
  Random random = Random();
  for (String name in studentNames){
    int randomScore= 60+ random.nextInt(41);
    studentScores[name]= randomScore;
  }
  
  
  String highestStudent = "";
  int highestScore = 0;
  String lowestStudent = "";
  int lowestScore = 100;
  double averageScore = 0.0;
  
  int totalScore=0;

  for (String name in studentNames){
    int score= studentScores[name]!;
    totalScore +=score;

    if (score>highestScore){
      highestScore=score;
      highestStudent=name;
    
    }
    if (score<lowestScore){
      lowestScore=score;
      lowestStudent=name;
    }
  }
  averageScore=totalScore/studentNames.length;
  
  print("Student Scores: $studentScores");
  print("Highest Score: $highestStudent with $highestScore");
  print("Lowest Score: $lowestStudent with $lowestScore");
  print("Average Score: ${averageScore.toStringAsFixed(2)}");
  
  for (String student in studentNames) {
    int score = studentScores[student] ?? 0;
    String category = "";
    
    switch (score ~/ 10) {
      case 10:
      case 9:
        category = "Excellent";
        break;
      case 8:
        category = "Good";
        break;
      case 7:
        category = "Average";
        break;
      default:
        category = "Needs Improvement";
    }
    
    print("$student: $score ($category)");
  }
}
