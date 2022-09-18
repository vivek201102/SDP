import 'package:lab5_tutorial_1/lab5_tutorial_1.dart' as lab5_tutorial_1;

void main(List<String> arguments) {
  print('Ch 8: Collection');

  // lists, sets and maps

  // Lists
  /*
      Lists in Dart are similar to arrays in other languages.
      Lists are zero-based. 
      The order of a list matters.

      Basic list operations
        =>  Creating a list
            var desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
            This is called a list literal.

        var snacks = [];  //initialize a new empty list like this
        List<String> snacks = [];
          - The angle brackets < > here are the notation for generic 
            types in Dart
        
        var snacks = <String>[];

        =>  Printing lists
            desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
            print(desserts);

            final secondElement = desserts[1]; 
            print(secondElement);

            final index = desserts.indexOf('pie');
            final value = desserts[index];

        =>  Assigning values to list elements
            desserts[1] = 'cake';

        =>  Adding elements to a list
            desserts.add('brownies');
            print(desserts);

        =>  Removing elements from a list
            desserts.remove('cake');
            print(desserts);

      # Mutable and immutable lists
        - using final means that you’re not allowed to use 
          the assignment operator to give desserts a new list
        - the finalkeyword isn’t keeping you from 
          changing the contents of the list elements

        - but using var we are allowed to use 
          the assignment operator to give desserts a new list

      # Creating deeply immutable lists
        - The solution to creating an immutable list is to mark the 
          variable name with the const keyword. This forces the list to 
          be deeply immutable.

          const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
          desserts.add('brownie'); // not allowed
          desserts.remove('pie'); // not allowed
          desserts[0] = 'fudge'; // not allowed
        
        - If you aren’t able to use const for the variable itself, you can 
          still make the value deeply immutable by adding the optional 
          const keyword before the value.
          final desserts = const ['cookies', 'cupcakes', 'donuts', 'pie'];

        - if you want an immutable list but you won’t know 
          the element values until runtime, then you can create one 
          with the List.unmodifiable named constructor:
          
          final modifiableList = [DateTime.now(), DateTime.now()];
          final unmodifiableList = List.unmodifiable(modifiableList);

      # List properties
        const drinks = ['water', 'milk', 'juice', 'soda'];
        =>  Accessing first and last elements
            drinks.first // water
            drinks.last // soda
        
        =>  Checking if a list contains any elements
            drinks.isEmpty // false
            drinks.isNotEmpty // true

        =>  Looping over the elements of a list
            const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
            * for-in loop
              for (var dessert in desserts) { 
                print(dessert);
              }
            
            * for-each loop
              desserts.forEach((dessert) => print(dessert));
              desserts.forEach(print);  //  This is known as a tear-off because you tear off the unnecessary syntax.

      # Code as UI
        - The Flutter framework chose Dart because of its unique 
          characteristics. However, Flutter has also influenced the 
          development of Dart. One area you can see this is with the
          addition of the spread operator, collection if and collection for

        - Flutter UI code is composed of classes called widgets.
          Three common Flutter widgets are rows, columns and stacks, which 
          all store their children as List collections
        
        =>  Spread operator
            const pastries = ['cookies', 'croissants'];
            const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];
              You can use the spread operator (...) to expand those lists 
            into another list.
            const desserts = ['donuts', ...pastries, ...candy];
            print(desserts);
        
        =>  Collection if
            - When creating a list, you can use a collection ifto 
              determine whether an element is included based on some 
              condition.

              const peanutAllergy = true;
              const candy = [ 
                  'Junior Mints',
                  'Twizzlers',
                  if (!peanutAllergy) 'Reeses',
              ];
              print(candy);

        =>  Collection for
            - There’s also a collection for. So if you have a list, you can 
              use a collection for to iterate over the list and generate 
              another list.
              const deserts = ['gobi', 'sahara', 'arctic'];
              var bigDeserts = [
                  'ARABIAN',
                  for (var desert in deserts) desert.toUpperCase(),
              ];
              print(bigDeserts);

    */

  print("\n*****Mini-exercise 1*****");
  /*
    1. Create an empty list of type String. Name it months.
    Use the add method to add the names of the twelve 
    months.
  */
  List<String> months = [];
  months.add("January");
  months.add("February");
  months.add("March");
  months.add("April");
  months.add("May");
  months.add("June");
  months.add("July");
  months.add("August");
  months.add("September");
  months.add("October");
  months.add("November");
  months.add("December");
  print(months);

  print("\n*****Mini-exercise 2*****");
  /*
    2. Make an immutable list with the same elements as in 
    Mini-exercise 1.
  */
  const month = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  print(month);

  print("\n*****Mini-exercise 3*****");
  /*
    3. Use collection for to create a new list with the month 
    names in all uppercase
  */
  var collectionFor = [
    for (var mnth in month) mnth.toUpperCase(),
  ];
  print(collectionFor);

  // Sets
  /*
      Sets are used to create a collection of unique elements

      =>  Creating a set
          final Set<int> someSet = {};
          final someSet = <int>{};

      =>  Operations on a set
          ->  Checking the contents
              print(anotherSet.contains(1)); // true 
              print(anotherSet.contains(99)); // false

          ->  Adding single elements
              final someSet = <int>{}
              someSet.add(2112);
              someSet.add(42);
              print(someSet);

          ->  Removing elements
              someSet.remove(2112);

          ->  Adding multiple elements
              someSet.addAll([1, 2, 3, 4]);

          ->  Intersections and Unions
              final intersection = setA.intersection(setB);
              final union = setA.union(setB);
          ->  Other operations
              - collection if
              - collection for
              - for-in loops
              - forEach loops
              - spread operators
      */

  // Maps
  /*
          Maps in Dart are the data structure used to hold key-value pairs
          They’re similar to HashMaps and Dictionaries in other languages.

          =>  Creating an empty map
              final Map<String, int> emptyMap = {};
              final emptyMap = <String, int>{};
              final emptySomething = {};  
                - it turns out that map literals came before set literals in 
                  Dart’s history, so Dart infers the empty braces to be a Map of
                  <dynamic, dynamic>;
                
          =>  Initializing a Map with values
              final inventory = { 
                'cakes': 20,
                'pies': 14,
                'donuts': 37,
                'cookies': 141,
              };
              final digitToWord = { 
                1: 'one',
                2: 'two',
                3: 'three',
                4: 'four',
              };

        - The keys of a map should be unique.

          =>  Operations on a map
              ->  Accessing elements from a map
                  final numberOfCakes = inventory['cakes'];
                
              ->  Adding elements to a map
                  inventory['brownies'] = 3;

              ->  Updating an element
                  inventory['cakes'] = 1;

              ->  Removing elements from a map
                  inventory.remove('cookies');
          
          =>  Map properties
              inventory.isEmpty // false
              inventory.isNotEmpty // true 
              inventory.length // 4

              print(inventory.values);
              print(inventory.keys);

          =>  Checking for key or value existence
              print(inventory.containsKey('pies')); // true
              print(inventory.containsValue(42));   // false

          =>  Looping over elements of a map
              for (var item in inventory) { 
                print(inventory[item]);
              } //error

              for (var item in inventory.keys) { 
                print(inventory[item]);
              }

              inventory.forEach((key, value) => print('$key ->$value'));

              for (final entry in inventory.entries) { 
                print('${entry.key} -> ${entry.value}');
              }

      */

  print("\n*****Mini-exercise 1*****");
  /*
    1. Create a map with the following keys: name, profession,
    country and city. For the values, add your own 
    information.
  */
  final temp = {
    'name': 'John',
    'profession': 'actor',
    'country': 'India',
    'city': 'Mumbai',
  };
  print(temp);

  print("\n*****Mini-exercise 2*****");
  /*
    2. You suddenly decide to move to Toronto, Canada. 
    Programmatically update the values for country and 
    city.
  */
  temp['country'] = 'Canada';
  temp['city'] = 'Toronto';
  print(temp);

  print("\n*****Mini-exercise 3*****");
  /*
    3. Iterate over the map and print all the values.
  */
  for (var value in temp.values) {
    print(value);
  }

  // Higher order methods
  /*
      transforming, filtering and consolidating the elements of the collection. 
      These operations are known as higher order methods

      =>  Mapping over a collection
          Mapping over a collection allows you to perform an action on 
          each element of the collection as if you were running it 
          through a loop
          - for this collections have map method tht takes anonymous function 
            as a parameter and return another collection based on what the function does to the elements
          
      -> List, Set and Map all have map method

      const numbers = [1, 2, 3, 4];
      final squares = numbers.map((number) => number * number);

      // Filtering a collection
        You can filter an iterable collection like List and Setdown 
        to another shorter collection by using the where method
        final evens = squares.where((square) => square.isEven);

      // Using reduce
        One way to combine all of the elements of a list into a single 
        value is to use the reduce method

        const amounts = [199, 299, 299, 199, 499];
        final total = amounts.reduce((sum, element) => sum + element);

          ->  The first function parameter always contains the result of 
              the previous function call, while the second parameter 
              contains the current element in the collection.
        
      // Using fold
        If you try to call reduce on an empty list, you’ll get an error. 
        Forthatreason, using fold may be more reliable when a 
        collection has a possibility of containing zero elements
        const amounts = [199, 299, 299, 199, 499]; 
        final total = amounts.fold(0, (int sum, element) => sum + element,);

      // Sorting a list
        While where, reduce and fold all work equally well on lists 
        or sets, you can only call sort on a list

        final desserts = ['cookies', 'pie', 'donuts', 'brownies'];
        desserts.sort();

      // Reversing a list
        var dessertsReversed = desserts.reversed;

      // Performing a custom sort
        For the sort method, you can pass in a function as an 
        argument to perform custom sorting. Say you want to sort 
        strings by length and not alphabetically; you could give sort 
        an anonymous function like so:

        desserts.sort((d1, d2) => d1.length.compareTo(d2.length));

      // Combining higher order methods
      const desserts = ['cake', 'pie', 'donuts', 'brownies'];
      final bigTallDesserts = desserts
      .where((dessert) => dessert.length > 5)
      .map((dessert) => dessert.toUpperCase());

      */

  /*
        Given the following exam scores:
        final scores = [89, 77, 46, 93, 82, 67, 32, 88];
      */
  print("\n*****Mini-exercise 1*****");
  /*
        1. Use sort to find the highest and lowest grades.
      */
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  scores.sort();
  print(scores.first);
  print(scores.last);

  print("\n*****Mini-exercise 2*****");
  /*
    2. Use where to find all the B grades, that is, all the scores 
    between 80 and 90
  */
  print(scores.where((score) => score >= 80 && score < 90));

  print("\n*****Challenge 1*****");
  /*
    Challenge 1: A unique request
    Write a function that takes a paragraph of text and returns a 
    collection of unique String characters that the text 
    contains.
  */
  const text = "here are some challenges to test your knowledge of collections";

  Set<String> func(String text) {
    return text.runes.map((e) => String.fromCharCode(e)).toSet();
  }

  print(func(text));

  print("\n*****Challenge 2*****");
  /*
    Challenge 2: Counting on you
    Repeat Challenge 1, but this time have the function return a 
    collection that contains the frequency, or count, of every 
    unique character.
  */
  Map<String, int> func2(String text) {
    final freqMap = <String, int>{};
    for (var ele in text.runes) {
      final ch = String.fromCharCode(ele);
      final freq = freqMap[ch] ?? 0;
      freqMap[ch] = freq + 1;
    }
    return freqMap;
  }

  print(func2(text));

  print("\n*****Challenge 3*****");
  /*
    Challenge 3: Mapping users
    Create a class called User with properties for id and name. 
    Make a List with three users, specifying any appropriate 
    names and IDs you like. Then write a function that converts 
    your user list to a list of maps whose keys are id and name.
  */
  final users = [User(1, "John"), User(2, "Bob"), User(3, "Smith")];
  List<Map<String, Object>> func3(List<User> user) {
    final userList = <Map<String, Object>>[];
    for (var user in users) {
      final myMap = {'id': user.id, 'name': user.name};
      userList.add(myMap);
    }
    return userList;
  }

  print(func3(users));
}

class User {
  User(this.id, this.name);
  final int id;
  final String name;
}
