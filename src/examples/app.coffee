http = require("http");
url = require("url");
fs = require("fs");
mollie = require("../lib/mollie");

###
  Example app.
###
app = http.createServer((request, response) ->
	path = url.parse(request.url).pathname

	###
	  Load requested example.
	###
	try
		example = require("." + path);
		new example(request, response);
	catch error
		console.error(error);
		response.writeHead(200, "Content-Type": "text/html; charset=utf-8");
		response.write('<a href="./1-new-payment" target="_blank">Try example 1</a><br>');
		response.write('<a href="./4-ideal-payment" target="_blank">Try example 4</a><br>');
		response.write('<a href="./5-payments-history" target="_blank">Try example 5</a><br>');
		response.write('<a href="./6-list-available-methods" target="_blank">Try example 6</a><br>');
		response.write('<a href="./07-refund-payment" target="_blank">Try example 7</a><br>');
		response.write('<a href="./11-new-customer" target="_blank">Try example 11</a><br>');
		response.write('<a href="./12-new-customer-payment" target="_blank">Try example 12</a><br>');
		response.write('<a href="./13-customer-payments-history" target="_blank">Try example 13</a><br>');
		response.write('<a href="./14-recurring-first-payment" target="_blank">Try example 14</a><br>');
		response.write('<a href="./15-recurring-payment" target="_blank">Try example 15</a><br>');
		response.write('<a href="./16-read-organization" target="_blank">Try read organization</a><br>');
		response.end();
);

app.listen(8888);
console.log("==> http://localhost:8888");
