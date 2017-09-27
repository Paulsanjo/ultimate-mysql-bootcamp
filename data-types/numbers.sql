-- attempting to store a number less than or greater than the upper and lower boundaries of a data type
-- will result in implicit rounding and scaling/precision adjustment.will
--
-- if a number is greater than the upper limit of the data type, the maximum number possible is saved.

-- whole numbers
INT

-- decimal numbers
DECIMAL(total_digits, precision)

-- DECIMAL(5, 2) = 999.99 maximum value.
--
-- decimals numbers have fixed scaling and precision - two decimal places will always be used.

-- floating point single-precision numbers
FLOAT(total_digits, precision)

-- double-precision numbers
DOUBLE(total_digits, precision)

-- comparisons using both FLOAT and DOUBLE data types can be difficult due to approximations of values
-- used to obtain such high precision numbers. this is caused by limitations on a platform or
-- implementation.