const fs = require("fs");
const queryTypes = fs.readFileSync("../sql/types.sql", "utf8");
const queryPokedex = fs.readFileSync("../sql/pokedex.sql", "utf8");
const queryMoves = fs.readFileSync("../sql/moves.sql", "utf8");
module.exports = { queryTypes, queryPokedex, queryMoves };
