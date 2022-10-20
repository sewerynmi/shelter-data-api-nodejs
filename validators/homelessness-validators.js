const Validator = require("jsonschema").Validator;
const homelessnessValidator = new Validator();

const homelessnessDataSchema = {
  id: "/HomelessnessData",
  type: "object",
  properties: {
    year: { type: "integer", minimum: 1970, maximum: 2040 },
    quarter: { type: "string" },
    values: {
      type: "array",
      items: {
        $ref: "/HomelessnessEntry",
      },
    },
  },
  required: ["year", "quarter", "values"],
};

const homelessnessEntrySchema = {
  id: "/HomelessnessEntry",
  type: "object",
};

homelessnessValidator.addSchema(homelessnessEntrySchema, "/HomelessnessEntry");

module.exports.homelessnessDataSchema = homelessnessDataSchema;
module.exports.homelessnessValidator = homelessnessValidator;
module.exports.homelessnessEntrySchema = homelessnessEntrySchema;
