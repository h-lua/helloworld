globals
//globals from A:
constant boolean LIBRARY_A=true
//endglobals from A
//globals from DzAPI:
constant boolean LIBRARY_DzAPI=true
//endglobals from DzAPI
//globals from myMap:
constant boolean LIBRARY_myMap=true
//endglobals from myMap
//globals from zzzDZapi:
constant boolean LIBRARY_zzzDZapi=true
//endglobals from zzzDZapi
    // Generated
string gg_snd_bgm_seven
string gg_snd_bgm_battle
string gg_snd_bgm_moon
string gg_snd_bgm_seven2
string gg_snd_bgm_sun
string gg_snd_bgm_thunder
string gg_snd_bgm_wind
sound gg_snd_voice_kill= null
sound gg_snd_voice_monster= null
sound gg_snd_voice_reborn_do= null
sound gg_snd_voice_sea= null
sound gg_snd_voice_thunder= null
sound gg_snd_voice_wind= null
sound gg_snd_voice_drum= null
sound gg_snd_voice_eagle= null
sound gg_snd_voice_ghost= null
sound gg_snd_voice_heart_beat= null
sound gg_snd_voice_ghost_laugh= null
sound gg_snd_ReceiveGold= null
sound gg_snd_voice_mission_start= null
sound gg_snd_voice_mission_end= null
sound gg_snd_BundleOfLumber= null
trigger gg_trg_dzpi= null
trigger gg_trg_hlua= null
    // 充足的触发队列
integer Hlua_DzAPI_Tgr_count= 9
trigger Hlua_DzAPI_Tgr_1
trigger Hlua_DzAPI_Tgr_2
trigger Hlua_DzAPI_Tgr_3
trigger Hlua_DzAPI_Tgr_4
trigger Hlua_DzAPI_Tgr_5
trigger Hlua_DzAPI_Tgr_6
trigger Hlua_DzAPI_Tgr_7
trigger Hlua_DzAPI_Tgr_8
trigger Hlua_DzAPI_Tgr_9
boolean HLUA_DZAPI_FLAG= true
hashtable hash_hlua_dzapi
integer HLDK_COMMAND= 101
integer HLDK_PLAYER= 102
integer HLDK_KEY= 103
integer HLDK_DATA= 104
integer HLDK_RESULT= 120
hashtable hash_hslk= InitHashtable()
hashtable hash_hslk_helper= InitHashtable()

trigger l__library_init

//JASSHelper struct globals:

endglobals
	native DzAPI_Map_SaveServerValue takes player whichPlayer, string key, string value returns boolean
    native DzAPI_Map_GetServerValue takes player whichPlayer, string key returns string
    native DzAPI_Map_Ladder_SetStat takes player whichPlayer, string key, string value returns nothing
    native DzAPI_Map_IsRPGLadder takes nothing returns boolean
    native DzAPI_Map_GetGameStartTime takes nothing returns integer
    native DzAPI_Map_Stat_SetStat takes player whichPlayer, string key, string value returns nothing
    native DzAPI_Map_GetMatchType takes nothing returns integer
    native DzAPI_Map_Ladder_SetPlayerStat takes player whichPlayer, string key, string value returns nothing
	native DzAPI_Map_GetServerValueErrorCode takes player whichPlayer returns integer
    native DzAPI_Map_GetLadderLevel takes player whichPlayer returns integer
	native DzAPI_Map_IsRedVIP takes player whichPlayer returns boolean
	native DzAPI_Map_IsBlueVIP takes player whichPlayer returns boolean
	native DzAPI_Map_GetLadderRank takes player whichPlayer returns integer
	native DzAPI_Map_GetMapLevelRank takes player whichPlayer returns integer
	native DzAPI_Map_GetGuildName takes player whichPlayer returns string
	native DzAPI_Map_GetGuildRole takes player whichPlayer returns integer
	native DzAPI_Map_IsRPGLobby takes nothing returns boolean
	native DzAPI_Map_GetMapLevel takes player whichPlayer returns integer
	native DzAPI_Map_MissionComplete takes player whichPlayer, string key, string value returns nothing
	native DzAPI_Map_GetActivityData takes nothing returns string
	native DzAPI_Map_GetMapConfig takes string key returns string
	native DzAPI_Map_HasMallItem takes player whichPlayer, string key returns boolean
	native DzAPI_Map_SavePublicArchive takes player whichPlayer, string key, string value returns boolean
	native DzAPI_Map_GetPublicArchive takes player whichPlayer, string key returns string
	native DzAPI_Map_UseConsumablesItem takes player whichPlayer, string key returns nothing
	native DzAPI_Map_OrpgTrigger takes player whichPlayer, string key returns nothing
	native DzAPI_Map_GetServerArchiveDrop takes player whichPlayer, string key returns string
	native DzAPI_Map_GetServerArchiveEquip takes player whichPlayer, string key returns integer


//library A:
    function A__Init takes nothing returns nothing
        local integer key1= 0
        local integer key2= 0
        local string vs= null
        local integer vi= 0
        //slk注册
        
                set vi='o000'
                
                call SaveInteger(hash_hslk, 99, 101, vi)
                
                set vi='o001'
                
                call SaveInteger(hash_hslk, 99, 102, vi)
                
                set vi='o01C'
                
                call SaveInteger(hash_hslk, 99, 103, vi)
                
                set vi='o002'
                
                call SaveInteger(hash_hslk, 99, 104, vi)
                
                set vi='A001'
                
                call SaveInteger(hash_hslk, 106, 1, vi)
                
                set vi='A002'
                
                call SaveInteger(hash_hslk, 106, 2, vi)
                
                set vi='A003'
                
                call SaveInteger(hash_hslk, 106, 3, vi)
                
                set vi='A004'
                
                call SaveInteger(hash_hslk, 106, 4, vi)
                
                set vi='A005'
                
                call SaveInteger(hash_hslk, 106, 5, vi)
                
                set vi='A006'
                
                call SaveInteger(hash_hslk, 106, 6, vi)
                
                set vi='A007'
                
                call SaveInteger(hash_hslk, 106, 7, vi)
                
                set vi='A008'
                
                call SaveInteger(hash_hslk, 106, 8, vi)
                
                set vi='A009'
                
                call SaveInteger(hash_hslk, 106, 9, vi)
                
                set vi='A00A'
                
                call SaveInteger(hash_hslk, 106, 10, vi)
                
                set vi='A00B'
                
                call SaveInteger(hash_hslk, 99, 107, vi)
                
                set vi='A00C'
                
                call SaveInteger(hash_hslk, 99, 108, vi)
                
                set vi='A00D'
                
                call SaveInteger(hash_hslk, 99, 109, vi)
                
                set vi='n000'
                
                call SaveInteger(hash_hslk, 99, 110, vi)
                
                set vi='o003'
                
                call SaveInteger(hash_hslk, 99, 111, vi)
                
                set vi='n001'
                
                call SaveInteger(hash_hslk, 99, 112, vi)
                
                set vi='o00W'
                
                call SaveInteger(hash_hslk, 113, 1, vi)
                
                set vi='o00X'
                
                call SaveInteger(hash_hslk, 113, 2, vi)
                
                set vi='o00Y'
                
                call SaveInteger(hash_hslk, 113, 3, vi)
                
                set vi='o00Z'
                
                call SaveInteger(hash_hslk, 113, 4, vi)
                
                set vi='o010'
                
                call SaveInteger(hash_hslk, 113, 5, vi)
                
                set vi='o011'
                
                call SaveInteger(hash_hslk, 113, 6, vi)
                
                set vi='o012'
                
                call SaveInteger(hash_hslk, 113, 7, vi)
                
                set vi='o01H'
                
                call SaveInteger(hash_hslk, 113, 8, vi)
                
                set vi='o01I'
                
                call SaveInteger(hash_hslk, 113, 9, vi)
                
                set vi='o01J'
                
                call SaveInteger(hash_hslk, 113, 10, vi)
                
                set vi='o01K'
                
                call SaveInteger(hash_hslk, 113, 11, vi)
                
                set vi='o01L'
                
                call SaveInteger(hash_hslk, 113, 12, vi)
                
                set vi='o01M'
                
                call SaveInteger(hash_hslk, 113, 13, vi)
                
                set vi='o01N'
                
                call SaveInteger(hash_hslk, 113, 14, vi)
                
                set vi='o01O'
                
                call SaveInteger(hash_hslk, 113, 15, vi)
                
                set vi='o01P'
                
                call SaveInteger(hash_hslk, 113, 16, vi)
                
                set vi='o01Q'
                
                call SaveInteger(hash_hslk, 113, 17, vi)
                
                set vi='o01R'
                
                call SaveInteger(hash_hslk, 113, 18, vi)
                
                set vi='o01S'
                
                call SaveInteger(hash_hslk, 113, 19, vi)
                
                set vi=19
                
                call SaveInteger(hash_hslk, 113, - 1, vi)
                
                set vi='A00E'
                
                call SaveInteger(hash_hslk, 114, 1, vi)
                
                set vi='A00F'
                
                call SaveInteger(hash_hslk, 115, 1, vi)
                
                set vi='A00G'
                
                call SaveInteger(hash_hslk, 116, 1, vi)
                
                set vi='A00H'
                
                call SaveInteger(hash_hslk, 117, 1, vi)
                
                set vi='A00I'
                
                call SaveInteger(hash_hslk, 118, 1, vi)
                
                set vi='A00J'
                
                call SaveInteger(hash_hslk, 119, 1, vi)
                
                set vi='A00K'
                
                call SaveInteger(hash_hslk, 120, 1, vi)
                
                set vi='A00L'
                
                call SaveInteger(hash_hslk, 121, 1, vi)
                
                set vi='A00M'
                
                call SaveInteger(hash_hslk, 122, 1, vi)
                
                set vi='I000'
                
                call SaveInteger(hash_hslk, 124, 1, vi)
                
                set vi='A00N'
                
                call SaveInteger(hash_hslk, 123, 1, vi)
                
                set vi='I001'
                
                call SaveInteger(hash_hslk, 125, 1, vi)
                
                set vi='A00O'
                
                call SaveInteger(hash_hslk, 126, 1, vi)
                
                set vi='A00P'
                
                call SaveInteger(hash_hslk, 127, 1, vi)
                
                set vi='A00Q'
                
                call SaveInteger(hash_hslk, 128, 1, vi)
                
                set vi='A00R'
                
                call SaveInteger(hash_hslk, 129, 1, vi)
                
                set vi='A00S'
                
                call SaveInteger(hash_hslk, 130, 1, vi)
                
                set vi='A00T'
                
                call SaveInteger(hash_hslk, 131, 1, vi)
                
                set vi='A00U'
                
                call SaveInteger(hash_hslk, 132, 1, vi)
                
                set vi='A00V'
                
                call SaveInteger(hash_hslk, 133, 1, vi)
                
                set vi='A00W'
                
                call SaveInteger(hash_hslk, 114, 10, vi)
                
                set vi='A00X'
                
                call SaveInteger(hash_hslk, 115, 10, vi)
                
                set vi='A00Y'
                
                call SaveInteger(hash_hslk, 116, 10, vi)
                
                set vi='A00Z'
                
                call SaveInteger(hash_hslk, 117, 10, vi)
                
                set vi='A010'
                
                call SaveInteger(hash_hslk, 118, 10, vi)
                
                set vi='A011'
                
                call SaveInteger(hash_hslk, 119, 10, vi)
                
                set vi='A012'
                
                call SaveInteger(hash_hslk, 120, 10, vi)
                
                set vi='A013'
                
                call SaveInteger(hash_hslk, 121, 10, vi)
                
                set vi='A014'
                
                call SaveInteger(hash_hslk, 122, 10, vi)
                
                set vi='I002'
                
                call SaveInteger(hash_hslk, 124, 10, vi)
                
                set vi='A015'
                
                call SaveInteger(hash_hslk, 123, 10, vi)
                
                set vi='I003'
                
                call SaveInteger(hash_hslk, 125, 10, vi)
                
                set vi='A016'
                
                call SaveInteger(hash_hslk, 126, 10, vi)
                
                set vi='A017'
                
                call SaveInteger(hash_hslk, 127, 10, vi)
                
                set vi='A018'
                
                call SaveInteger(hash_hslk, 128, 10, vi)
                
                set vi='A019'
                
                call SaveInteger(hash_hslk, 129, 10, vi)
                
                set vi='A01A'
                
                call SaveInteger(hash_hslk, 130, 10, vi)
                
                set vi='A01B'
                
                call SaveInteger(hash_hslk, 131, 10, vi)
                
                set vi='A01C'
                
                call SaveInteger(hash_hslk, 132, 10, vi)
                
                set vi='A01D'
                
                call SaveInteger(hash_hslk, 133, 10, vi)
                
                set vi='A01E'
                
                call SaveInteger(hash_hslk, 114, 100, vi)
                
                set vi='A01F'
                
                call SaveInteger(hash_hslk, 115, 100, vi)
                
                set vi='A01G'
                
                call SaveInteger(hash_hslk, 116, 100, vi)
                
                set vi='A01H'
                
                call SaveInteger(hash_hslk, 117, 100, vi)
                
                set vi='A01I'
                
                call SaveInteger(hash_hslk, 118, 100, vi)
                
                set vi='A01J'
                
                call SaveInteger(hash_hslk, 119, 100, vi)
                
                set vi='A01K'
                
                call SaveInteger(hash_hslk, 120, 100, vi)
                
                set vi='A01L'
                
                call SaveInteger(hash_hslk, 121, 100, vi)
                
                set vi='A01M'
                
                call SaveInteger(hash_hslk, 122, 100, vi)
                
                set vi='I004'
                
                call SaveInteger(hash_hslk, 124, 100, vi)
                
                set vi='A01N'
                
                call SaveInteger(hash_hslk, 123, 100, vi)
                
                set vi='I005'
                
                call SaveInteger(hash_hslk, 125, 100, vi)
                
                set vi='A01O'
                
                call SaveInteger(hash_hslk, 126, 100, vi)
                
                set vi='A01P'
                
                call SaveInteger(hash_hslk, 127, 100, vi)
                
                set vi='A01Q'
                
                call SaveInteger(hash_hslk, 128, 100, vi)
                
                set vi='A01R'
                
                call SaveInteger(hash_hslk, 129, 100, vi)
                
                set vi='A01S'
                
                call SaveInteger(hash_hslk, 130, 100, vi)
                
                set vi='A01T'
                
                call SaveInteger(hash_hslk, 131, 100, vi)
                
                set vi='A01U'
                
                call SaveInteger(hash_hslk, 132, 100, vi)
                
                set vi='A01V'
                
                call SaveInteger(hash_hslk, 133, 100, vi)
                
                set vi='A01W'
                
                call SaveInteger(hash_hslk, 114, 1000, vi)
                
                set vi='A01X'
                
                call SaveInteger(hash_hslk, 115, 1000, vi)
                
                set vi='A01Y'
                
                call SaveInteger(hash_hslk, 116, 1000, vi)
                
                set vi='A01Z'
                
                call SaveInteger(hash_hslk, 117, 1000, vi)
                
                set vi='A020'
                
                call SaveInteger(hash_hslk, 118, 1000, vi)
                
                set vi='A021'
                
                call SaveInteger(hash_hslk, 119, 1000, vi)
                
                set vi='A022'
                
                call SaveInteger(hash_hslk, 120, 1000, vi)
                
                set vi='A023'
                
                call SaveInteger(hash_hslk, 121, 1000, vi)
                
                set vi='A024'
                
                call SaveInteger(hash_hslk, 122, 1000, vi)
                
                set vi='I006'
                
                call SaveInteger(hash_hslk, 124, 1000, vi)
                
                set vi='A025'
                
                call SaveInteger(hash_hslk, 123, 1000, vi)
                
                set vi='I007'
                
                call SaveInteger(hash_hslk, 125, 1000, vi)
                
                set vi='A026'
                
                call SaveInteger(hash_hslk, 126, 1000, vi)
                
                set vi='A027'
                
                call SaveInteger(hash_hslk, 127, 1000, vi)
                
                set vi='A028'
                
                call SaveInteger(hash_hslk, 128, 1000, vi)
                
                set vi='A029'
                
                call SaveInteger(hash_hslk, 129, 1000, vi)
                
                set vi='A02A'
                
                call SaveInteger(hash_hslk, 130, 1000, vi)
                
                set vi='A02B'
                
                call SaveInteger(hash_hslk, 131, 1000, vi)
                
                set vi='A02C'
                
                call SaveInteger(hash_hslk, 132, 1000, vi)
                
                set vi='A02D'
                
                call SaveInteger(hash_hslk, 133, 1000, vi)
                
                set vi='A02E'
                
                call SaveInteger(hash_hslk, 114, 10000, vi)
                
                set vi='A02F'
                
                call SaveInteger(hash_hslk, 115, 10000, vi)
                
                set vi='A02G'
                
                call SaveInteger(hash_hslk, 116, 10000, vi)
                
                set vi='A02H'
                
                call SaveInteger(hash_hslk, 117, 10000, vi)
                
                set vi='A02I'
                
                call SaveInteger(hash_hslk, 118, 10000, vi)
                
                set vi='A02J'
                
                call SaveInteger(hash_hslk, 119, 10000, vi)
                
                set vi='A02K'
                
                call SaveInteger(hash_hslk, 120, 10000, vi)
                
                set vi='A02L'
                
                call SaveInteger(hash_hslk, 121, 10000, vi)
                
                set vi='A02M'
                
                call SaveInteger(hash_hslk, 122, 10000, vi)
                
                set vi='I008'
                
                call SaveInteger(hash_hslk, 124, 10000, vi)
                
                set vi='A02N'
                
                call SaveInteger(hash_hslk, 123, 10000, vi)
                
                set vi='I009'
                
                call SaveInteger(hash_hslk, 125, 10000, vi)
                
                set vi='A02O'
                
                call SaveInteger(hash_hslk, 126, 10000, vi)
                
                set vi='A02P'
                
                call SaveInteger(hash_hslk, 127, 10000, vi)
                
                set vi='A02Q'
                
                call SaveInteger(hash_hslk, 128, 10000, vi)
                
                set vi='A02R'
                
                call SaveInteger(hash_hslk, 129, 10000, vi)
                
                set vi='A02S'
                
                call SaveInteger(hash_hslk, 130, 10000, vi)
                
                set vi='A02T'
                
                call SaveInteger(hash_hslk, 131, 10000, vi)
                
                set vi='A02U'
                
                call SaveInteger(hash_hslk, 132, 10000, vi)
                
                set vi='A02V'
                
                call SaveInteger(hash_hslk, 133, 10000, vi)
                
                set vi='A02W'
                
                call SaveInteger(hash_hslk, 114, 100000, vi)
                
                set vi='A02X'
                
                call SaveInteger(hash_hslk, 115, 100000, vi)
                
                set vi='A02Y'
                
                call SaveInteger(hash_hslk, 116, 100000, vi)
                
                set vi='A02Z'
                
                call SaveInteger(hash_hslk, 117, 100000, vi)
                
                set vi='A030'
                
                call SaveInteger(hash_hslk, 118, 100000, vi)
                
                set vi='A031'
                
                call SaveInteger(hash_hslk, 119, 100000, vi)
                
                set vi='A032'
                
                call SaveInteger(hash_hslk, 120, 100000, vi)
                
                set vi='A033'
                
                call SaveInteger(hash_hslk, 121, 100000, vi)
                
                set vi='A034'
                
                call SaveInteger(hash_hslk, 122, 100000, vi)
                
                set vi='I00A'
                
                call SaveInteger(hash_hslk, 124, 100000, vi)
                
                set vi='A035'
                
                call SaveInteger(hash_hslk, 123, 100000, vi)
                
                set vi='I00B'
                
                call SaveInteger(hash_hslk, 125, 100000, vi)
                
                set vi='A036'
                
                call SaveInteger(hash_hslk, 126, 100000, vi)
                
                set vi='A037'
                
                call SaveInteger(hash_hslk, 127, 100000, vi)
                
                set vi='A038'
                
                call SaveInteger(hash_hslk, 128, 100000, vi)
                
                set vi='A039'
                
                call SaveInteger(hash_hslk, 129, 100000, vi)
                
                set vi='A03A'
                
                call SaveInteger(hash_hslk, 130, 100000, vi)
                
                set vi='A03B'
                
                call SaveInteger(hash_hslk, 131, 100000, vi)
                
                set vi='A03C'
                
                call SaveInteger(hash_hslk, 132, 100000, vi)
                
                set vi='A03D'
                
                call SaveInteger(hash_hslk, 133, 100000, vi)
                
                set vi='A03E'
                
                call SaveInteger(hash_hslk, 114, 1000000, vi)
                
                set vi='A03F'
                
                call SaveInteger(hash_hslk, 115, 1000000, vi)
                
                set vi='A03G'
                
                call SaveInteger(hash_hslk, 116, 1000000, vi)
                
                set vi='A03H'
                
                call SaveInteger(hash_hslk, 117, 1000000, vi)
                
                set vi='A03I'
                
                call SaveInteger(hash_hslk, 118, 1000000, vi)
                
                set vi='A03J'
                
                call SaveInteger(hash_hslk, 119, 1000000, vi)
                
                set vi='A03K'
                
                call SaveInteger(hash_hslk, 120, 1000000, vi)
                
                set vi='A03L'
                
                call SaveInteger(hash_hslk, 121, 1000000, vi)
                
                set vi='A03M'
                
                call SaveInteger(hash_hslk, 122, 1000000, vi)
                
                set vi='I00C'
                
                call SaveInteger(hash_hslk, 124, 1000000, vi)
                
                set vi='A03N'
                
                call SaveInteger(hash_hslk, 123, 1000000, vi)
                
                set vi='I00D'
                
                call SaveInteger(hash_hslk, 125, 1000000, vi)
                
                set vi='A03O'
                
                call SaveInteger(hash_hslk, 126, 1000000, vi)
                
                set vi='A03P'
                
                call SaveInteger(hash_hslk, 127, 1000000, vi)
                
                set vi='A03Q'
                
                call SaveInteger(hash_hslk, 128, 1000000, vi)
                
                set vi='A03R'
                
                call SaveInteger(hash_hslk, 129, 1000000, vi)
                
                set vi='A03S'
                
                call SaveInteger(hash_hslk, 130, 1000000, vi)
                
                set vi='A03T'
                
                call SaveInteger(hash_hslk, 131, 1000000, vi)
                
                set vi='A03U'
                
                call SaveInteger(hash_hslk, 132, 1000000, vi)
                
                set vi='A03V'
                
                call SaveInteger(hash_hslk, 133, 1000000, vi)
                
                set vi='A03W'
                
                call SaveInteger(hash_hslk, 114, 10000000, vi)
                
                set vi='A03X'
                
                call SaveInteger(hash_hslk, 115, 10000000, vi)
                
                set vi='A03Y'
                
                call SaveInteger(hash_hslk, 116, 10000000, vi)
                
                set vi='A03Z'
                
                call SaveInteger(hash_hslk, 117, 10000000, vi)
                
                set vi='A040'
                
                call SaveInteger(hash_hslk, 118, 10000000, vi)
                
                set vi='A041'
                
                call SaveInteger(hash_hslk, 119, 10000000, vi)
                
                set vi='A042'
                
                call SaveInteger(hash_hslk, 120, 10000000, vi)
                
                set vi='A043'
                
                call SaveInteger(hash_hslk, 121, 10000000, vi)
                
                set vi='A044'
                
                call SaveInteger(hash_hslk, 122, 10000000, vi)
                
                set vi='I00E'
                
                call SaveInteger(hash_hslk, 124, 10000000, vi)
                
                set vi='A045'
                
                call SaveInteger(hash_hslk, 123, 10000000, vi)
                
                set vi='I00F'
                
                call SaveInteger(hash_hslk, 125, 10000000, vi)
                
                set vi='A046'
                
                call SaveInteger(hash_hslk, 126, 10000000, vi)
                
                set vi='A047'
                
                call SaveInteger(hash_hslk, 127, 10000000, vi)
                
                set vi='A048'
                
                call SaveInteger(hash_hslk, 128, 10000000, vi)
                
                set vi='A049'
                
                call SaveInteger(hash_hslk, 129, 10000000, vi)
                
                set vi='A04A'
                
                call SaveInteger(hash_hslk, 130, 10000000, vi)
                
                set vi='A04B'
                
                call SaveInteger(hash_hslk, 131, 10000000, vi)
                
                set vi='A04C'
                
                call SaveInteger(hash_hslk, 132, 10000000, vi)
                
                set vi='A04D'
                
                call SaveInteger(hash_hslk, 133, 10000000, vi)
                
                set vi='A04E'
                
                call SaveInteger(hash_hslk, 114, 100000000, vi)
                
                set vi='A04F'
                
                call SaveInteger(hash_hslk, 115, 100000000, vi)
                
                set vi='A04G'
                
                call SaveInteger(hash_hslk, 116, 100000000, vi)
                
                set vi='A04H'
                
                call SaveInteger(hash_hslk, 117, 100000000, vi)
                
                set vi='A04I'
                
                call SaveInteger(hash_hslk, 118, 100000000, vi)
                
                set vi='A04J'
                
                call SaveInteger(hash_hslk, 119, 100000000, vi)
                
                set vi='A04K'
                
                call SaveInteger(hash_hslk, 120, 100000000, vi)
                
                set vi='A04L'
                
                call SaveInteger(hash_hslk, 121, 100000000, vi)
                
                set vi='A04M'
                
                call SaveInteger(hash_hslk, 122, 100000000, vi)
                
                set vi='I00G'
                
                call SaveInteger(hash_hslk, 124, 100000000, vi)
                
                set vi='A04N'
                
                call SaveInteger(hash_hslk, 123, 100000000, vi)
                
                set vi='I00H'
                
                call SaveInteger(hash_hslk, 125, 100000000, vi)
                
                set vi='A04O'
                
                call SaveInteger(hash_hslk, 126, 100000000, vi)
                
                set vi='A04P'
                
                call SaveInteger(hash_hslk, 127, 100000000, vi)
                
                set vi='A04Q'
                
                call SaveInteger(hash_hslk, 128, 100000000, vi)
                
                set vi='A04R'
                
                call SaveInteger(hash_hslk, 129, 100000000, vi)
                
                set vi='A04S'
                
                call SaveInteger(hash_hslk, 130, 100000000, vi)
                
                set vi='A04T'
                
                call SaveInteger(hash_hslk, 131, 100000000, vi)
                
                set vi='A04U'
                
                call SaveInteger(hash_hslk, 132, 100000000, vi)
                
                set vi='A04V'
                
                call SaveInteger(hash_hslk, 133, 100000000, vi)
                
                set vi='A04W'
                
                call SaveInteger(hash_hslk, 99, 134, vi)
                
                set vi='A04X'
                
                call SaveInteger(hash_hslk, 99, 135, vi)
                
                set vi='A04Y'
                
                call SaveInteger(hash_hslk, 136, 1, vi)
                
                set vi='A04Z'
                
                call SaveInteger(hash_hslk, 137, 1, vi)
                
                set vi='A050'
                
                call SaveInteger(hash_hslk, 136, 2, vi)
                
                set vi='A051'
                
                call SaveInteger(hash_hslk, 137, 2, vi)
                
                set vi='A052'
                
                call SaveInteger(hash_hslk, 136, 3, vi)
                
                set vi='A053'
                
                call SaveInteger(hash_hslk, 137, 3, vi)
                
                set vi='A054'
                
                call SaveInteger(hash_hslk, 136, 4, vi)
                
                set vi='A055'
                
                call SaveInteger(hash_hslk, 137, 4, vi)
                
                set vi='A056'
                
                call SaveInteger(hash_hslk, 136, 5, vi)
                
                set vi='A057'
                
                call SaveInteger(hash_hslk, 137, 5, vi)
                
                set vi='A058'
                
                call SaveInteger(hash_hslk, 136, 10, vi)
                
                set vi='A059'
                
                call SaveInteger(hash_hslk, 137, 10, vi)
                
                set vi='A05A'
                
                call SaveInteger(hash_hslk, 136, 20, vi)
                
                set vi='A05B'
                
                call SaveInteger(hash_hslk, 137, 20, vi)
                
                set vi='A05C'
                
                call SaveInteger(hash_hslk, 136, 30, vi)
                
                set vi='A05D'
                
                call SaveInteger(hash_hslk, 137, 30, vi)
                
                set vi='A05E'
                
                call SaveInteger(hash_hslk, 136, 40, vi)
                
                set vi='A05F'
                
                call SaveInteger(hash_hslk, 137, 40, vi)
                
                set vi='A05G'
                
                call SaveInteger(hash_hslk, 136, 50, vi)
                
                set vi='A05H'
                
                call SaveInteger(hash_hslk, 137, 50, vi)
                
                set vi='A05I'
                
                call SaveInteger(hash_hslk, 136, 100, vi)
                
                set vi='A05J'
                
                call SaveInteger(hash_hslk, 137, 100, vi)
                
                set vi='A05K'
                
                call SaveInteger(hash_hslk, 136, 200, vi)
                
                set vi='A05L'
                
                call SaveInteger(hash_hslk, 137, 200, vi)
                
                set vi='A05M'
                
                call SaveInteger(hash_hslk, 136, 300, vi)
                
                set vi='A05N'
                
                call SaveInteger(hash_hslk, 137, 300, vi)
                
                set vi='A05O'
                
                call SaveInteger(hash_hslk, 136, 400, vi)
                
                set vi='A05P'
                
                call SaveInteger(hash_hslk, 137, 400, vi)
                
                set vi='A05Q'
                
                call SaveInteger(hash_hslk, 136, 500, vi)
                
                set vi='A05R'
                
                call SaveInteger(hash_hslk, 137, 500, vi)
                
                set vi='A05S'
                
                call SaveInteger(hash_hslk, 136, 1000, vi)
                
                set vi='A05T'
                
                call SaveInteger(hash_hslk, 137, 1000, vi)
                
                set vi='A05U'
                
                call SaveInteger(hash_hslk, 136, 2000, vi)
                
                set vi='A05V'
                
                call SaveInteger(hash_hslk, 137, 2000, vi)
                
                set vi='A05W'
                
                call SaveInteger(hash_hslk, 136, 3000, vi)
                
                set vi='A05X'
                
                call SaveInteger(hash_hslk, 137, 3000, vi)
                
                set vi='A05Y'
                
                call SaveInteger(hash_hslk, 136, 4000, vi)
                
                set vi='A05Z'
                
                call SaveInteger(hash_hslk, 137, 4000, vi)
                
                set vi='A060'
                
                call SaveInteger(hash_hslk, 136, 5000, vi)
                
                set vi='A061'
                
                call SaveInteger(hash_hslk, 137, 5000, vi)
                
                set vi='A062'
                
                call SaveInteger(hash_hslk, 136, 10000, vi)
                
                set vi='A063'
                
                call SaveInteger(hash_hslk, 137, 10000, vi)
                
                set vi='A064'
                
                call SaveInteger(hash_hslk, 136, 20000, vi)
                
                set vi='A065'
                
                call SaveInteger(hash_hslk, 137, 20000, vi)
                
                set vi='A066'
                
                call SaveInteger(hash_hslk, 136, 30000, vi)
                
                set vi='A067'
                
                call SaveInteger(hash_hslk, 137, 30000, vi)
                
                set vi='A068'
                
                call SaveInteger(hash_hslk, 136, 40000, vi)
                
                set vi='A069'
                
                call SaveInteger(hash_hslk, 137, 40000, vi)
                
                set vi='A06A'
                
                call SaveInteger(hash_hslk, 136, 50000, vi)
                
                set vi='A06B'
                
                call SaveInteger(hash_hslk, 137, 50000, vi)
                
                set vs="fire"
                
                call SaveStr(hash_hslk, 138, 1, vs)
                
                set vi='n002'
                
                call SaveInteger(hash_hslk, 139, 1, vi)
                
                set vs="fireblue"
                
                call SaveStr(hash_hslk, 138, 2, vs)
                
                set vi='n003'
                
                call SaveInteger(hash_hslk, 139, 2, vi)
                
                set vs="firetrap"
                
                call SaveStr(hash_hslk, 138, 3, vs)
                
                set vi='n004'
                
                call SaveInteger(hash_hslk, 139, 3, vi)
                
                set vs="firetrapblue"
                
                call SaveStr(hash_hslk, 138, 4, vs)
                
                set vi='n005'
                
                call SaveInteger(hash_hslk, 139, 4, vi)
                
                set vs="lightningbolt"
                
                call SaveStr(hash_hslk, 138, 5, vs)
                
                set vi='n006'
                
                call SaveInteger(hash_hslk, 139, 5, vi)
                
                set vs="snowman"
                
                call SaveStr(hash_hslk, 138, 6, vs)
                
                set vi='n007'
                
                call SaveInteger(hash_hslk, 139, 6, vi)
                
                set vs="bubble_geyser"
                
                call SaveStr(hash_hslk, 138, 7, vs)
                
                set vi='n008'
                
                call SaveInteger(hash_hslk, 139, 7, vi)
                
                set vs="bubble_geyser_steam"
                
                call SaveStr(hash_hslk, 138, 8, vs)
                
                set vi='n009'
                
                call SaveInteger(hash_hslk, 139, 8, vi)
                
                set vs="fish_school"
                
                call SaveStr(hash_hslk, 138, 9, vs)
                
                set vi='n00A'
                
                call SaveInteger(hash_hslk, 139, 9, vi)
                
                set vs="fish"
                
                call SaveStr(hash_hslk, 138, 10, vs)
                
                set vi='n00B'
                
                call SaveInteger(hash_hslk, 139, 10, vi)
                
                set vs="fish_green"
                
                call SaveStr(hash_hslk, 138, 11, vs)
                
                set vi='n00C'
                
                call SaveInteger(hash_hslk, 139, 11, vi)
                
                set vs="fire_hole"
                
                call SaveStr(hash_hslk, 138, 12, vs)
                
                set vi='n00D'
                
                call SaveInteger(hash_hslk, 139, 12, vi)
                
                set vs="bird"
                
                call SaveStr(hash_hslk, 138, 13, vs)
                
                set vi='n00E'
                
                call SaveInteger(hash_hslk, 139, 13, vi)
                
                set vs="bats"
                
                call SaveStr(hash_hslk, 138, 14, vs)
                
                set vi='n00F'
                
                call SaveInteger(hash_hslk, 139, 14, vi)
                
                set vs="flies"
                
                call SaveStr(hash_hslk, 138, 15, vs)
                
                set vi='n00G'
                
                call SaveInteger(hash_hslk, 139, 15, vi)
                
                set vs="burn_build"
                
                call SaveStr(hash_hslk, 138, 16, vs)
                
                set vi='n00H'
                
                call SaveInteger(hash_hslk, 139, 16, vi)
                
                set vs="ice0"
                
                call SaveStr(hash_hslk, 138, 17, vs)
                
                set vi='n00I'
                
                call SaveInteger(hash_hslk, 139, 17, vi)
                
                set vs="ice1"
                
                call SaveStr(hash_hslk, 138, 18, vs)
                
                set vi='n00J'
                
                call SaveInteger(hash_hslk, 139, 18, vi)
                
                set vs="ice2"
                
                call SaveStr(hash_hslk, 138, 19, vs)
                
                set vi='n00K'
                
                call SaveInteger(hash_hslk, 139, 19, vi)
                
                set vs="ice3"
                
                call SaveStr(hash_hslk, 138, 20, vs)
                
                set vi='n00L'
                
                call SaveInteger(hash_hslk, 139, 20, vi)
                
                set vs="seaweed0"
                
                call SaveStr(hash_hslk, 138, 21, vs)
                
                set vi='n00M'
                
                call SaveInteger(hash_hslk, 139, 21, vi)
                
                set vs="seaweed1"
                
                call SaveStr(hash_hslk, 138, 22, vs)
                
                set vi='n00N'
                
                call SaveInteger(hash_hslk, 139, 22, vi)
                
                set vs="seaweed2"
                
                call SaveStr(hash_hslk, 138, 23, vs)
                
                set vi='n00O'
                
                call SaveInteger(hash_hslk, 139, 23, vi)
                
                set vs="seaweed3"
                
                call SaveStr(hash_hslk, 138, 24, vs)
                
                set vi='n00P'
                
                call SaveInteger(hash_hslk, 139, 24, vi)
                
                set vs="seaweed4"
                
                call SaveStr(hash_hslk, 138, 25, vs)
                
                set vi='n00Q'
                
                call SaveInteger(hash_hslk, 139, 25, vi)
                
                set vs="break_column0"
                
                call SaveStr(hash_hslk, 138, 26, vs)
                
                set vi='n00R'
                
                call SaveInteger(hash_hslk, 139, 26, vi)
                
                set vs="break_column1"
                
                call SaveStr(hash_hslk, 138, 27, vs)
                
                set vi='n00S'
                
                call SaveInteger(hash_hslk, 139, 27, vi)
                
                set vs="break_column2"
                
                call SaveStr(hash_hslk, 138, 28, vs)
                
                set vi='n00T'
                
                call SaveInteger(hash_hslk, 139, 28, vi)
                
                set vs="break_column3"
                
                call SaveStr(hash_hslk, 138, 29, vs)
                
                set vi='n00U'
                
                call SaveInteger(hash_hslk, 139, 29, vi)
                
                set vs="burn_body0"
                
                call SaveStr(hash_hslk, 138, 30, vs)
                
                set vi='n00V'
                
                call SaveInteger(hash_hslk, 139, 30, vi)
                
                set vs="burn_body1"
                
                call SaveStr(hash_hslk, 138, 31, vs)
                
                set vi='n00W'
                
                call SaveInteger(hash_hslk, 139, 31, vi)
                
                set vs="burn_body2"
                
                call SaveStr(hash_hslk, 138, 32, vs)
                
                set vi='n00X'
                
                call SaveInteger(hash_hslk, 139, 32, vi)
                
                set vs="impaled_body0"
                
                call SaveStr(hash_hslk, 138, 33, vs)
                
                set vi='n00Y'
                
                call SaveInteger(hash_hslk, 139, 33, vi)
                
                set vs="impaled_body1"
                
                call SaveStr(hash_hslk, 138, 34, vs)
                
                set vi='n00Z'
                
                call SaveInteger(hash_hslk, 139, 34, vi)
                
                set vs="rune0"
                
                call SaveStr(hash_hslk, 138, 35, vs)
                
                set vi='n010'
                
                call SaveInteger(hash_hslk, 139, 35, vi)
                
                set vs="rune1"
                
                call SaveStr(hash_hslk, 138, 36, vs)
                
                set vi='n011'
                
                call SaveInteger(hash_hslk, 139, 36, vi)
                
                set vs="rune2"
                
                call SaveStr(hash_hslk, 138, 37, vs)
                
                set vi='n012'
                
                call SaveInteger(hash_hslk, 139, 37, vi)
                
                set vs="rune3"
                
                call SaveStr(hash_hslk, 138, 38, vs)
                
                set vi='n013'
                
                call SaveInteger(hash_hslk, 139, 38, vi)
                
                set vs="rune4"
                
                call SaveStr(hash_hslk, 138, 39, vs)
                
                set vi='n014'
                
                call SaveInteger(hash_hslk, 139, 39, vi)
                
                set vs="rune5"
                
                call SaveStr(hash_hslk, 138, 40, vs)
                
                set vi='n015'
                
                call SaveInteger(hash_hslk, 139, 40, vi)
                
                set vs="rune6"
                
                call SaveStr(hash_hslk, 138, 41, vs)
                
                set vi='n016'
                
                call SaveInteger(hash_hslk, 139, 41, vi)
                
                set vs="glowing_rune0"
                
                call SaveStr(hash_hslk, 138, 42, vs)
                
                set vi='n017'
                
                call SaveInteger(hash_hslk, 139, 42, vi)
                
                set vs="glowing_rune1"
                
                call SaveStr(hash_hslk, 138, 43, vs)
                
                set vi='n018'
                
                call SaveInteger(hash_hslk, 139, 43, vi)
                
                set vs="glowing_rune2"
                
                call SaveStr(hash_hslk, 138, 44, vs)
                
                set vi='n019'
                
                call SaveInteger(hash_hslk, 139, 44, vi)
                
                set vs="glowing_rune3"
                
                call SaveStr(hash_hslk, 138, 45, vs)
                
                set vi='n01A'
                
                call SaveInteger(hash_hslk, 139, 45, vi)
                
                set vs="glowing_rune4"
                
                call SaveStr(hash_hslk, 138, 46, vs)
                
                set vi='n01B'
                
                call SaveInteger(hash_hslk, 139, 46, vi)
                
                set vs="glowing_rune5"
                
                call SaveStr(hash_hslk, 138, 47, vs)
                
                set vi='n01C'
                
                call SaveInteger(hash_hslk, 139, 47, vi)
                
                set vs="glowing_rune6"
                
                call SaveStr(hash_hslk, 138, 48, vs)
                
                set vi='n01D'
                
                call SaveInteger(hash_hslk, 139, 48, vi)
                
                set vs="glowing_rune7"
                
                call SaveStr(hash_hslk, 138, 49, vs)
                
                set vi='n01E'
                
                call SaveInteger(hash_hslk, 139, 49, vi)
                
                set vs="glowing_rune8"
                
                call SaveStr(hash_hslk, 138, 50, vs)
                
                set vi='n01F'
                
                call SaveInteger(hash_hslk, 139, 50, vi)
                
                set vs="bone0"
                
                call SaveStr(hash_hslk, 138, 51, vs)
                
                set vi='n01G'
                
                call SaveInteger(hash_hslk, 139, 51, vi)
                
                set vs="bone1"
                
                call SaveStr(hash_hslk, 138, 52, vs)
                
                set vi='n01H'
                
                call SaveInteger(hash_hslk, 139, 52, vi)
                
                set vs="bone2"
                
                call SaveStr(hash_hslk, 138, 53, vs)
                
                set vi='n01I'
                
                call SaveInteger(hash_hslk, 139, 53, vi)
                
                set vs="bone3"
                
                call SaveStr(hash_hslk, 138, 54, vs)
                
                set vi='n01J'
                
                call SaveInteger(hash_hslk, 139, 54, vi)
                
                set vs="bone4"
                
                call SaveStr(hash_hslk, 138, 55, vs)
                
                set vi='n01K'
                
                call SaveInteger(hash_hslk, 139, 55, vi)
                
                set vs="bone5"
                
                call SaveStr(hash_hslk, 138, 56, vs)
                
                set vi='n01L'
                
                call SaveInteger(hash_hslk, 139, 56, vi)
                
                set vs="bone6"
                
                call SaveStr(hash_hslk, 138, 57, vs)
                
                set vi='n01M'
                
                call SaveInteger(hash_hslk, 139, 57, vi)
                
                set vs="bone7"
                
                call SaveStr(hash_hslk, 138, 58, vs)
                
                set vi='n01N'
                
                call SaveInteger(hash_hslk, 139, 58, vi)
                
                set vs="bone8"
                
                call SaveStr(hash_hslk, 138, 59, vs)
                
                set vi='n01O'
                
                call SaveInteger(hash_hslk, 139, 59, vi)
                
                set vs="bone9"
                
                call SaveStr(hash_hslk, 138, 60, vs)
                
                set vi='n01P'
                
                call SaveInteger(hash_hslk, 139, 60, vi)
                
                set vs="bone_ice0"
                
                call SaveStr(hash_hslk, 138, 61, vs)
                
                set vi='n01Q'
                
                call SaveInteger(hash_hslk, 139, 61, vi)
                
                set vs="bone_ice1"
                
                call SaveStr(hash_hslk, 138, 62, vs)
                
                set vi='n01R'
                
                call SaveInteger(hash_hslk, 139, 62, vi)
                
                set vs="bone_ice2"
                
                call SaveStr(hash_hslk, 138, 63, vs)
                
                set vi='n01S'
                
                call SaveInteger(hash_hslk, 139, 63, vi)
                
                set vs="bone_ice3"
                
                call SaveStr(hash_hslk, 138, 64, vs)
                
                set vi='n01T'
                
                call SaveInteger(hash_hslk, 139, 64, vi)
                
                set vs="bone_ice4"
                
                call SaveStr(hash_hslk, 138, 65, vs)
                
                set vi='n01U'
                
                call SaveInteger(hash_hslk, 139, 65, vi)
                
                set vs="bone_ice5"
                
                call SaveStr(hash_hslk, 138, 66, vs)
                
                set vi='n01V'
                
                call SaveInteger(hash_hslk, 139, 66, vi)
                
                set vs="bone_ice6"
                
                call SaveStr(hash_hslk, 138, 67, vs)
                
                set vi='n01W'
                
                call SaveInteger(hash_hslk, 139, 67, vi)
                
                set vs="bone_ice7"
                
                call SaveStr(hash_hslk, 138, 68, vs)
                
                set vi='n01X'
                
                call SaveInteger(hash_hslk, 139, 68, vi)
                
                set vs="bone_ice8"
                
                call SaveStr(hash_hslk, 138, 69, vs)
                
                set vi='n01Y'
                
                call SaveInteger(hash_hslk, 139, 69, vi)
                
                set vs="bone_ice9"
                
                call SaveStr(hash_hslk, 138, 70, vs)
                
                set vi='n01Z'
                
                call SaveInteger(hash_hslk, 139, 70, vi)
                
                set vs="stone0"
                
                call SaveStr(hash_hslk, 138, 71, vs)
                
                set vi='n020'
                
                call SaveInteger(hash_hslk, 139, 71, vi)
                
                set vs="stone1"
                
                call SaveStr(hash_hslk, 138, 72, vs)
                
                set vi='n021'
                
                call SaveInteger(hash_hslk, 139, 72, vi)
                
                set vs="stone2"
                
                call SaveStr(hash_hslk, 138, 73, vs)
                
                set vi='n022'
                
                call SaveInteger(hash_hslk, 139, 73, vi)
                
                set vs="stone3"
                
                call SaveStr(hash_hslk, 138, 74, vs)
                
                set vi='n023'
                
                call SaveInteger(hash_hslk, 139, 74, vi)
                
                set vs="stone4"
                
                call SaveStr(hash_hslk, 138, 75, vs)
                
                set vi='n024'
                
                call SaveInteger(hash_hslk, 139, 75, vi)
                
                set vs="stone5"
                
                call SaveStr(hash_hslk, 138, 76, vs)
                
                set vi='n025'
                
                call SaveInteger(hash_hslk, 139, 76, vi)
                
                set vs="stone6"
                
                call SaveStr(hash_hslk, 138, 77, vs)
                
                set vi='n026'
                
                call SaveInteger(hash_hslk, 139, 77, vi)
                
                set vs="stone7"
                
                call SaveStr(hash_hslk, 138, 78, vs)
                
                set vi='n027'
                
                call SaveInteger(hash_hslk, 139, 78, vi)
                
                set vs="stone8"
                
                call SaveStr(hash_hslk, 138, 79, vs)
                
                set vi='n028'
                
                call SaveInteger(hash_hslk, 139, 79, vi)
                
                set vs="stone9"
                
                call SaveStr(hash_hslk, 138, 80, vs)
                
                set vi='n029'
                
                call SaveInteger(hash_hslk, 139, 80, vi)
                
                set vs="stone_show0"
                
                call SaveStr(hash_hslk, 138, 81, vs)
                
                set vi='n02A'
                
                call SaveInteger(hash_hslk, 139, 81, vi)
                
                set vs="stone_show1"
                
                call SaveStr(hash_hslk, 138, 82, vs)
                
                set vi='n02B'
                
                call SaveInteger(hash_hslk, 139, 82, vi)
                
                set vs="stone_show2"
                
                call SaveStr(hash_hslk, 138, 83, vs)
                
                set vi='n02C'
                
                call SaveInteger(hash_hslk, 139, 83, vi)
                
                set vs="stone_show3"
                
                call SaveStr(hash_hslk, 138, 84, vs)
                
                set vi='n02D'
                
                call SaveInteger(hash_hslk, 139, 84, vi)
                
                set vs="stone_show4"
                
                call SaveStr(hash_hslk, 138, 85, vs)
                
                set vi='n02E'
                
                call SaveInteger(hash_hslk, 139, 85, vi)
                
                set vs="stone_show5"
                
                call SaveStr(hash_hslk, 138, 86, vs)
                
                set vi='n02F'
                
                call SaveInteger(hash_hslk, 139, 86, vi)
                
                set vs="stone_show6"
                
                call SaveStr(hash_hslk, 138, 87, vs)
                
                set vi='n02G'
                
                call SaveInteger(hash_hslk, 139, 87, vi)
                
                set vs="stone_show7"
                
                call SaveStr(hash_hslk, 138, 88, vs)
                
                set vi='n02H'
                
                call SaveInteger(hash_hslk, 139, 88, vi)
                
                set vs="stone_show8"
                
                call SaveStr(hash_hslk, 138, 89, vs)
                
                set vi='n02I'
                
                call SaveInteger(hash_hslk, 139, 89, vi)
                
                set vs="stone_show9"
                
                call SaveStr(hash_hslk, 138, 90, vs)
                
                set vi='n02J'
                
                call SaveInteger(hash_hslk, 139, 90, vi)
                
                set vs="mushroom0"
                
                call SaveStr(hash_hslk, 138, 91, vs)
                
                set vi='n02K'
                
                call SaveInteger(hash_hslk, 139, 91, vi)
                
                set vs="mushroom1"
                
                call SaveStr(hash_hslk, 138, 92, vs)
                
                set vi='n02L'
                
                call SaveInteger(hash_hslk, 139, 92, vi)
                
                set vs="mushroom2"
                
                call SaveStr(hash_hslk, 138, 93, vs)
                
                set vi='n02M'
                
                call SaveInteger(hash_hslk, 139, 93, vi)
                
                set vs="mushroom3"
                
                call SaveStr(hash_hslk, 138, 94, vs)
                
                set vi='n02N'
                
                call SaveInteger(hash_hslk, 139, 94, vi)
                
                set vs="mushroom4"
                
                call SaveStr(hash_hslk, 138, 95, vs)
                
                set vi='n02O'
                
                call SaveInteger(hash_hslk, 139, 95, vi)
                
                set vs="mushroom5"
                
                call SaveStr(hash_hslk, 138, 96, vs)
                
                set vi='n02P'
                
                call SaveInteger(hash_hslk, 139, 96, vi)
                
                set vs="mushroom6"
                
                call SaveStr(hash_hslk, 138, 97, vs)
                
                set vi='n02Q'
                
                call SaveInteger(hash_hslk, 139, 97, vi)
                
                set vs="mushroom7"
                
                call SaveStr(hash_hslk, 138, 98, vs)
                
                set vi='n02R'
                
                call SaveInteger(hash_hslk, 139, 98, vi)
                
                set vs="mushroom8"
                
                call SaveStr(hash_hslk, 138, 99, vs)
                
                set vi='n02S'
                
                call SaveInteger(hash_hslk, 139, 99, vi)
                
                set vs="mushroom9"
                
                call SaveStr(hash_hslk, 138, 100, vs)
                
                set vi='n02T'
                
                call SaveInteger(hash_hslk, 139, 100, vi)
                
                set vs="mushroom10"
                
                call SaveStr(hash_hslk, 138, 101, vs)
                
                set vi='n02U'
                
                call SaveInteger(hash_hslk, 139, 101, vi)
                
                set vs="mushroom11"
                
                call SaveStr(hash_hslk, 138, 102, vs)
                
                set vi='n02V'
                
                call SaveInteger(hash_hslk, 139, 102, vi)
                
                set vs="flower0"
                
                call SaveStr(hash_hslk, 138, 103, vs)
                
                set vi='n02W'
                
                call SaveInteger(hash_hslk, 139, 103, vi)
                
                set vs="flower1"
                
                call SaveStr(hash_hslk, 138, 104, vs)
                
                set vi='n02X'
                
                call SaveInteger(hash_hslk, 139, 104, vi)
                
                set vs="flower2"
                
                call SaveStr(hash_hslk, 138, 105, vs)
                
                set vi='n02Y'
                
                call SaveInteger(hash_hslk, 139, 105, vi)
                
                set vs="flower3"
                
                call SaveStr(hash_hslk, 138, 106, vs)
                
                set vi='n02Z'
                
                call SaveInteger(hash_hslk, 139, 106, vi)
                
                set vs="flower4"
                
                call SaveStr(hash_hslk, 138, 107, vs)
                
                set vi='n030'
                
                call SaveInteger(hash_hslk, 139, 107, vi)
                
                set vs="typha0"
                
                call SaveStr(hash_hslk, 138, 108, vs)
                
                set vi='n031'
                
                call SaveInteger(hash_hslk, 139, 108, vi)
                
                set vs="typha1"
                
                call SaveStr(hash_hslk, 138, 109, vs)
                
                set vi='n032'
                
                call SaveInteger(hash_hslk, 139, 109, vi)
                
                set vs="lilypad0"
                
                call SaveStr(hash_hslk, 138, 110, vs)
                
                set vi='n033'
                
                call SaveInteger(hash_hslk, 139, 110, vi)
                
                set vs="lilypad1"
                
                call SaveStr(hash_hslk, 138, 111, vs)
                
                set vi='n034'
                
                call SaveInteger(hash_hslk, 139, 111, vi)
                
                set vs="lilypad2"
                
                call SaveStr(hash_hslk, 138, 112, vs)
                
                set vi='n035'
                
                call SaveInteger(hash_hslk, 139, 112, vi)
                
                set vs="coral0"
                
                call SaveStr(hash_hslk, 138, 113, vs)
                
                set vi='n036'
                
                call SaveInteger(hash_hslk, 139, 113, vi)
                
                set vs="coral1"
                
                call SaveStr(hash_hslk, 138, 114, vs)
                
                set vi='n037'
                
                call SaveInteger(hash_hslk, 139, 114, vi)
                
                set vs="coral2"
                
                call SaveStr(hash_hslk, 138, 115, vs)
                
                set vi='n038'
                
                call SaveInteger(hash_hslk, 139, 115, vi)
                
                set vs="coral3"
                
                call SaveStr(hash_hslk, 138, 116, vs)
                
                set vi='n039'
                
                call SaveInteger(hash_hslk, 139, 116, vi)
                
                set vs="coral4"
                
                call SaveStr(hash_hslk, 138, 117, vs)
                
                set vi='n03A'
                
                call SaveInteger(hash_hslk, 139, 117, vi)
                
                set vs="coral5"
                
                call SaveStr(hash_hslk, 138, 118, vs)
                
                set vi='n03B'
                
                call SaveInteger(hash_hslk, 139, 118, vi)
                
                set vs="coral6"
                
                call SaveStr(hash_hslk, 138, 119, vs)
                
                set vi='n03C'
                
                call SaveInteger(hash_hslk, 139, 119, vi)
                
                set vs="coral7"
                
                call SaveStr(hash_hslk, 138, 120, vs)
                
                set vi='n03D'
                
                call SaveInteger(hash_hslk, 139, 120, vi)
                
                set vs="coral8"
                
                call SaveStr(hash_hslk, 138, 121, vs)
                
                set vi='n03E'
                
                call SaveInteger(hash_hslk, 139, 121, vi)
                
                set vs="coral9"
                
                call SaveStr(hash_hslk, 138, 122, vs)
                
                set vi='n03F'
                
                call SaveInteger(hash_hslk, 139, 122, vi)
                
                set vs="shells0"
                
                call SaveStr(hash_hslk, 138, 123, vs)
                
                set vi='n03G'
                
                call SaveInteger(hash_hslk, 139, 123, vi)
                
                set vs="shells1"
                
                call SaveStr(hash_hslk, 138, 124, vs)
                
                set vi='n03H'
                
                call SaveInteger(hash_hslk, 139, 124, vi)
                
                set vs="shells2"
                
                call SaveStr(hash_hslk, 138, 125, vs)
                
                set vi='n03I'
                
                call SaveInteger(hash_hslk, 139, 125, vi)
                
                set vs="shells3"
                
                call SaveStr(hash_hslk, 138, 126, vs)
                
                set vi='n03J'
                
                call SaveInteger(hash_hslk, 139, 126, vi)
                
                set vs="shells4"
                
                call SaveStr(hash_hslk, 138, 127, vs)
                
                set vi='n03K'
                
                call SaveInteger(hash_hslk, 139, 127, vi)
                
                set vs="shells5"
                
                call SaveStr(hash_hslk, 138, 128, vs)
                
                set vi='n03L'
                
                call SaveInteger(hash_hslk, 139, 128, vi)
                
                set vs="shells6"
                
                call SaveStr(hash_hslk, 138, 129, vs)
                
                set vi='n03M'
                
                call SaveInteger(hash_hslk, 139, 129, vi)
                
                set vs="shells7"
                
                call SaveStr(hash_hslk, 138, 130, vs)
                
                set vi='n03N'
                
                call SaveInteger(hash_hslk, 139, 130, vi)
                
                set vs="shells8"
                
                call SaveStr(hash_hslk, 138, 131, vs)
                
                set vi='n03O'
                
                call SaveInteger(hash_hslk, 139, 131, vi)
                
                set vs="shells9"
                
                call SaveStr(hash_hslk, 138, 132, vs)
                
                set vi='n03P'
                
                call SaveInteger(hash_hslk, 139, 132, vi)
                
                set vs="skull_pile0"
                
                call SaveStr(hash_hslk, 138, 133, vs)
                
                set vi='n03Q'
                
                call SaveInteger(hash_hslk, 139, 133, vi)
                
                set vs="skull_pile1"
                
                call SaveStr(hash_hslk, 138, 134, vs)
                
                set vi='n03R'
                
                call SaveInteger(hash_hslk, 139, 134, vi)
                
                set vs="skull_pile2"
                
                call SaveStr(hash_hslk, 138, 135, vs)
                
                set vi='n03S'
                
                call SaveInteger(hash_hslk, 139, 135, vi)
                
                set vs="skull_pile3"
                
                call SaveStr(hash_hslk, 138, 136, vs)
                
                set vi='n03T'
                
                call SaveInteger(hash_hslk, 139, 136, vi)
                
                set vs="river_rushes0"
                
                call SaveStr(hash_hslk, 138, 137, vs)
                
                set vi='n03U'
                
                call SaveInteger(hash_hslk, 139, 137, vi)
                
                set vs="river_rushes1"
                
                call SaveStr(hash_hslk, 138, 138, vs)
                
                set vi='n03V'
                
                call SaveInteger(hash_hslk, 139, 138, vi)
                
                set vs="river_rushes2"
                
                call SaveStr(hash_hslk, 138, 139, vs)
                
                set vi='n03W'
                
                call SaveInteger(hash_hslk, 139, 139, vi)
                
                set vs="river_rushes3"
                
                call SaveStr(hash_hslk, 138, 140, vs)
                
                set vi='n03X'
                
                call SaveInteger(hash_hslk, 139, 140, vi)
                
                set vi=140
                
                call SaveInteger(hash_hslk, 99, 139, vi)
                
                set vi='A06C'
                
                call SaveInteger(hash_hslk, 140, 0, vi)
                
    endfunction

//library A ends
//library DzAPI:




























 function GetPlayerServerValueSuccess takes player whichPlayer returns boolean
		if ( DzAPI_Map_GetServerValueErrorCode(whichPlayer) == 0 ) then
			return true
		else
			return false
		endif
	endfunction
  function DzAPI_Map_StoreInteger takes player whichPlayer,string key,integer value returns nothing
        set key="I" + key
        call DzAPI_Map_SaveServerValue(whichPlayer, key, I2S(value))
        set key=null
        set whichPlayer=null
    endfunction
    function DzAPI_Map_GetStoredInteger takes player whichPlayer,string key returns integer
        local integer value
        set key="I" + key
        set value=S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
        set key=null
        set whichPlayer=null
        return value
    endfunction
    function DzAPI_Map_StoreReal takes player whichPlayer,string key,real value returns nothing
        set key="R" + key
        call DzAPI_Map_SaveServerValue(whichPlayer, key, R2S(value))
        set key=null
        set whichPlayer=null
    endfunction
    function DzAPI_Map_GetStoredReal takes player whichPlayer,string key returns real
        local real value
        set key="R" + key
        set value=S2R(DzAPI_Map_GetServerValue(whichPlayer, key))
        set key=null
        set whichPlayer=null
        return value
    endfunction
    function DzAPI_Map_StoreBoolean takes player whichPlayer,string key,boolean value returns nothing
        set key="B" + key
        if ( value ) then
            call DzAPI_Map_SaveServerValue(whichPlayer, key, "1")
        else
            call DzAPI_Map_SaveServerValue(whichPlayer, key, "0")
        endif
        set key=null
        set whichPlayer=null
    endfunction
    function DzAPI_Map_GetStoredBoolean takes player whichPlayer,string key returns boolean
        local boolean value
        set key="B" + key
        set key=DzAPI_Map_GetServerValue(whichPlayer, key)
        if ( key == "1" ) then
            set value=true
        else
            set value=false
        endif
        set key=null
        set whichPlayer=null
        return value
    endfunction
    function DzAPI_Map_StoreString takes player whichPlayer,string key,string value returns nothing
        set key="S" + key
        call DzAPI_Map_SaveServerValue(whichPlayer, key, value)
        set key=null
        set whichPlayer=null
    endfunction
    function DzAPI_Map_GetStoredString takes player whichPlayer,string key returns string
        return DzAPI_Map_GetServerValue(whichPlayer, "S" + key)
    endfunction
 function DzAPI_Map_GetStoredUnitType takes player whichPlayer,string key returns integer
        local integer value
        set key="I" + key
        set value=S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
        set key=null
        set whichPlayer=null
        return value
    endfunction
 function DzAPI_Map_GetStoredAbilityId takes player whichPlayer,string key returns integer
        local integer value
        set key="I" + key
        set value=S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
        set key=null
        set whichPlayer=null
        return value
    endfunction
    function DzAPI_Map_FlushStoredMission takes player whichPlayer,string key returns nothing
        call DzAPI_Map_SaveServerValue(whichPlayer, key, null)
        set key=null
        set whichPlayer=null
    endfunction
    function DzAPI_Map_Ladder_SubmitIntegerData takes player whichPlayer,string key,integer value returns nothing
        call DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
    endfunction
    function DzAPI_Map_Stat_SubmitUnitIdData takes player whichPlayer,string key,integer value returns nothing
        if ( value == 0 ) then
            //call DzAPI_Map_Ladder_SetStat(whichPlayer,key,"0")
        else
            call DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
        endif
    endfunction
    function DzAPI_Map_Stat_SubmitUnitData takes player whichPlayer,string key,unit value returns nothing
        call DzAPI_Map_Stat_SubmitUnitIdData(whichPlayer , key , GetUnitTypeId(value))
    endfunction
    function DzAPI_Map_Ladder_SubmitAblityIdData takes player whichPlayer,string key,integer value returns nothing
        if ( value == 0 ) then
            //call DzAPI_Map_Ladder_SetStat(whichPlayer,key,"0")
        else
            call DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
        endif
    endfunction
    function DzAPI_Map_Ladder_SubmitItemIdData takes player whichPlayer,string key,integer value returns nothing
        local string S
        if ( value == 0 ) then
            set S="0"
        else
            set S=I2S(value)
            call DzAPI_Map_Ladder_SetStat(whichPlayer, key, S)
        endif
        //call DzAPI_Map_Ladder_SetStat(whichPlayer,key,S)
        set S=null
        set whichPlayer=null
    endfunction
    function DzAPI_Map_Ladder_SubmitItemData takes player whichPlayer,string key,item value returns nothing
        call DzAPI_Map_Ladder_SubmitItemIdData(whichPlayer , key , GetItemTypeId(value))
    endfunction
    function DzAPI_Map_Ladder_SubmitBooleanData takes player whichPlayer,string key,boolean value returns nothing
        if ( value ) then
            call DzAPI_Map_Ladder_SetStat(whichPlayer, key, "1")
        else
            call DzAPI_Map_Ladder_SetStat(whichPlayer, key, "0")
        endif
    endfunction
    function DzAPI_Map_Ladder_SubmitTitle takes player whichPlayer,string value returns nothing
        call DzAPI_Map_Ladder_SetStat(whichPlayer, value, "1")
    endfunction
 function DzAPI_Map_Ladder_SubmitPlayerRank takes player whichPlayer,integer value returns nothing
        call DzAPI_Map_Ladder_SetPlayerStat(whichPlayer, "RankIndex", I2S(value))
    endfunction
 function DzAPI_Map_Ladder_SubmitPlayerExtraExp takes player whichPlayer,integer value returns nothing
        call DzAPI_Map_Ladder_SetStat(whichPlayer, "ExtraExp", I2S(value))
	endfunction

//library DzAPI ends
//library myMap:
    function myMap__Init takes nothing returns nothing
        // include以地图w3x文件相对
        
    call SaveInteger(hash_hslk_helper, 1, 0, 14)
    
    call SaveStr(hash_hslk_helper, 1, 1, "{\"_id\":\"H000\", \"_type\":\"hero\", \"_class\":\"unit\", \"msg\":\"自定义数据\", \"_name\":\"剑士\"}")
    
    call SaveStr(hash_hslk_helper, 1, 2, "{\"_name\":\"骑士\", \"_id\":\"H001\", \"_type\":\"hero\", \"_class\":\"unit\"}")
    
    call SaveStr(hash_hslk_helper, 1, 3, "{\"_id\":\"A06D\", \"_name\":\"信使-闪烁\", \"_type\":\"courier\", \"_class\":\"ability\"}")
    
    call SaveStr(hash_hslk_helper, 1, 4, "{\"_id\":\"A06E\", \"_name\":\"信使-拾取\", \"_type\":\"courier\", \"_class\":\"ability\"}")
    
    call SaveStr(hash_hslk_helper, 1, 5, "{\"_id\":\"A06F\", \"_name\":\"信使-拆分物品\", \"_type\":\"courier\", \"_class\":\"ability\"}")
    
    call SaveStr(hash_hslk_helper, 1, 6, "{\"_id\":\"A06G\", \"_name\":\"信使-传递\", \"_type\":\"courier\", \"_class\":\"ability\"}")
    
    call SaveStr(hash_hslk_helper, 1, 7, "{\"_id\":\"o004\", \"_type\":\"courier\", \"_class\":\"unit\", \"_name\":\"冷静的绵羊\", \"_auto_skill\":true}")
    
    call SaveStr(hash_hslk_helper, 1, 8, "{\"_fragment\":[[\"铁剑\", 3], [\"铁盾\", 3]], \"_profit\":[\"双铁剑\", 1], \"_class\":\"synthesis\"}")
    
    call SaveStr(hash_hslk_helper, 1, 9, "{\"_name\":\"　铁剑　\", \"_overlie\":1, \"_class\":\"item\", \"_ring\":{\"effect\":\"Abilities\\\\Spells\\\\Orc\\\\CommandAura\\\\CommandAura.mdl\", \"attach\":\"origin\", \"attr\":{\"life\":\"+50\", \"attack_range\":\"+200\"}, \"effectTarget\":\"Abilities\\\\Spells\\\\NightElf\\\\BattleRoar\\\\RoarTarget.mdl\", \"target\":[\"air\", \"ground\", \"friend\", \"self\", \"vuln\", \"invu\"], \"radius\":600, \"attachTarget\":\"overhead\"}, \"_shadow_id\":\"I00I\", \"_id\":\"I00L\", \"_type\":\"shadow\", \"_weight\":2.3, \"_attr\":{\"xtras\":[{\"percent\":[300, 2000], \"val\":\"triggerUnit.attack\", \"action\":\"targetUnit.spec.knocking\", \"odds\":10, \"on\":\"attack\"}], \"attack\":\"+10\"}}")
    
    call SaveStr(hash_hslk_helper, 1, 10, "{\"_name\":\"铁剑\", \"_overlie\":2, \"_class\":\"item\", \"_ring\":{\"effect\":\"Abilities\\\\Spells\\\\Orc\\\\CommandAura\\\\CommandAura.mdl\", \"attach\":\"origin\", \"attr\":{\"life\":\"+50\", \"attack_range\":\"+200\"}, \"effectTarget\":\"Abilities\\\\Spells\\\\NightElf\\\\BattleRoar\\\\RoarTarget.mdl\", \"target\":[\"air\", \"ground\", \"friend\", \"self\", \"vuln\", \"invu\"], \"radius\":600, \"attachTarget\":\"overhead\"}, \"_type\":\"normal\", \"_id\":\"I00I\", \"_shadow_id\":\"I00L\", \"_weight\":2.3, \"_attr\":{\"xtras\":[{\"percent\":[300, 2000], \"val\":\"triggerUnit.attack\", \"action\":\"targetUnit.spec.knocking\", \"odds\":10, \"on\":\"attack\"}], \"attack\":\"+10\"}}")
    
    call SaveStr(hash_hslk_helper, 1, 11, "{\"_name\":\"　铁盾　\", \"_shadow_id\":\"I00J\", \"_overlie\":1, \"_class\":\"item\", \"_id\":\"I00M\", \"_type\":\"shadow\", \"_weight\":3.1, \"_attr\":{\"defend\":\"+1\", \"str_green\":\"+10\", \"int_green\":\"+10\", \"agi\":\"+10\", \"e_physical_append\":\"-1\"}}")
    
    call SaveStr(hash_hslk_helper, 1, 12, "{\"_id\":\"I00J\", \"_name\":\"铁盾\", \"_type\":\"normal\", \"_class\":\"item\", \"_shadow_id\":\"I00M\", \"_overlie\":1, \"_weight\":3.1, \"_attr\":{\"defend\":\"+1\", \"str_green\":\"+10\", \"int_green\":\"+10\", \"agi\":\"+10\", \"e_physical_append\":\"-1\"}}")
    
    call SaveStr(hash_hslk_helper, 1, 13, "{\"_name\":\"　双铁剑　\", \"_shadow_id\":\"I00K\", \"_overlie\":1, \"_class\":\"item\", \"_id\":\"I00N\", \"_type\":\"shadow\", \"_weight\":4, \"_attr\":{\"xtras\":[{\"effect\":\"Abilities\\\\Weapons\\\\WaterElementalMissile\\\\WaterElementalMissile.mdl\", \"speed\":5, \"damageType\":[\"water\"], \"deg\":45, \"odds\":50, \"radius\":50, \"qty\":3, \"height\":70, \"alias\":\"水蛇湍乱\", \"val\":\"damage\", \"action\":\"targetUnit.spec.paw\", \"tokenArrowHeight\":30, \"distance\":600, \"shake\":\"random\", \"on\":\"attack\"}], \"attack_space\":\"-0.1\", \"e_physical_attack\":\"+1\", \"defend_white\":\"+5\", \"attack_green\":\"+50\"}}")
    
    call SaveStr(hash_hslk_helper, 1, 14, "{\"_id\":\"I00K\", \"_name\":\"双铁剑\", \"_type\":\"normal\", \"_class\":\"item\", \"_shadow_id\":\"I00N\", \"_overlie\":3, \"_weight\":4, \"_attr\":{\"xtras\":[{\"effect\":\"Abilities\\\\Weapons\\\\WaterElementalMissile\\\\WaterElementalMissile.mdl\", \"speed\":5, \"damageType\":[\"water\"], \"deg\":45, \"odds\":50, \"radius\":50, \"qty\":3, \"height\":70, \"alias\":\"水蛇湍乱\", \"val\":\"damage\", \"action\":\"targetUnit.spec.paw\", \"tokenArrowHeight\":30, \"distance\":600, \"shake\":\"random\", \"on\":\"attack\"}], \"attack_space\":\"-0.1\", \"e_physical_attack\":\"+1\", \"defend_white\":\"+5\", \"attack_green\":\"+50\"}}")
    
        // 执行F4内定义的lua文件（就是最下面那个import的main.lua）
        call Cheat("exec-lua:\"main\"")
    endfunction

//library myMap ends
//library zzzDZapi:
    function zzzDZapi_callback takes nothing returns nothing
        local trigger tgr= GetTriggeringTrigger()
        local integer tid= GetHandleId(tgr)
        local string command= LoadStr(hash_hlua_dzapi, tid, HLDK_COMMAND)
        local player p= null
        local string ky= null
        local string data= null
        if ( command == "IsRedVIP" ) then
            set p=LoadPlayerHandle(hash_hlua_dzapi, tid, HLDK_PLAYER)
            if ( DzAPI_Map_IsRedVIP(p) ) then
                call SaveStr(hash_hlua_dzapi, tid, HLDK_RESULT, "1")
            else
                call SaveStr(hash_hlua_dzapi, tid, HLDK_RESULT, "0")
            endif
        elseif ( command == "IsBlueVIP" ) then
            set p=LoadPlayerHandle(hash_hlua_dzapi, tid, HLDK_PLAYER)
            if ( DzAPI_Map_IsBlueVIP(p) ) then
                call SaveStr(hash_hlua_dzapi, tid, HLDK_RESULT, "1")
            else
                call SaveStr(hash_hlua_dzapi, tid, HLDK_RESULT, "0")
            endif
        elseif ( command == "GetPlayerServerValueSuccess" ) then
            set p=LoadPlayerHandle(hash_hlua_dzapi, tid, HLDK_PLAYER)
            if ( DzAPI_Map_GetServerValueErrorCode(p) == 0 ) then
                call SaveStr(hash_hlua_dzapi, tid, HLDK_RESULT, "1")
            else
                call SaveStr(hash_hlua_dzapi, tid, HLDK_RESULT, "0")
            endif
        elseif ( command == "GetMapLevel" ) then
            set p=LoadPlayerHandle(hash_hlua_dzapi, tid, HLDK_PLAYER)
            call SaveStr(hash_hlua_dzapi, tid, HLDK_RESULT, I2S(DzAPI_Map_GetMapLevel(p)))
        elseif ( command == "HasMallItem" ) then
            set p=LoadPlayerHandle(hash_hlua_dzapi, tid, HLDK_PLAYER)
            set ky=LoadStr(hash_hlua_dzapi, tid, HLDK_KEY)
            if ( DzAPI_Map_HasMallItem(p, ky) ) then
                call SaveStr(hash_hlua_dzapi, tid, HLDK_RESULT, "1")
            else
                call SaveStr(hash_hlua_dzapi, tid, HLDK_RESULT, "0")
            endif
        elseif ( command == "Stat_SetStat" ) then
            set p=LoadPlayerHandle(hash_hlua_dzapi, tid, HLDK_PLAYER)
            set ky=LoadStr(hash_hlua_dzapi, tid, HLDK_KEY)
            set data=LoadStr(hash_hlua_dzapi, tid, HLDK_DATA)
            call DzAPI_Map_Stat_SetStat(p, ky, data)
        elseif ( command == "SaveServerValue" ) then
            set p=LoadPlayerHandle(hash_hlua_dzapi, tid, HLDK_PLAYER)
            set ky=LoadStr(hash_hlua_dzapi, tid, HLDK_KEY)
            set data=LoadStr(hash_hlua_dzapi, tid, HLDK_DATA)
            call DzAPI_Map_SaveServerValue(p, ky, data)
        elseif ( command == "GetServerValue" ) then
            set p=LoadPlayerHandle(hash_hlua_dzapi, tid, HLDK_PLAYER)
            set ky=LoadStr(hash_hlua_dzapi, tid, HLDK_KEY)
            call SaveStr(hash_hlua_dzapi, tid, HLDK_RESULT, DzAPI_Map_GetServerValue(p, ky))
        endif
        set tgr=null
        set command=null
        set p=null
        set ky=null
        set data=null
    endfunction
    function zzzDZapi__Init takes nothing returns nothing
        set hash_hlua_dzapi=InitHashtable()
        set Hlua_DzAPI_Tgr_1=CreateTrigger()
        set Hlua_DzAPI_Tgr_2=CreateTrigger()
        set Hlua_DzAPI_Tgr_3=CreateTrigger()
        set Hlua_DzAPI_Tgr_4=CreateTrigger()
        set Hlua_DzAPI_Tgr_5=CreateTrigger()
        set Hlua_DzAPI_Tgr_6=CreateTrigger()
        set Hlua_DzAPI_Tgr_7=CreateTrigger()
        set Hlua_DzAPI_Tgr_8=CreateTrigger()
        set Hlua_DzAPI_Tgr_9=CreateTrigger()
        call TriggerAddAction(Hlua_DzAPI_Tgr_1, function zzzDZapi_callback)
        call TriggerAddAction(Hlua_DzAPI_Tgr_2, function zzzDZapi_callback)
        call TriggerAddAction(Hlua_DzAPI_Tgr_3, function zzzDZapi_callback)
        call TriggerAddAction(Hlua_DzAPI_Tgr_4, function zzzDZapi_callback)
        call TriggerAddAction(Hlua_DzAPI_Tgr_5, function zzzDZapi_callback)
        call TriggerAddAction(Hlua_DzAPI_Tgr_6, function zzzDZapi_callback)
        call TriggerAddAction(Hlua_DzAPI_Tgr_7, function zzzDZapi_callback)
        call TriggerAddAction(Hlua_DzAPI_Tgr_8, function zzzDZapi_callback)
        call TriggerAddAction(Hlua_DzAPI_Tgr_9, function zzzDZapi_callback)
    endfunction

//library zzzDZapi ends
//===========================================================================
// 
// helloworld v1.0.0
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Mon Feb 01 23:22:10 2021
//   Map Author: hunzsig x h-lua
// 
//===========================================================================
//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************
function InitGlobals takes nothing returns nothing
endfunction
//***************************************************************************
//*
//*  Sounds
//*
//***************************************************************************
function InitSounds takes nothing returns nothing
    set gg_snd_bgm_seven="war3mapImported\\bgm_seven.mp3"
    set gg_snd_bgm_battle="war3mapImported\\bgm_battle.mp3"
    set gg_snd_bgm_moon="war3mapImported\\bgm_moon.mp3"
    set gg_snd_bgm_seven2="war3mapImported\\bgm_seven2.mp3"
    set gg_snd_bgm_sun="war3mapImported\\bgm_sun.mp3"
    set gg_snd_bgm_thunder="war3mapImported\\bgm_thunder.mp3"
    set gg_snd_bgm_wind="war3mapImported\\bgm_wind.mp3"
    set gg_snd_voice_kill=CreateSound("war3mapImported\\voice_kill.mp3", false, false, false, 10, 10, "")
    call SetSoundChannel(gg_snd_voice_kill, 0)
    call SetSoundVolume(gg_snd_voice_kill, 127)
    call SetSoundPitch(gg_snd_voice_kill, 1.0)
    set gg_snd_voice_monster=CreateSound("war3mapImported\\voice_monster.mp3", false, false, false, 10, 10, "")
    call SetSoundChannel(gg_snd_voice_monster, 0)
    call SetSoundVolume(gg_snd_voice_monster, 127)
    call SetSoundPitch(gg_snd_voice_monster, 1.0)
    set gg_snd_voice_reborn_do=CreateSound("war3mapImported\\voice_reborn_do.mp3", false, false, false, 10, 10, "")
    call SetSoundChannel(gg_snd_voice_reborn_do, 0)
    call SetSoundVolume(gg_snd_voice_reborn_do, 127)
    call SetSoundPitch(gg_snd_voice_reborn_do, 1.0)
    set gg_snd_voice_sea=CreateSound("war3mapImported\\voice_sea.mp3", false, false, false, 10, 10, "")
    call SetSoundChannel(gg_snd_voice_sea, 0)
    call SetSoundVolume(gg_snd_voice_sea, 127)
    call SetSoundPitch(gg_snd_voice_sea, 1.0)
    set gg_snd_voice_thunder=CreateSound("war3mapImported\\voice_thunder.mp3", false, false, false, 10, 10, "")
    call SetSoundChannel(gg_snd_voice_thunder, 0)
    call SetSoundVolume(gg_snd_voice_thunder, 127)
    call SetSoundPitch(gg_snd_voice_thunder, 1.0)
    set gg_snd_voice_wind=CreateSound("war3mapImported\\voice_wind.mp3", false, false, false, 10, 10, "")
    call SetSoundChannel(gg_snd_voice_wind, 0)
    call SetSoundVolume(gg_snd_voice_wind, 127)
    call SetSoundPitch(gg_snd_voice_wind, 1.0)
    set gg_snd_voice_drum=CreateSound("war3mapImported\\voice_drum.mp3", false, false, false, 10, 10, "")
    call SetSoundChannel(gg_snd_voice_drum, 0)
    call SetSoundVolume(gg_snd_voice_drum, 127)
    call SetSoundPitch(gg_snd_voice_drum, 1.0)
    set gg_snd_voice_eagle=CreateSound("war3mapImported\\voice_eagle.mp3", false, false, false, 10, 10, "")
    call SetSoundChannel(gg_snd_voice_eagle, 0)
    call SetSoundVolume(gg_snd_voice_eagle, 127)
    call SetSoundPitch(gg_snd_voice_eagle, 1.0)
    set gg_snd_voice_ghost=CreateSound("war3mapImported\\voice_ghost.mp3", false, false, false, 10, 10, "")
    call SetSoundChannel(gg_snd_voice_ghost, 0)
    call SetSoundVolume(gg_snd_voice_ghost, 127)
    call SetSoundPitch(gg_snd_voice_ghost, 1.0)
    set gg_snd_voice_heart_beat=CreateSound("war3mapImported\\voice_heart_beat.mp3", false, false, false, 10, 10, "")
    call SetSoundChannel(gg_snd_voice_heart_beat, 0)
    call SetSoundVolume(gg_snd_voice_heart_beat, 127)
    call SetSoundPitch(gg_snd_voice_heart_beat, 1.0)
    set gg_snd_voice_ghost_laugh=CreateSound("war3mapImported\\voice_ghost_laugh.mp3", false, false, false, 10, 10, "")
    call SetSoundChannel(gg_snd_voice_ghost_laugh, 0)
    call SetSoundVolume(gg_snd_voice_ghost_laugh, 127)
    call SetSoundPitch(gg_snd_voice_ghost_laugh, 1.0)
    set gg_snd_ReceiveGold=CreateSound("Abilities\\Spells\\Items\\ResourceItems\\ReceiveGold.wav", false, true, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(gg_snd_ReceiveGold, "ReceiveGold")
    call SetSoundDuration(gg_snd_ReceiveGold, 589)
    set gg_snd_voice_mission_start=CreateSound("war3mapImported\\voice_mission_start.mp3", false, false, false, 10, 10, "")
    call SetSoundChannel(gg_snd_voice_mission_start, 0)
    call SetSoundVolume(gg_snd_voice_mission_start, 127)
    call SetSoundPitch(gg_snd_voice_mission_start, 1.0)
    set gg_snd_voice_mission_end=CreateSound("war3mapImported\\voice_mission_end.mp3", false, false, false, 10, 10, "")
    call SetSoundChannel(gg_snd_voice_mission_end, 0)
    call SetSoundVolume(gg_snd_voice_mission_end, 127)
    call SetSoundPitch(gg_snd_voice_mission_end, 1.0)
    set gg_snd_BundleOfLumber=CreateSound("Abilities\\Spells\\Items\\ResourceItems\\BundleOfLumber.wav", false, true, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(gg_snd_BundleOfLumber, "ReceiveLumber")
    call SetSoundDuration(gg_snd_BundleOfLumber, 1347)
endfunction
//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************
//===========================================================================
// Trigger: dzpi
//
// /**
//  * 如果你想要用DZAPI，复制下面代码进触发器（注意是直接复制，不能include）
//  * If you want the DZAPI execute already, copy the following code into your trigger.
//  * Copy directly without #include.
//  */
// globals
//     // 充足的触发队列
//     integer Hlua_DzAPI_Tgr_count = 9
//     trigger Hlua_DzAPI_Tgr_1
//     trigger Hlua_DzAPI_Tgr_2
//     trigger Hlua_DzAPI_Tgr_3
//     trigger Hlua_DzAPI_Tgr_4
//     trigger Hlua_DzAPI_Tgr_5
//     trigger Hlua_DzAPI_Tgr_6
//     trigger Hlua_DzAPI_Tgr_7
//     trigger Hlua_DzAPI_Tgr_8
//     trigger Hlua_DzAPI_Tgr_9
//     boolean HLUA_DZAPI_FLAG = true
//     hashtable hash_hlua_dzapi
//     integer HLDK_COMMAND = 101
//     integer HLDK_PLAYER = 102
//     integer HLDK_KEY = 103
//     integer HLDK_DATA = 104
//     integer HLDK_RESULT = 120
// endglobals
// library zzzDZapi initializer Init
//     public function callback takes nothing returns nothing
//         local trigger tgr = GetTriggeringTrigger()
//         local integer tid = GetHandleId(tgr)
//         local string command = LoadStr(hash_hlua_dzapi, tid, HLDK_COMMAND)
//         local player p = null
//         local string ky = null
//         local string data = null
//         if (command == "IsRedVIP") then
//             set p = LoadPlayerHandle(hash_hlua_dzapi, tid, HLDK_PLAYER)
//             if(DzAPI_Map_IsRedVIP(p))then
//                 call SaveStr(hash_hlua_dzapi, tid, HLDK_RESULT, "1")
//             else
//                 call SaveStr(hash_hlua_dzapi, tid, HLDK_RESULT, "0")
//             endif
//         elseif (command == "IsBlueVIP") then
//             set p = LoadPlayerHandle(hash_hlua_dzapi, tid, HLDK_PLAYER)
//             if(DzAPI_Map_IsBlueVIP(p))then
//                 call SaveStr(hash_hlua_dzapi, tid, HLDK_RESULT, "1")
//             else
//                 call SaveStr(hash_hlua_dzapi, tid, HLDK_RESULT, "0")
//             endif
//         elseif (command == "GetPlayerServerValueSuccess") then
//             set p = LoadPlayerHandle(hash_hlua_dzapi, tid, HLDK_PLAYER)
//             if(DzAPI_Map_GetServerValueEr
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0

// Trigger: hlua
//
// 地图里自身的slk，如果你使用了slkHelper
// 必须使用slkHelper.enable()使其生效
//===========================================================================
//TESH.scrollpos=1
//TESH.alwaysfold=0




//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    //Function not found: call InitTrig_dzpi()
    //Function not found: call InitTrig_hlua()
endfunction
//***************************************************************************
//*
//*  Players
//*
//***************************************************************************
function InitCustomPlayerSlots takes nothing returns nothing
    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call ForcePlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), false)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)
    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call ForcePlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(1), false)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)
endfunction
function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_1935
    call SetPlayerTeam(Player(0), 0)
    // Force: TRIGSTR_1936
    call SetPlayerTeam(Player(1), 1)
endfunction
function InitAllyPriorities takes nothing returns nothing
    call SetStartLocPrioCount(0, 1)
    call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(1, 1)
    call SetStartLocPrio(1, 0, 0, MAP_LOC_PRIO_HIGH)
endfunction
//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************
//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 2048.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 2048.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 2048.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 2048.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 2048.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 2048.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 2048.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 2048.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("LordaeronSummerDay")
    call SetAmbientNightSound("LordaeronSummerNight")
    call SetMapMusic("Music", true, 0)
    call InitSounds()
    call InitBlizzard()

call ExecuteFunc("A__Init")
call ExecuteFunc("myMap__Init")
call ExecuteFunc("zzzDZapi__Init")

    call InitGlobals()
    call InitCustomTriggers()
endfunction
//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************
function config takes nothing returns nothing
    call SetMapName("helloworld v1.0.0")
    call SetMapDescription("")
    call SetPlayers(2)
    call SetTeams(2)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
    call DefineStartLocation(0, 0.0, 0.0)
    call DefineStartLocation(1, 0.0, 0.0)
    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
    call InitAllyPriorities()
endfunction




//Struct method generated initializers/callers:

