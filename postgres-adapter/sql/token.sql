CREATE TABLE "token_pair"(
    "pair_id" serial NOT NULL,
    "token_address" varchar(42) NOT NULL,
    "pool_address" varchar(42) NOT NULL
);

ALTER TABLE
    "token_pair" ADD PRIMARY KEY("pair_id");

CREATE TABLE "blocknumber"(
    "unix_timestamp" INTEGER NOT NULL,
    "block_number" INTEGER NOT NULL
);

ALTER TABLE
    "blocknumber" ADD PRIMARY KEY("unix_timestamp");

CREATE TABLE "price"(
    "unix_timestamp" INTEGER NOT NULL,
    "price" DECIMAL(8, 2) NOT NULL,
    "pool_address" varchar(42) NOT NULL,
    "exponent" INTEGER,
    "block_number" INTEGER
);

ALTER TABLE
    "price" ADD PRIMARY KEY("unix_timestamp");


CREATE TABLE "token_info"(
    "token_id" serial NOT NULL,
    "token_address" VARCHAR(42) NOT NULL,
    "token_name" VARCHAR(20) NOT NULL,
    "symbol" VARCHAR(20) NOT NULL,
    "decimals" INTEGER NOT NULL,
    "supply" VARCHAR(100) NOT NULL,
    "primary_pool_address" VARCHAR(42) NOT NULL
);

ALTER TABLE
    "token_info" ADD PRIMARY KEY("token_id");

CREATE TABLE "token_pool"(
    "pool_id" serial NOT NULL,
    "pool_address" VARCHAR(42) NOT NULL,
    "token1_address" VARCHAR(42) NOT NULL,
    "token0_address" VARCHAR(42) NOT NULL,
    "primary_token" VARCHAR(42) NOT NULL,
    "secondary_token" VARCHAR(42) NOT NULL,
    "liquidity" INTEGER NOT NULL
);

ALTER TABLE
    "token_pool" ADD PRIMARY KEY("pool_id");

-- @block

drop table token_pool, token_pair, token_info, price,blocknumber;

-- @block