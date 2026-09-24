import 'dart:io';

class Animal {
  sound() {
    print("Meow meow");
  }
}
  class cat extends Animal
    {
      sound()
      {
        print("Meow meow");
      }
    }
    void main()
    {
      Animal a=Animal();
      cat c=cat();
      a.sound();
      c.sound();
    }