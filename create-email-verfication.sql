select * from `user`;
select * from `email_address`;
select * from `email_verification`;

insert into `email_verification`
select uuid(), '3d2283bd-e805-11e0-a526-0090f5b66d23', '9e948b85-e804-11e0-a526-0090f5b66d23', unix_timestamp()*1000, 1
union
select uuid(), '3d2284a4-e805-11e0-a526-0090f5b66d23', 'b19c99e3-e804-11e0-a526-0090f5b66d23', unix_timestamp()*1000, 0
union
select uuid(), '9e1aae99-e806-11e0-a526-0090f5b66d23', '3c705f64-e806-11e0-a526-0090f5b66d23', unix_timestamp()*1000, 0
;