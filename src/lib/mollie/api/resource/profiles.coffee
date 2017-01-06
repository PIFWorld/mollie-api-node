Base     = require("./base");
Profile = require("../object/profile");

module.exports = class Profiles extends Base
	this.resource = "profiles";
	this.object   = Profile;
