let head = {
    glasses: 1
};
  
let table = {
    pen: 3,
    __proto__: head
};
  
let bed = {
    sheet: 1,
    pillow: 2,
    __proto__: table
};
  
let pockets = {
    money: 2000,
    __proto__: bed
};
  
  console.log(pockets.pen); 
  console.log(bed.glasses); 
  console.log(table.money);


  let hamster = {
    stomach: [],
    eat(food) {
      this.stomach.push(food);
    }
  };
  let speedy = {
    __proto__: hamster,
    stomach: []
  };
  let lazy = {
    __proto__: hamster,
    stomach: []
  };

  speedy.eat("apple");
  console.log(speedy.stomach); 
  console.log(lazy.stomach); 


  function User(name) {
    this.name = name;
  }
  
  let user = new User('John');
  let user2 = new user.constructor('Pete');
  
  console.log(user2.name);