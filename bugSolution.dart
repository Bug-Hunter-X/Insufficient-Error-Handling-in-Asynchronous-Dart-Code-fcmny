```dart
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the JSON response here
      final jsonData = jsonDecode(response.body);
      print('Data fetched successfully: $jsonData');
    } else {
      // Handle error responses appropriately (non-200 status codes)
      throw Exception('Failed to load data: ${response.statusCode} - ${response.body}');
    }
  } catch (e) {
    // Handle exceptions during network requests
    print('Error fetching data: $e');
    // Consider rethrowing or handling differently based on needs
    // rethrow; // Uncomment to re-throw the exception
  }
}
```