var fs  = require("fs");
fs.readFileSync("sample.txt").toString().split('\n').forEach(function (line) {
    if (line !== "") {
      sentence = line.split(" ");
      console.log(sentence[sentence.length-2];
    }
});
