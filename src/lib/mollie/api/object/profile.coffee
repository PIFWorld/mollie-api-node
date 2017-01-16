module.exports = class Profile
  constructor: () ->
    this.resource        = "profile";
    this.id              = null;
    this.mode            = null;
    this.name            = null;
    this.website         = null;
    this.email           = null;
    this.phone           = null;
    this.categoryCode    = null;
    this.status          = null;
    this.review          = null;
    this.createdDatetime = null;
    this.updatedDatetime = null;
    this.links           = null;

  isValid: () ->
    return this.status == "verified" && !this.review;