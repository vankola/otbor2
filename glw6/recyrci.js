function sumTo(n){
    let sum = 0;
    for (let i = 1; i <= n; i++) {
      sum += i;
    }
    return sum;
  }
console.log(sumTo(100));

function sumTo(n){
    if (n == 1) return 1;
    return n + sumTo(n - 1);
  }
console.log(sumTo(100));

function sumTo(n) {
    return n * (n + 1) / 2;
  }
console.log(sumTo(100));

function factorial(n) {
    return (n != 1) ? n * factorial(n - 1) : 1;
  }
console.log(factorial(5))

function fib(n) {
    return n <= 1 ? n : fib(n - 1) + fib(n - 2);
  }
console.log( fib(3) ); 
console.log(fib(7));