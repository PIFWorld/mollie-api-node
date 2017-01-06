###
	Example 16 - How to read organization in the Mollie API.
###
mollie = require("./mollie");
fs     = require("fs");

class example
	constructor: (request, response) ->
		mollie.organizations.get "me"
		, (organization) =>
			if (organization.error)
				console.error(organization.error);
				return response.end();

			response.write(JSON.stringify(organization));
			response.end();

module.exports = example
