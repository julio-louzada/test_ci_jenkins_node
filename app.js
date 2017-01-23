var express = require('express');
var app = express();

var portH = (process.env.PORT || 5000);
console.log('Port:' + portH)
app.set('port', portH);

app.listen(app.get('port'), function() {
  console.log('Node app is running on port', app.get('port'));
});

app.get('/',function(req,res) {
  res.send("Hello World");
});
