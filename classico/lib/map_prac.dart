void main(){
  var map_names = {
    'Name' : 'Rohit',
   'Age' : 18,
   'canlocatetooffice' : true,
    'experience': 2

  };
  print(map_names.isNotEmpty);
  print(map_names.isEmpty);
  print(map_names.length);
  print(map_names.keys);
  print(map_names.values);
  print(map_names.containsKey('Name'));
  print(map_names.containsValue(false));
  print(map_names.remove('canlocatetooffice'));
  print(map_names);
}