module.exports = class Organization
  constructor: () ->
    this.resource             = "organization";
    this.id                   = null;
    this.name                 = null;
    this.email                = null;
    this.address              = null;
    this.postalCode           = null;
    this.city                 = null;
    this.country              = null;
    this.countryCode          = null;
    this.registrationType     = null;
    this.registrationNumber   = null;
    this.registrationDatetime = null;
    this.verifiedDatetime     = null;

  isValid: () ->
    return this.verifiedDatetime != null;