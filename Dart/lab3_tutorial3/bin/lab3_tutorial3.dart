
void main() {

  const letter = "a";
   
  /* Dart strings are a collection of . UTF-16 is
a way to encode Unicode values by using 16-bit numbers. If
you want to find out what those UTF-16 codes are, you can
do it like so:*/

    
   var salutation = 'Hello  World!';
   print(salutation.codeUnits);
   
   /*UTF-16 has a special way of encoding code points higher
than 65,536 by using two code units called .*/

    const dart = '😎';
   print(dart.codeUnits);//[55357, 56846]
   
   /*No one wants to mess
with surrogate pairs. It would be much nicer to just get
Unicode code points directly. And you can! Dart calls them runes.*/
   
   const emoji = '😎 ';
    print(emoji.runes);//(128526, 32)
    
    //****Unicode grapheme clusters*****
    
    const flag = ' ';
    print(flag.runes);//(32)
    
    const family = '_';
    print(family.runes);//(46)
    
     print(family.length);
     print(family.codeUnits.length);
     print(family.runes.length);
     
     //****Adding the characters package****
     
     /*Find the line that says dependencies: and add the
characters package and version directly below that. It
should look like this when you’re done:*/

    // dependencies:
    // characters: ^1.1.0
    
    /*Now that you’ve added the characters package to your
project, go back to your Dart code file and add the following
import to the top of the page:*/

    // const family = '.';
    // print(family.characters.length); // 1
}
