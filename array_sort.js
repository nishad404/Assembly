//Array sort in js::

const noman=["mama","vagnee","dui","joson"];
const x=noman.sort();
console.log(x);


//Array reverse in js::

//const fruits = ["Banana", "Orange", "Apple", "Mango"];
//console.log(fruits.reverse());


const nom=["mama","vagnee","dui","joson"];
const y=nom.reverse();
console.log(y);

//numeric_sort in js::

const people=[6,1,90,3,7,60,100,60,30];
people.sort(function(a,b)
{
    return a-b;
    
});
console.log(people);


//map in array js:: to creat new array used map function:::

const hack=[45,6,7,2,1,8];
function myfunction(value){
    return value * 2;
}
const mist=hack.map(myfunction)
console.log(mist);

//array some() in  js:::

const numbers = [45, 4, 9, 16, 25];
function cissp(index){
    return index > 18;
}
const cia=numbers.some(cissp);
console.log(cia);
