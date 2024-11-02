local exclude = {
	-- Fighting ground top right corner
	OnlineBannerUI = { { "c_main", "c_contents", "c_rank" } },

	-- Battle settings matchmaking/character tab (bottom right, on top of character render)
	MatchingSetting = { { "c_main", "c_RankIcon" } },
	-- Battle settings fighter profile (banner)
	CFNFighterProfileSimpleTop = { { "c_main", "p_FightersProfileBanner_", "p_SmallRankIcon_" } },
	-- Battle settings fighter profile league points
	CFNFighterProfileChildPlayTab1 = {
		{ "c_main", "c_user_point", "e_text_lp_num" },
		{ "c_main", "c_user_point", "e_text_leaguepoint" },
        { "c_main", "c_user_point", "c_master", "e_text_master" },
        { "c_main", "c_user_point", "c_master", "e_text_mr_num" },

	},
	-- Battle settings > character settings > title settings preview
	MatchingFighterSetting = { { "c_main", "p_Group_0_switch_show", "c_list", "p_MatchingTitleSetting_1_h", "p_Group_0_switch", "c_detail", "c_preview", "p_FightersProfileBanner_0", "p_SmallRankIcon_" } },

	CustomRoomRoom = {
		-- Custom room participant rows
		{ "c_main", "p_Group_base_h", "p_Group_communication_v", "p_ScrollList_member_v", "p_CustomRoomMemberBanner_", "p_LargeRankIcon_0" },
		{ "c_main", "p_Group_base_h", "p_Group_communication_v", "p_ScrollList_member_v", "item%d+", "p_LargeRankIcon_0" },
		-- Custom room singles slot
		{ "c_main", "p_Group_base_h", "p_Group_table_v", "p_SimpleList_SingleTable_v", "p_CustomRoomSimpleTable_%d", "p_CustomRoomMemberBanner_player%d", "p_LargeRankIcon_0" },
		-- Custom room teams slot
		{ "c_main", "p_Group_base_h", "p_Group_table_v", "p_SimpleList_TeamTable_v", "p_CustomRoomMultiTable_0", "p_CustomRoomMemberBanner_blue%d", "p_LargeRankIcon_0" },
		{ "c_main", "p_Group_base_h", "p_Group_table_v", "p_SimpleList_TeamTable_v", "p_CustomRoomMultiTable_0", "p_CustomRoomMemberBanner_red%d", "p_LargeRankIcon_0" },
	},
	-- Custom room slot popup
	CustomRoomTableDetail = {
		-- Singles
		{ "c_main", "p_Group_all_v", "p_CustomRoomSimpleTable_simpleTable_h", "p_CustomRoomMemberBanner_player%d", "p_LargeRankIcon_0" },
		-- Teams
		{ "c_main", "p_Group_all_v", "p_CustomRoomMultiTableDetail_teamTable_h", "p_Group_blue_v", "p_SimpleList_blue%d_h", "p_CustomRoomMemberBanner_blue%d", "p_LargeRankIcon_0" },
		{ "c_main", "p_Group_all_v", "p_CustomRoomMultiTableDetail_teamTable_h", "p_Group_red_v", "p_SimpleList_red%d_h", "p_CustomRoomMemberBanner_red%d", "p_LargeRankIcon_0" },
	},
	-- Custom room accept match
	CustomRoomReadyConfirm = {
		{ "c_main", "p_CustomRoomSimpleReadyTable_single", "p_CustomRoomMemberBanner_player%d", "p_LargeRankIcon_0" },
		{ "c_main", "c_TeamTable", "c_team_blue", "c_item_%d", "p_LargeRankIcon_0" },
		{ "c_main", "c_TeamTable", "c_team_red", "c_item_%d", "p_LargeRankIcon_0" },
	},
	-- CFN club members
	CFNFighterListChildCircleMemberTab = {
		{ "c_main", "p_FighterThumbnail_", "p_LargeRankIcon_0"},
		{ "c_main", "p_FighterThumbnail_", "c_league_point"},
	},
	-- Custom Room Invites
	CustomRoomInviteFriend = {
		{ "c_main", "p_FighterThumbnail_", "p_LargeRankIcon_0"},
		{ "c_main", "p_FighterThumbnail_", "c_league_point"},
	},
	CustomRoomInviteSearchResult = {
		{ "c_main", "p_FighterThumbnail_", "p_LargeRankIcon_0"},
		{ "c_main", "p_FighterThumbnail_", "c_league_point"},
	},

	-- Search Results
	CFNFighterListSearchResult = {
		{ "c_main", "p_FighterThumbnail_", "p_LargeRankIcon_0"},
		{ "c_main", "p_FighterThumbnail_", "c_league_point"},
	},

	-- CFN > profile > stats/history/clubs banner
	CFNFighterProfileTop = {
		{ "c_main", "p_FightersProfileBanner_", "p_SmallRankIcon_" },
	},
	-- CFN > profile > stats > League Points tab
	CFNFighterProfileChildPlayTab3 = {
		{ "c_main", "p_Group_0_switch", "p_ScrollList_chara_v", "p_CharacterUseBanner", "p_SmallRankIcon_" },
		{ "c_main", "p_Group_0_switch", "p_ScrollList_chara_v", "p_CharacterUseBanner", "e_text_lp_num" },
		{ "c_main", "p_Group_0_switch", "p_ScrollList_chara_v", "item%d", "p_SmallRankIcon_" },
		{ "c_main", "p_Group_0_switch", "p_ScrollList_chara_v", "item%d", "e_text_lp_num" },
	},
	-- CFN > profile > stats > Master Rate tab
	CFNFighterProfileChildPlayTab6 = {
		{ "c_main", "p_Group_0_switch", "p_ScrollList_chara_v", "p_CharacterUseBanner", "p_SmallRankIcon_" },
		{ "c_main", "p_Group_0_switch", "p_ScrollList_chara_v", "item%d", "p_SmallRankIcon_" },
        { "c_main", "p_Group_0_switch", "p_ScrollList_chara_v" },
	},
	-- CFN > profile > history rows
	CFNFighterProfileChildBattleLog = {
		{ "c_main", "p_ScrollList_0_v_noloop", "p_ReplayBannerProfile_", "p_ReplayBannerPlayerInfoShort_%dP", "p_SmallRankIcon_" },
		{ "c_main", "p_ScrollList_0_v_noloop", "p_ReplayBannerProfile_", "p_ReplayBannerPlayerInfoShort_%dP", "e_text_lp_num" },
		{ "c_main", "p_ScrollList_0_v_noloop", "item%d", "p_ReplayBannerPlayerInfoShort_%dP", "p_SmallRankIcon_" },
		{ "c_main", "p_ScrollList_0_v_noloop", "item%d", "p_ReplayBannerPlayerInfoShort_%dP", "e_text_lp_num" },
	},
	-- CFN > profile > history > match popup, CFN > replays > popup with replay details
	CFNReplayInfo = {
		{ "c_main", "c_inner", "p_BattleFighterInfo_%dp_", "p_LargeRankIcon_" },
		{ "c_main", "c_inner", "p_BattleFighterInfo_%dp_", "e_text_lp_num" },
	},
	-- CFN > replays > replay row
	CFNReplayChildList = {
		{ "c_main", "p_Group_root_switch", "p_ReplayList_", "p_ScrollList_multi_v", "p_ReplayBanner_", "p_ReplayBannerPlayerInfo_%dP", "e_text_lp_num" },
		{ "c_main", "p_Group_root_switch", "p_ReplayList_", "p_ScrollList_multi_v", "p_ReplayBanner_", "p_ReplayBannerPlayerInfo_%dP", "c_league" },
		{ "c_main", "p_Group_root_switch", "p_ReplayList_", "p_ScrollList_multi_v", "item%d", "p_ReplayBannerPlayerInfo_%dP", "e_text_lp_num" },
		{ "c_main", "p_Group_root_switch", "p_ReplayList_", "p_ScrollList_multi_v", "item%d", "p_ReplayBannerPlayerInfo_%dP", "c_league" },
	},
	-- CFN > ranking > league points
	CFNRankingLeaguePoint = {
		{ "c_main", "p_RankingThumbnailLeaguePoint_", "p_LargeRankIcon_0" },
		{ "c_main", "p_RankingThumbnailLeaguePoint_", "c_league_point" },
		{ "c_main", "p_RankingThumbnailLeaguePoint_", "e_text_rank" },
		{ "c_main", "p_Group_root_switch", "p_RankingListLeaguePoint", "p_ScrollList_ranking_v_noloop", "p_FighterBannerRankingLeaguePoint_", "p_FighterBannerRankingInfo_", "p_LargeRankIcon_" },
		{ "c_main", "p_Group_root_switch", "p_RankingListLeaguePoint", "p_ScrollList_ranking_v_noloop", "p_FighterBannerRankingLeaguePoint_", "p_FighterBannerRankingInfo_", "e_text_lp" },
		{ "c_main", "p_Group_root_switch", "p_RankingListLeaguePoint", "p_ScrollList_ranking_v_noloop", "p_FighterBannerRankingLeaguePoint_", "p_FighterBannerRankingInfo_", "c_rank" },
		{ "c_main", "p_Group_root_switch", "p_RankingListLeaguePoint", "p_ScrollList_ranking_v_noloop", "item%d", "p_FighterBannerRankingInfo_", "p_LargeRankIcon_" },
		{ "c_main", "p_Group_root_switch", "p_RankingListLeaguePoint", "p_ScrollList_ranking_v_noloop", "item%d", "p_FighterBannerRankingInfo_", "e_text_lp" },
		{ "c_main", "p_Group_root_switch", "p_RankingListLeaguePoint", "p_ScrollList_ranking_v_noloop", "item%d", "p_FighterBannerRankingInfo_", "c_rank" },
	},

    CFNRankingChildMasterRating = { 
        {"c_main", "p_Group_root_switch", "p_RankingListMasterRating_" },
    },

	-- CFN > clubs > clubs joined > management > member list
	CFNCircleMemberList = {
		{ "c_main", "p_FighterThumbnail_", "p_LargeRankIcon_0" },
		{ "c_main", "p_FighterThumbnail_", "c_league_point" },
	},

	-- In-match HUD
	BattleHud_AccountInfo = { { "c_main", "c_hud", "p_BattleHudAccountInfo_%d", "c_RankInfo" } },
	BattleHud_WinCount = { { "c_main" } }, -- Win streak.

	-- Versus screen
	VSInfoOffline = {
		{ "c_main", "p_VsInfoTop_player%d_v", "c_online", "c_RankIcon" },
		{ "c_main", "p_VsInfoTop_player%d_v", "c_online", "c_chance" }, -- Rank up opportunity
		{ "c_main", "p_VsInfoTop_player%d_v", "c_streak" },
	},

	-- Unverified. League promotion fullscreen animation.
	RankUp = { { "c_main" } },

	-- End of match
	RankGauge_1P = { { "c_main" } },
	RankGauge_2P = { { "c_main" } },
	ResultCounter = { { "c_main", "c_winning_streak" } },
};

-- local dumped = {};
-- local dump;
-- dump = function(control, prefix)
-- 	if not control then
-- 		return;
-- 	end
-- 	local prefix = prefix or "";
-- 	log.debug(prefix .. control:call("get_Name"));

-- 	local child = control:call("get_Child");
-- 	if child then
-- 		dump(child, prefix .. "  ");
-- 	end

-- 	local next = control:call("get_Next");
-- 	if next then
-- 		dump(next, prefix);
-- 	end
-- end

local hide_path;
hide_path = function(control, path, depth)
	local depth = depth or 1;
	if depth > #path then
		control:call("set_ForceInvisible", true);
		return;
	end

	local child = control:call("get_Child");
	while child do
		if string.match(child:call("get_Name"), path[depth]) then
			hide_path(child, path, depth + 1);
		end
		child = child:call("get_Next");
	end
end

re.on_pre_gui_draw_element(function(element, context)
	local game_object = element:call("get_GameObject");
	local view = element:call("get_View");
	local game_object_name = game_object:call("get_Name");

	-- if not dumped[game_object_name] then
	-- 	log.debug("Dumping " .. game_object_name);
	-- 	dump(view);
	-- 	dumped[game_object_name] = true;
	-- end

	local exclude_paths = exclude[game_object_name];
	if exclude_paths then
		for _, path in ipairs(exclude_paths) do
			hide_path(view, path);
		end
	end
	return true;
end)