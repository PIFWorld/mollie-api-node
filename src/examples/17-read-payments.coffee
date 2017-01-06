###
	Example 17 - How to read payments list in the Mollie API.
###
mollie = require("./mollie");
fs     = require("fs");

class example
	constructor: (request, response) ->

		mollie.payments.all((payments) =>
			if (payments.error)
				console.error(payments.error);
				return response.end();

			response.write(JSON.stringify(payments));
			response.end();
		);
module.exports = example
