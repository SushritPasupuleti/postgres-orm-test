ALTER TABLE ctos ADD CONSTRAINT unique_email_address UNIQUE (email);
ALTER TABLE ctos ADD CONSTRAINT gender_constraint CHECK (gender = 'Male' OR gender = 'Female');