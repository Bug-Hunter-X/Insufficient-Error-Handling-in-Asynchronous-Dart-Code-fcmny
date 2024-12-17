```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the JSON response here
      // ...
    } else {
      // Handle error responses appropriately (non-200 status codes)
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network requests
    print('Error fetching data: $e');
    // Here's where you might want to re-throw the exception or handle it differently
    // rethrow; // Uncomment to re-throw the exception
  }
}
```