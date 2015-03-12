insert into `privilege`
select  uuid(), 'privCreatePlans', 'Ability to Create Plans'
union
select  uuid(), 'privDeletePlans', 'Ability to Delete Plans'
union
select  uuid(), 'privUpdatePlans', 'Ability to Update Plans'
union
select  uuid(), 'privListPlans', 'Ability to List Plans'
union
select  uuid(), 'privCreateOfferings', 'Ability to Create Offerings'
union
select  uuid(), 'privDeleteOfferings', 'Ability to Delete Offerings'
union
select  uuid(), 'privUpdateOfferings', 'Ability to Update Offerings'
union
select  uuid(), 'privListOfferings', 'Ability to List Offerings'
union
select  uuid(), 'privCreatePlanTexts', 'Ability to Create PlanTexts'
union
select  uuid(), 'privDeletePlanTexts', 'Ability to Delete PlanTexts'
union
select  uuid(), 'privUpdatePlanTexts', 'Ability to Update PlanTexts'
union
select  uuid(), 'privListPlanTexts', 'Ability to List PlanTexts'
union
select  uuid(), 'privCreateGroups', 'Ability to Create Groups'
union
select  uuid(), 'privDeleteGroups', 'Ability to Delete Groups'
union
select  uuid(), 'privUpdateGroups', 'Ability to Update Groups'
union
select  uuid(), 'privListGroups', 'Ability to List Groups'
union
select  uuid(), 'privDeleteUsers', 'Ability to Delete Users'
union
select  uuid(), 'privListUsers', 'Ability to List Users'
union
select  uuid(), 'privDisableUsers', 'Ability to Enable/Disable Users'
union
select  uuid(), 'privCreatePrivileges', 'Ability to Create Privileges'
union
select  uuid(), 'privDeletePrivileges', 'Ability to Delete Privileges'
union
select  uuid(), 'privListPrivileges', 'Ability to List Privileges'
