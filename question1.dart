// Question 1: Basic Data Types & Functions (Difficulty: 1/5) ⭐

String name = "Sahadat Hossain";
int age = 25;
double height = 5.9;
bool isStudent = true;

double calculateBMI(double weight, double height) {
  double bmi = weight / (height * height);
  return bmi;
}

String getGrade(int score) {
  if (score >= 90 && score <= 100) {
    return "A";
  } else if (score >= 80 && score < 90) {
    return "B";
  } else if (score >= 70 && score < 80) {
    return "C";
  } else if (score >= 60 && score < 70) {
    return "D";
  } else {
    return "F";
  }
}

void main() {
  name = "Sahadat Hossain";
  age = 25;
  height = 5.9;
  isStudent = true;

  double weight = 55.4;
  double bmi = calculateBMI(weight, height);
  String grade = getGrade(92);

  print("Name: $name, Age: $age, Height: $height, Is Student: $isStudent");
  print("BMI: $bmi");
  print("Grade: $grade");
}
