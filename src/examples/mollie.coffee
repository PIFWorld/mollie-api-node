Mollie = require("../lib/mollie");

###
	Initialize the Mollie API library with your API key.
	See: https://www.mollie.com/beheer/account/profielen/
###
mollie = new Mollie.API.Client();
mollie.setAuthorization("access_HrbV77khd697434NvWdcdgqS9zQwdJ");
mollie.setProfileId("pfl_P7QTSP8Fbk");

module.exports = mollie;
