use maple;

select `id`, `email_id`, `name`, hex(`password`), hex(`salt`), `created_at`, `deleted_at` from `user`;
select * from `email_address`;
select * from `group_member`;

insert into `email_address`
select uuid(), 'potatopankakes@gmail.com'
union
select uuid(), 'gnoras@gmail.com'
union
select uuid(), 'swimur@gmail.com';

insert into `user` (`id`, `email_id`, `name`, `password`, `salt`, `created_at`, `deleted_at`)
select uuid(), '9e948b85-e804-11e0-a526-0090f5b66d23', 'Jeff Burke/Admin', 
0xFE37FD6A569BEFEB6FBE0F5DE38F9D61BD1E3F261F7C3AB80AC51EF8444EB2B2, 
0x7E5CB7F9D92D98ACEFF1F205B7C5D5EE2756160F9E6E51E0A6B71B7118B2135A, 
unix_timestamp()*1000, 0
union
select uuid(), 'b19c99e3-e804-11e0-a526-0090f5b66d23', 'Jeff Burke/Plan Admin', 
0x761AB741A2995347E1B4D49629FFA3159B8D33458E84859CF830A47016B2AA96,
0x00bdfb8a9ce054993ed0f99069d47068e7814971553b7611c6565bee721e3a2a, 
unix_timestamp()*1000, 0
union
select uuid(), '3c705f64-e806-11e0-a526-0090f5b66d23', 'Jeff Burke/No Privs', 
0xD0EC21C8225DB8ACC04DC2572ED37042B27CDE2F1AD863EACE73E21CC2D99F80, 
0x6EC0FD7769530BE7356D93C192957CF4A65141AC4A831F696BF5F601ECB27FBF, 
unix_timestamp()*1000, 0;

insert into `group_member`
select uuid(), '3d2283bd-e805-11e0-a526-0090f5b66d23', 'ebe6b920-e800-11e0-a526-0090f5b66d23'
union
select uuid(), '3d2284a4-e805-11e0-a526-0090f5b66d23', 'ebe6baf5-e800-11e0-a526-0090f5b66d23';
