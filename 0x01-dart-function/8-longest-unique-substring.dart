String longestUniqueSubstring(String str) {
    String longest = "";
    String current = "";

    for (int i = 0; i < str.length; i++) {
        String letter = str[i];

        if (current.contains(letter)) {
            current = current.substring(current.indexOf(letter) + 1);
        }

        current += letter;

        if (current.length > longest.length) {
            longest = current;
        }
    }

    return longest;
}