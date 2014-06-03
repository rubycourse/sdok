function Greeter(name) {
  this.name = name;
}

Greeter.prototype = {
  say_hello: function() {
    console.log("Hello, " + this.name);
  },

  sayHello: function () {
    this.say_hello.call();
  }
}

new Greeter("Lara").say_hello();
