const args = process.argv
const numOfDie = args.splice(2)[0];

const dieRoller = function (numOfDie) {
  let arr = [];
  for (let i = 0; i < numOfDie; i++) {
    arr.push(Math.floor(Math.random() * 5) + 1);
  } return `Rolled ${numOfDie} dice: ${arr}`;
};

console.log(dieRoller(numOfDie));