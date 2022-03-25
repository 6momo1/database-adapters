-- @block inserting timestamp and block numbers

insert into Blocknumber (unix_timestamp, block_number) 
VALUES
    (1647785133, 16350317),
    (1647785120 ,16350314),
    (1647732920 ,16350112)


-- @block inserting token info

insert into token_info (
    token_address,
    token_name,
    symbol,
    decimals,
    supply,
    primary_pool_address
)
VALUES
(
    '0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c',
    'Wrapped BNB',
    'WBNB',
    18,
    '5435028344175333959291847',
    '0x58F876857a02D6762E0101bb5C46A8c1ED44Dc16'
)

-- @block

select * from token_info;

-- @block inserting into tokenPool

insert into token_pool (
    "pool_address",
    "token1_address",
    "token0_address",
    "primary_token",
    "secondary_token",
    "liquidity" 
)
VALUES (
    '0x58F876857a02D6762E0101bb5C46A8c1ED44Dc16',
    '0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c',
    '0xe9e7cea3dedca5984780bafc599bd69add087d56',
    '0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c',
    '0xe9e7cea3dedca5984780bafc599bd69add087d56',
    0
)

-- @block

select * from token_pool;

-- @block

insert into token_pair (
    token_address,
    pool_address
)
values (
   '0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c',
   '0x58F876857a02D6762E0101bb5C46A8c1ED44Dc16'
)

-- @block
select * from token_pair


-- @block
insert into price (
    unix_timestamp,
    price,
    pool_address
)
values (
    16360316,
    414.81,
    '0x58F876857a02D6762E0101bb5C46A8c1ED44Dc16'
)

-- @block
select * from price;




