
class Student
{
  String name;
  String department;
  String id;
  String session;
  String imgUrl;
  Student(this.name,this.department,this.id,this.session,this.imgUrl);

  static List<Student> generateStudent()
  {
    return [
      Student('Tareq', 'cse', '17023', '2016-2017', 'assets/child-image/1.webp'),
      Student('Tareq', 'cse', '17023', '2016-2017', 'assets/child-image/2.webp'),
      Student('Tareq', 'cse', '17023', '2016-2017', 'assets/child-image/3.webp'),
      Student('Tareq', 'cse', '17023', '2016-2017', 'assets/child-image/4.webp'),
      Student('Tareq', 'cse', '17023', '2016-2017', 'assets/child-image/5.webp'),
      Student('Tareq', 'cse', '17023', '2016-2017', 'assets/child-image/6.webp'),
      Student('Tareq', 'cse', '17023', '2016-2017', 'assets/child-image/7.webp'),
    ];
  }

}