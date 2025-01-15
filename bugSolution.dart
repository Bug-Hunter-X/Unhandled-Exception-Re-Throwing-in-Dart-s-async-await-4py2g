```dart
Future<dynamic> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return jsonData; //Return data on success
    } else {
      //Instead of throwing an Exception, return a specific error or null
      print('Error fetching data. Status code: ${response.statusCode}');
      return null; // Or return a specific error object
    }
  } catch (e) {
    // Log detailed error information
    print('Error fetching data: $e');
    //Return a specific error or null in case of an exception.
    return null; // Or return a specific error object
  }
}
```