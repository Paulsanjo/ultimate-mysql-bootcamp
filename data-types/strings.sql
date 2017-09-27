-- CHAR(N)
CHAR(N)
-- fixed length string data type.
--
-- if populated with less characters than the data type will hold, the value is right-padded.
-- when the value is retrieved, the right-padding is removed unless PAD_CHAR_TO_FULL_LENGTH sql more is enabled.
--
-- it is faster for fixed length text.

-- VARCHAR(N)
VARCHAR(N)
-- variable length string data type.
--
-- only the space required for the specified characters is reserved. therefore, for example, storing a two character-string
-- in a VARCHAR(4) data type column would be take less storage than in a CHAR(4) data type column.
