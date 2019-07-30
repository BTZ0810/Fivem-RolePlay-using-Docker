
-- define emotes
-- use the custom emotes admin action to test emotes on-the-fly
-- animation list: http://docs.ragepluginhook.net/html/62951c37-a440-478c-b389-c471230ddfc5.htm

local cfg = {}

-- map of emote_name => {upper,seq,looping}
-- seq can also be a task definition, check the examples below
cfg.emotes = {
	["Levantar as mãos"] = { -- handsup state, use clear to lower hands
    true,
    { -- sequence, list of {dict,name,loops}
      {"random@mugging3", "handsup_standing_base", 1}
    },
    true
  },
	["Não"] = {
    true, {{"gestures@f@standing@casual","gesture_head_no",1}}, false
  },
	["Droga!"] = {
    true, {{"gestures@f@standing@casual","gesture_damn",1}}, false
  },
	["Dançar"] = {
    false, {
      {"rcmnigel1bnmt_1b","dance_intro_tyler",1},
      {"rcmnigel1bnmt_1b","dance_loop_tyler",1}
    }, false
  },
	["Saudação"] = {true,{{"mp_player_int_uppersalute","mp_player_int_salute",1}},false},
	["Rock"] = {true,{{"mp_player_introck","mp_player_int_rock",1}},false},

	["Sentar na cadeira"] = {false, {task="PROP_HUMAN_SEAT_CHAIR_MP_PLAYER"}, false},
	["Cop"] = {false, {task="WORLD_HUMAN_COP_IDLES"}, false},
	["Olhar no Binoculo"] = {false, {task="WORLD_HUMAN_BINOCULARS"}, false},
	["Bater palmas"] = {false, {task="WORLD_HUMAN_CHEERING"}, false},
	["Beber"] = {false, {task="WORLD_HUMAN_DRINKING"}, false},
	["Fumar"] = {false, {task="WORLD_HUMAN_SMOKING"}, false},
	["Film"] = {false, {task="WORLD_HUMAN_MOBILE_FILM_SHOCKING"}, false},
	["Plant"] = {false, {task="WORLD_HUMAN_GARDENER_PLANT"}, false},
	["Ficar de Guarda"] = {false, {task="WORLD_HUMAN_GUARD_STAND"}, false},
	["Hangout"] = {false, {task="WORLD_HUMAN_HANG_OUT_STREET"}, false},
	["Hiker"] = {false, {task="WORLD_HUMAN_HIKER_STANDING"}, false},
	["Ficar Estatua"] = {false, {task="WORLD_HUMAN_HUMAN_STATUE"}, false},
	["Corrida"] = {false, {task="WORLD_HUMAN_JOG_STANDING"}, false},
	["Inclinar-se"] = {false, {task="WORLD_HUMAN_LEANING"}, false},
	["Alongar-se"] = {false, {task="WORLD_HUMAN_MUSCLE_FLEX"}, false},
	["Camera"] = {false, {task="WORLD_HUMAN_PAPARAZZI"}, false},
	["Sentar"] = {false, {task="WORLD_HUMAN_PICNIC"}, false},
	["Prostituta 1"] = {false, {task="WORLD_HUMAN_PROSTITUTE_HIGH_CLASS"}, false},
	["Prostituta 2"] = {false, {task="WORLD_HUMAN_PROSTITUTE_LOW_CLASS"}, false},
	["Fazer Flexões"] = {false, {task="WORLD_HUMAN_PUSH_UPS"}, false},
	["Fazer Abdominais"] = {false, {task="WORLD_HUMAN_SIT_UPS"}, false},
	["Fish"] = {false, {task="WORLD_HUMAN_STAND_FISHING"}, false},
	["Impaciente"] = {false, {task="WORLD_HUMAN_STAND_IMPATIENT"}, false},
	["Mexer no celular"] = {false, {task="WORLD_HUMAN_STAND_MOBILE"}, false},
	["Dançar 2"] = {false, {task="WORLD_HUMAN_STRIP_WATCH_STAND"}, false},
	["Deitar 1"] = {false, {task="WORLD_HUMAN_SUNBATHE_BACK"}, false},
	["Deitar 2"] = {false, {task="WORLD_HUMAN_SUNBATHE"}, false},
	["Soldar"] = {false, {task="WORLD_HUMAN_WELDING"}, false},
	["Examinar corpo"] = {false, {task="CODE_HUMAN_MEDIC_KNEEL"}, false},
	["Controlar Multidão"] = {false, {task="CODE_HUMAN_POLICE_CROWD_CONTROL"}, false},
	["Investigar"] = {false, {task="CODE_HUMAN_POLICE_INVESTIGATE"}, false},
	["Minerar"] = {false, {task="WORLD_HUMAN_CONST_DRILL"}, false},
	["Fazer Yoga"] = {false, {task="WORLD_HUMAN_YOGA"}, false},
	["Cansado"] = {false,{task="WORLD_HUMAN_BUM_STANDING"},false},
	["Se lavar"] = {false,{task="WORLD_HUMAN_BUM_WASH"},false},
	["Sinalizar"] = {false,{task="WORLD_HUMAN_CAR_PARK_ATTENDANT"},false},
	["Prancheta"] = {false,{task="WORLD_HUMAN_CLIPBOARD"},false},
	["Beber Cerveja"] = {false,{task="WORLD_HUMAN_DRINKING"},false},
	["Fumar Baseado"] = {false,{task="WORLD_HUMAN_DRUG_DEALER"},false},
	["Fazer Pose"] = {false,{task="WORLD_HUMAN_DRUG_DEALER_HARD"},false},
	["Filmando Celular"] = {false,{task="WORLD_HUMAN_MOBILE_FILM_SHOCKING"},false},
	["Assoprador"] = {false,{task="WORLD_HUMAN_GARDENER_LEAF_BLOWER"},false},
	["Cavar"] = {false,{task="WORLD_HUMAN_GARDENER_PLANT"},false},
	["Golf"] = {false,{task="WORLD_HUMAN_GOLF_PLAYER"},false},
	["Analisar"] = {false,{task="WORLD_HUMAN_GUARD_PATROL"},false},
	["Martelar"] = {false,{task="WORLD_HUMAN_HAMMERING"},false},
	["Esperar"] = {false,{task="WORLD_HUMAN_HANG_OUT_STREET"},false},
	["Esperar | Mochila"] = {false,{task="WORLD_HUMAN_HIKER_STANDING"},false},
	["Varrer"] = {false,{task="WORLD_HUMAN_JANITOR"},false},
	["Limpar"] = {false,{task="WORLD_HUMAN_MAID_CLEAN"},false},
	["Puxar Ferro"] = {false,{task="WORLD_HUMAN_MUSCLE_FREE_WEIGHTS"},false},
	["Tocar Uma"] = {false,{task="WORLD_HUMAN_MUSICIAN"},false},
	["Tirar Foto"] = {false,{task="WORLD_HUMAN_PAPARAZZI"},false},
	["Beber e Dançar"] = {false,{task="WORLD_HUMAN_PARTYING"},false},
	["Sentar Chão"] = {false,{task="WORLD_HUMAN_PICNIC"},false},
	["Esperar | Puta C"] = {false,{task="WORLD_HUMAN_PROSTITUTE_HIGH_CLASS"},false},
	["Esperar | Puta"] = {false,{task="WORLD_HUMAN_PROSTITUTE_LOW_CLASS"},false},
	["Aquecer Fogueira"] = {false,{task="WORLD_HUMAN_STAND_FIRE"},false},
	["Tênis"] = {false,{task="WORLD_HUMAN_TENNIS_PLAYER"},false},
	["Ver Mapa"] = {false,{task="WORLD_HUMAN_TOURIST_MAP"},false},
	["Mecanico abaixo"] = {false,{task="WORLD_HUMAN_VEHICLE_MECHANIC"},false},
	["Caixa Eletrônico"] = {false,{task="PROP_HUMAN_ATM"},false},
	["Churrasquear"] = {false,{task="PROP_HUMAN_BBQ"},false},
	["Mecânico motor"] = {false,{task="PROP_HUMAN_BUM_BIN"},false},
	["Escorar Sacada"] = {false,{task="PROP_HUMAN_BUM_SHOPPING_CART"},false},
	["Barra"] = {false,{task="PROP_HUMAN_MUSCLE_CHIN_UPS"},false},
	["Abrindo Cofre"] = {false,{task="PROP_HUMAN_PARKING_METER"},false},
	["Esperar Impaciente"] = {false,{task="PROP_HUMAN_STAND_IMPATIENT"},false},
	["Esperar At Rua"] = {false,{task="CODE_HUMAN_CROSS_ROAD_WAIT"},false},
	["Anotar"] = {false,{task="CODE_HUMAN_MEDIC_TIME_OF_DEATH"},false},
	["ADULTO | Chupeta H"] = {false,{{"oddjobs@towing","m_blow_job_loop",1}},false},
	["ADULTO | Chupeta M"] = {false,{{"oddjobs@towing","f_blow_job_loop",1}},false},
	["ADULTO | Sexo H"] = {false,{{"mini@prostitutes@sexlow_veh","low_car_sex_loop_player",1}},false},
	["ADULTO | Sexo M"] = {false,{{"mini@prostitutes@sexlow_veh","low_car_sex_loop_female",1}},false},
	["ADULTO | Punheta"] = {true,{{"mp_player_int_upperwank","mp_player_int_wank_01",1}},false},
	["ADULTO | Dar o cu"] = {false,{{"rcmpaparazzo_2","shag_loop_poppy",2}},true},
	["ADULTO | Come o cu"] = {false,{{"rcmpaparazzo_2","shag_loop_a",2}},true},
	["ADULTO | Beijo Boca"] = {true,{{"mp_ped_interaction","kisses_guy_a",1}},false},
	["ADULTO | Balança peito"] = {false,{{"mini@strip_club@backroom@","stripper_b_backroom_idle_b",1}},false},
	["ADULTO | Strip de esquina"] = {false,{{"mini@strip_club@idles@stripper","stripper_idle_02",1}},false},
	["Sentar mexer celular"] = {false,{{"anim@heists@prison_heistunfinished_biztarget_idle","target_idle",1}},false},
	["Escutar coracao"] = {false,{{"mini@safe_cracking","idle_base",1}},false},
	["Churrasco"] = {false, {task="PROP_HUMAN_BBQ"}, false},
	["MEDO"] = {true,{{"amb@code_human_cower_stand@male@react_cowering","base_right",1}},true},
	["AlongaLUTA"] = {false,{{"anim@deathmatch_intros@unarmed","intro_male_unarmed_e",1}},true},
	["MEDO 2"] = {true,{{"amb@code_human_cower_stand@male@react_cowering","base_right",1}},false},
	["Me da isso"] = {true,{{"anim@am_hold_up@male","shoplift_high",2}},false},
	["Qual e sua"] = {true,{{"gestures@m@standing@casual","gesture_bring_it_on",2}},false},
	["Vamos la"] = {true,{{"gestures@m@standing@casual","gesture_come_here_soft",2}},false},
	["BLZ"] = {true,{{"mp_action","thanks_male_06",1}},false},
	["Vomito Carro"] = {false,{{"oddjobs@taxi@tie","vomit_outside",1}},true},
	["Dança com guarrafa"] = {false, {task="WORLD_HUMAN_PARTYING"}, false},
	["ADULTO | Queimando 1"] = {false, {task="WORLD_HUMAN_SMOKING_POT"}, false},
	["DJ"] = {false,{{"anim@mp_player_intcelebrationmale@dj","dj",1}},true},
	["Eu quero ROCK"] = {false,{{"anim@mp_player_intcelebrationmale@air_guitar","air_guitar",1}},true},
	["Creu"] = {false,{{"anim@mp_player_intcelebrationfemale@air_shagging","air_shagging",1}},true},
	["Rock'n'roll"] = {false,{{"mp_player_int_upperrock","mp_player_int_rock",1}},true},
}

return cfg
