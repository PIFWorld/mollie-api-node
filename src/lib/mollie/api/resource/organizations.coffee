Base     = require("./base");
Organization = require("../object/organization");

module.exports = class Organizations extends Base
	this.resource = "organizations";
	this.object   = Organization;
