import '9-palindrome.dart';

String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }

  String longest = "none";

  for (int start = 0; start < s.length; start++) {
    for (int end = start + 1; end <= s.length; end++) {
      String sub = s.substring(start, end);

      if (isPalindrome(sub) && (longest == "none" || sub.length > longest.length)) {
        longest = sub;
      }
    }
  }

  return longest;
}