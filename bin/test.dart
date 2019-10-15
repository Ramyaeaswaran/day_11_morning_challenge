import 'package:test/test.dart';
import 'main.dart';

void main(){
  test('testcase 1',(){
    expect(incrementToTop([3, 10, 3]),14);
 });
  test('testcase 2',(){
    expect(count(["A", 5, 5, 2, 6, 2, 3, 8, 9, 7]),5);
  });
}

