-- Create regions table
CREATE TABLE "regions"."gh_regions"(
	region_name VARCHAR(255) PRIMARY KEY,
	capital VARCHAR(255) NOT NULL
);

-- Create constituencies table
CREATE TABLE "regions"."constituencies" (
	constituency_name VARCHAR(255) PRIMARY KEY,
	region_name VARCHAR(255) REFERENCES "regions"."gh_regions"(region_name) ON DELETE CASCADE
);