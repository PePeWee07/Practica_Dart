import 'dart:async';

void main() {
  fetchData();
}

Future<void> fetchData() async {
  try {
    String data = await simulateHttpRequest();
    print('Data fetched successfully: $data');
  } catch (error) {
    print('Error fetching data: $error');
  } on TimeoutException {
    print('Request timed out. Please try again later.');
  } catch (error) {
    print('Unknown error occurred: $error');
  }
}

Future<String> simulateHttpRequest() {
  return Future.delayed(Duration(seconds: 2), () {
    // Simulate a successful HTTP request
    // Uncomment the following line to simulate an error
    // throw Exception('Failed to fetch data');
    return 'Example data from server';
  });
}