DROP TABLE IF EXISTS types;
CREATE OR DROP TABLE types(
  id INTEGER SERIAL NOT NULL UNIQUE PRIMARY KEY, 
  name VARCHAR(100) NOT NULL,
  effective INT[],
  ineffective INT[],
  no_effect INT[]
);
DROP TABLE IF EXISTS type_effectiveness;
CREATE TABLE type_effectiveness (
  attacking_type_id INT REFERENCES types (id),
  effective_type_id INT REFERENCES types (id),
  PRIMARY KEY (attacking_type_id, effective_type_id)
);
DROP TABLE IF EXISTS type_ineffectiveness;

CREATE TABLE type_ineffectiveness (
  attacking_type_id INT REFERENCES types (id),
  ineffective_type_id INT REFERENCES types (id),
  PRIMARY KEY (attacking_type_id, ineffective_type_id)
);
DROP TABLE IF EXISTS type_no_effect;
CREATE TABLE type_no_effect (
  attacking_type_id INT REFERENCES types (id),
  no_effect_type_id INT REFERENCES types (id),
  PRIMARY KEY (attacking_type_id, no_effect_type_id)
);