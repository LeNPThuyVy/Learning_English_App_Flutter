
class ActivityUser 
{
  int userId;
  int streak;
  int xpPoint;
  ActivityUser
  (
    {
      required this.userId,
      required this.streak,
      required this.xpPoint
    }
  );

  Map<String, dynamic> toMap() 
  {
    return 
    {
      'userId': userId,
      'streak': streak,
      'xpPoint': xpPoint,
    };
  }

  factory ActivityUser.fromMap(Map<String, dynamic> map) 
  {
    return ActivityUser
    (
      userId: map['userId'] as int,
      streak: map['streak'] as int,
      xpPoint: map['xpPoint'] as int,
    );
  }
}