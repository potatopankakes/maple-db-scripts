use maple;

select * from `email_address`;
select * from `user`;
select * from `email_verification`;

insert into `email_address`
select uuid(), 'exists-not-deleted-not-verified@gmail.com'
union
select uuid(), 'exists-deleted-not-verified@gmail.com'
union
select uuid(), 'exists-not-deleted-verified@gmail.com'
union
select uuid(), 'exists-deleted-verified@gmail.com'
;

insert into `user`
select uuid(), 
'80b686cf-ff8d-11e0-b009-0090f5b66d23', 
'exists-not-deleted-not-verified', 
0x45C01877BCAD99E71A215971601CB431D1037F8A9A13BD3CDC25085285F7725B, 
0x6D7193AAB192FDFA8C990B4165523360B887C34CB0AA8C91082998B32EB68E77, 
unix_timestamp()*1000, 0
union
select uuid(), 
'80b68854-ff8d-11e0-b009-0090f5b66d23', 
'exists-not-deleted-verified', 
0x51F05FA3A5EACBD767821324AF23167A5C0C8EC418605DA54B74DD29E5A6EEA7, 
0x427516509FE969FFE743849A4753FFF23BE5AF06192502ABB3DC3B8ED0980887, 
unix_timestamp()*1000, 0
union
select uuid(), 
'80b6879f-ff8d-11e0-b009-0090f5b66d23', 
'exists-deleted-not-verified', 
0xD27CDBA5DDEBB76D90D1DBC63254BB307839B6C0F9D128C62161FEAFF79AC22A, 
0x2BE0693183B0DA1C3500BCFB13B13A967FEB9B73ECC17B54B9C49A06BAB76EC5, 
unix_timestamp()*1000, unix_timestamp()*1000+10000000
union
select uuid(), 
'80b688f6-ff8d-11e0-b009-0090f5b66d23', 
'exists-deleted-verified', 
0x49BA6D1A5ECBD8B0704FC295654433058B75BAA37CFF8F537E96765A4092A716, 
0xB8136E387F16B1E0A088828A97453E79F804F2D6B3394E4C38416F1E30A7BADE, 
unix_timestamp()*1000, unix_timestamp()*1000+10000000
;

insert into `email_verification`
select uuid(), 
'961d2745-ff95-11e0-b009-0090f5b66d23',
'80b686cf-ff8d-11e0-b009-0090f5b66d23',
unix_timestamp()*1000, 0 # exists-not-deleted-not-verified
union
select uuid(), 
'961d27fb-ff95-11e0-b009-0090f5b66d23',
'80b68854-ff8d-11e0-b009-0090f5b66d23',
unix_timestamp()*1000, 1 # exists-not-deleted-verified
union
select uuid(), 
'961d2849-ff95-11e0-b009-0090f5b66d23',
'80b6879f-ff8d-11e0-b009-0090f5b66d23', 
unix_timestamp()*1000, 0 # exists-deleted-not-verified
union
select uuid(), 
'961d289b-ff95-11e0-b009-0090f5b66d23', 
'80b688f6-ff8d-11e0-b009-0090f5b66d23',
unix_timestamp()*1000, 1 # exists-deleted-verified
;


update `user`
set `deleted_at` = unix_timestamp()*1000
where 
`id` in (
'961d2849-ff95-11e0-b009-0090f5b66d23',
'961d289b-ff95-11e0-b009-0090f5b66d23'
)
;


select u.`id` as user_id, address, deleted_at from `user` u
	join `email_address` ea
		on u.`email_id` = ea.`id`
;