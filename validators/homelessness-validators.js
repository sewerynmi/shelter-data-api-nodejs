const Validator = require("jsonschema").Validator;
const homelessnessValidator = new Validator();

const currYear = new Date().getFullYear();

/*
  Validation schema for data insertion
*/
const homelessnessDataSchema = {
  id: "/HomelessnessData",
  type: "object",
  properties: {
    year: { type: "integer", minimum: 1970, maximum: currYear },
    period: { type: "string" },
    values: {
      type: "array",
      items: {
        $ref: "/HomelessnessEntry",
      },
      minItems: 1,
    },
  },
  required: ["year", "period", "values"],
};

/*
  Validation schema for each data row
*/
const homelessnessEntrySchema = {
  id: "/HomelessnessEntry",
  type: "object",
  properties: {
    location_id: { type: "string" },
    location_name: { type: "string" },
    total_init: { type: "integer", minimum: -1 },
    total_oprd: { type: "integer", minimum: -1 },
    threatened: { type: "integer", minimum: -1 },
    homeless_relief_duty: { type: "integer", minimum: -1 },
  },
  required: [
    "location_id",
    "location_name",
    "total_init",
    "total_oprd",
    "threatened",
    "homeless_relief_duty",
  ],
};

homelessnessValidator.addSchema(homelessnessEntrySchema, "/HomelessnessEntry");

module.exports.homelessnessDataSchema = homelessnessDataSchema;
module.exports.homelessnessValidator = homelessnessValidator;
module.exports.homelessnessEntrySchema = homelessnessEntrySchema;
