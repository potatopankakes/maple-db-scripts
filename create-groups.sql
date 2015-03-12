insert into `group`
select  uuid(), 'System Administrators', 'Ability to do everything', unix_timestamp()*1000, 0
union
select  uuid(), 'Plan Administrators', 'Ability to Create, Update & Delete Plans, Offerings & Plan Texts', unix_timestamp()*1000, 0;

insert into `privileged_group`
/* sys admin */
select uuid(), p.id, 'ebe6b920-e800-11e0-a526-0090f5b66d23' from `privilege` p
union
/* plan admin */
select uuid(), p.id, 'ebe6baf5-e800-11e0-a526-0090f5b66d23' from `privilege` p where p.name like 'priv%Plans';

