katz_deli = [ ]
function takeANumber(katzDeliLine, name){
    katzDeliLine.push(name);
    return  `Welcome, ${name}. You are number ${katzDeliLine.length} in line.`;
}

function nowServing(katzDeliLine) {
  if (katzDeliLine.length > 0) {
    return "Currently serving " + katzDeliLine.shift() + ".";
  } else {
      return "There is nobody waiting to be served!";
  }
}

function currentLine(katzDeliLine) {
    var output = [];
    if (katzDeliLine.length > 0) {
      for(var i = 0; i < katzDeliLine.length; i++) {
        output += (i + 1) + ". " + katzDeliLine[i] + ", ";
      }
      output = output.slice(0, output.length - 2);
      return "The line is currently: " + output;
    } else {
        return "The line is currently empty.";
    }
}
Final Iteration
I refactored my code above to make it easier to understand and explain. The only changes that were made is on function currentLine(katzDeliLine).

Changed var output = [] to var output = "" and moved it inside the If statement. As stated above, it's not an array.

Changed output = output.slice(0, output.length - 2) to output = output.slice(0, -2). It does the same exact thing but is shorter.
function takeANumber(katzDeliLine, name){
