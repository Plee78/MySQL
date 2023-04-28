-- TIMESTAMPS 
-- Combine a date and time. Takes up less storage due to the smaller support 
-- of date and time range. TIMESTAMP can be a default and show the current timestamp

CREATE TABLE captions (
	text VARCHAR(150),
    created_at TIMESTAMP default CURRENT_TIMESTAMP
);

-- ON UPDATE will update current timestamp whenever another column is updated

CREATE TABLE captions2 (
	text VARCHAR(150),
    created_at TIMESTAMP default CURRENT_TIMESTAMP
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);