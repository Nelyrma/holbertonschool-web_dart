void outer(String name, String id) {
    String inner() {
        List<String> parts = name.split(' ');
        String firstName = parts[0];
        String lastName = parts[1];
        String initial = lastName[0];
        return 'Hello Agent $initial.$firstName your id is $id';
    }
    print(inner());
}