-- Multi-Column checks
-- Having multiple columns with a check 
-- Name and address cannot be null
-- Phone and name_address need to be a unique value. There cannot be duplicates

CREATE TABLE companies (
supplier_id INT AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
phone VARCHAR(15) NOT NULL UNIQUE,
address VARCHAR(255) NOT NULL,
PRIMARY KEY (supplier_id),
CONSTRAINT name_address UNIQUE (name, address));

-- Table below shows sale_price needs to be greater or equal to purchase_price

CREATE TABLE houses (
    purchase_price INT NOT NULL,
    sale_price INT NOT NULL,
    CONSTRAINT sprice_gt_pprice CHECK (sale_price >= purchase_price)
);