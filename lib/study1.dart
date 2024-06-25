void main() {
  print(sayHello(age: 12, name: 'hyun min', country: 'korean'));
  print(sayHello_noRequired('kanu', 10));
  qqoprator();
}

void study1() {
  // dynamic
  var name;
  name = 'HM';
  name = 12;
  name = true;
  print(name);

// dynamic 형태가 변화는 자료형
// 정말 필요할때에만 사용하자
  dynamic name2 = '현민';
  if (name2 is String) {
// name String 형태
  }

  if (name2 is int) {
// name Int 형태
  }
}

void study2() {
  // NullSafety
  String? nico = 'nico';
  nico = null;
  if (nico != null) nico.isNotEmpty;
  nico?.isNotEmpty; // name 이 null 인경우 isNotEmpty 호출 되지 않음
}

void study3() {
  final name = 'nico';
  final String name2 = 'nico';
  // name = 'nico2' X
}

void study4() {
  late final name;
  // print(name) X
  name = "nico";
  print(name);
}

void study5() {
  // compile-time constant
  const max_aplication_key = '121212'; //compile-time 절대 값 컴파일 될때 생성\
  int i = 12; // 작은 메서드내 에서는 var 사용 class 는 자료형 정의해주자
  var name = 'la';
  i = 1212121212;
  name = 'lalalalla';
}

void study6() {
  String name = 'a';
  bool alive = false;
  int age = 12;
  double money = 6.99;
  num x = 12;
  x = 1.1;
}

void study7() {
  // Collection IF
  var giveMeFive = false;
  var number = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5, // if (giveMeFive) number.add(5); 동일
  ];
  print(number);
  // Collection For
  var oldFriends = ['nico', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) "♥ $friend",
    // for (var friend in oldFriends) oldFriedns.add(friend); 동일
  ];
  print(newFriends);

  var key = [1, 2, 3, 4];
  var player = {
    /*1 : '1111',
    2: '2222'*/
    key: '111',
    [7, 8]: '222',
  };
  print(player[key]); // O
  print(player[[7, 8]]); // X

  Set<int> numbers = {1, 2, 3, 4}; // 각 숫자는 유니크하다
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  print(numbers); // 1은 한개만 노출된다.
}

String sayHello({
  // 인자에 {} 추가시 named인자 사용 가능, 람다식 사용가능
  required String name,
  required int age,
  required String country,
}) =>
    "Hello MyMenu is $name, you are $age, and you come from $country";

String sayHello_noRequired(String name, int age, [String? country = 'cuba']) =>
    "Hello MyMenu is $name, you are $age, and you come from $country";

String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';
// name != null ? name.toUpperCase() : 'ANNON';

void qqoprator() {
  // ?? 왼쪽 null 아닌경우 오른쪽 null 인경우
  print(capitalizeName('ㄱㄱ'));
  // null 인경우 값 할당 ??=
  String? name;
  name ??= 'nico';
  name = 'now';
  name ??= 'another';
  print(name);
}

typedef ListOfInts = List<int>;

ListOfInts reverseListOfNum(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfo = Map<String, String>;

String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

