function makeCounter() {
    let count = 0;
  
    function counter() {
      return count++;
    }
  
    counter.set = value => count = value;
  
    counter.decrease = () => count--;
  
    return counter;
  }
  

function sum(t) {
    let currentSum = t;
    function f(a) {
      currentSum += a;
      return f;
    }
    f.toString = function() {
      return currentSum;
    };
  
    return f;
  }