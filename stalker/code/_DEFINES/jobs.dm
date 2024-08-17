/*-------------*\
|>>>> ROLES <<<<|
\*-------------*/

//-- BANDITS --//
#define JOB_BANDIT "Bandit"
#define JOB_BANDIT_BOSS "Bandit Boss"
#define JOB_BANDIT_BARTENDER "Bandit Bartender"


//-- DUTY --//
#define JOB_DUTY "Duty Soldier"
#define JOB_DUTY_LIEUTENANT "Duty Lieutenant"
#define JOB_DUTY_BARTENDER "Duty Bartender"


//-- FREEDOM --//
#define JOB_FREEDOM "Freedom Soldier"
#define JOB_FREEDOM_LIEUTENANT "Freedom Lieutenant"


//-- MERCENARIES --//
#define JOB_MERCENARY "Mercenary"
#define JOB_MERCENARY_BOSS "Mercenary Boss"


//-- LONERS --//
#define JOB_STALKER "Stalker"


//-- MONOLITH --//
#define JOB_MONOLITH "Monolith Soldier"
#define JOB_MONOLITH_PREACHER "Monolith Preacher"


//-- MILITARY --//
#define JOB_MILITARY "Military Soldier"
#define JOB_MILITARY_SPETSNAZ "Spetsnaz"
#define JOB_MILITARY_COMMANDER "Military Commander"



/*----------------*\
|>>>> FACTIONS <<<<|
\*----------------*/

#define FACTION_BANDITS "Bandits"
#define FACTION_DUTY "Duty"
#define FACTION_MERCENARIES "Mercenaries"
#define FACTION_MONOLITH "Monolith"
#define FACTION_FREEDOM "Freedom"
#define FACTION_ECOLOGISTS "Ecologists"
#define FACTION_LONERS "Loners"
#define FACTION_MILITARY "Military"


/*-------------------*\
|>>>> DEPARTMENTS <<<<|
\*-------------------*/

//-- NAMES --//
#define DEPARTMENT_BANDITS "Bandits"
#define DEPARTMENT_DUTY "Duty"
#define DEPARTMENT_FREEDOM "Freedom"
#define DEPARTMENT_LONERS "Loners"
#define DEPARTMENT_MERCENARIES "Mercenaries"
#define DEPARTMENT_MILITARY "Military"
#define DEPARTMENT_MONOLITH "Monolith"


//-- BITFLAGS --//
// See "~/code/_DEFINES/jobs.dm"




/*----------------*\
|>>>> UNIFORMS <<<<|
\*----------------*/

#define STALKER_UNIFORM (pick(\
	/obj/item/clothing/under/suit/sweater,\
	/obj/item/clothing/under/suit/sweater/blue,\
	/obj/item/clothing/under/suit/tracksuit,\
	/obj/item/clothing/under/suit/vdv,\
))