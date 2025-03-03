-- Liquibase formatted SQL

-- changeset author:arunvaidhyanathan:2
-- Insert data into alert_mst table
INSERT INTO cads.alert_mst (alert_name, description) VALUES ('Alert 1', 'Description 1');
INSERT INTO cads.alert_mst (alert_name, description) VALUES ('Alert 2', 'Description 2');

-- Add email column to business_user table
ALTER TABLE cads.business_user ADD COLUMN email VARCHAR(255);

-- Create index on username column of business_user table
CREATE INDEX idx_business_user_username ON cads.business_user (username);