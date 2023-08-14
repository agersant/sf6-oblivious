--[[

GAME LOOP
- [] In match rank/LP
- [] In match streak indicator
- [] Face-off screen rank/LP
- [] Face-off screen streak indicator
- [] Face-off screen rank up opportunity
- [] End of match screen rank / LP bar
- [] End of match screen streak indicator
- [] End of match star rank up noise and animation
- [] End of match star rank down?
- [] Full screen league promotion animation

]]

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
	},

	CustomRoomRoom = {
		-- Custom room participant rows
		{ "c_main", "p_Group_base_h", "p_Group_communication_v", "p_ScrollList_member_v", "p_CustomRoomMemberBanner_",
			"p_LargeRankIcon_0" },
		{ "c_main", "p_Group_base_h", "p_Group_communication_v", "p_ScrollList_member_v", "item%d+",
			"p_LargeRankIcon_0" },
		-- Custom room slot
		{ "c_main", "p_Group_base_h", "p_Group_table_v", "p_SimpleList_SingleTable_v", "p_CustomRoomSimpleTable_%d",
			"p_CustomRoomMemberBanner_player%d", "p_LargeRankIcon_0" },
	},
	-- Custom room slot popup
	CustomRoomTableDetail = {
		{ "c_main", "p_Group_all_v", "p_CustomRoomSimpleTable_simpleTable_h", "p_CustomRoomMemberBanner_player%d",
			"p_LargeRankIcon_0" }
	},

	-- CFN > profile > stats/history/clubs banner
	CFNFighterProfileTop = {
		{ "c_main", "p_FightersProfileBanner_", "p_SmallRankIcon_" },
	},
	-- CFN > profile > stats > League Points tab
	CFNFighterProfileChildPlayTab3 = {
		{ "c_main", "p_Group_0_switch", "p_ScrollList_chara_v", "p_CharacterUseBanner", "p_SmallRankIcon_" },
		{ "c_main", "p_Group_0_switch", "p_ScrollList_chara_v", "p_CharacterUseBanner", "e_text_lp_num" },
		{ "c_main", "p_Group_0_switch", "p_ScrollList_chara_v", "item%d",               "p_SmallRankIcon_" },
		{ "c_main", "p_Group_0_switch", "p_ScrollList_chara_v", "item%d",               "e_text_lp_num" },
	},
	-- CFN > profile > history rows
	CFNFighterProfileChildBattleLog = {
		{ "c_main", "p_ScrollList_0_v_noloop", "p_ReplayBannerProfile_", "p_ReplayBannerPlayerInfoShort_%dP",
			"p_SmallRankIcon_" },
		{ "c_main", "p_ScrollList_0_v_noloop", "p_ReplayBannerProfile_", "p_ReplayBannerPlayerInfoShort_%dP",
			"e_text_lp_num" },
		{ "c_main", "p_ScrollList_0_v_noloop", "item%d", "p_ReplayBannerPlayerInfoShort_%dP",
			"p_SmallRankIcon_" },
		{ "c_main", "p_ScrollList_0_v_noloop", "item%d", "p_ReplayBannerPlayerInfoShort_%dP",
			"e_text_lp_num" },
	},
	-- CFN > profile > history > match popup, CFN > replays > popup with replay details
	CFNReplayInfo = {
		{ "c_main", "c_inner", "p_BattleFighterInfo_%dp_", "p_LargeRankIcon_" },
		{ "c_main", "c_inner", "p_BattleFighterInfo_%dp_", "e_text_lp_num" },
	},
	-- CFN > replays > replay row
	CFNReplayChildList = {
		{ "c_main", "p_Group_root_switch", "p_ReplayList_", "p_ScrollList_multi_v", "p_ReplayBanner_",
			"p_ReplayBannerPlayerInfo_%dP",
			"e_text_lp_num" },
		{ "c_main", "p_Group_root_switch", "p_ReplayList_", "p_ScrollList_multi_v", "p_ReplayBanner_",
			"p_ReplayBannerPlayerInfo_%dP",
			"c_league" },
		{ "c_main", "p_Group_root_switch", "p_ReplayList_", "p_ScrollList_multi_v", "item%d",
			"p_ReplayBannerPlayerInfo_%dP",
			"e_text_lp_num" },
		{ "c_main", "p_Group_root_switch", "p_ReplayList_", "p_ScrollList_multi_v", "item%d",
			"p_ReplayBannerPlayerInfo_%dP",
			"c_league" },
	},
	-- CFN > ranking > league points
	CFNRankingLeaguePoint = {
		{ "c_main", "p_RankingThumbnailLeaguePoint_", "p_LargeRankIcon_0" },
		{ "c_main", "p_RankingThumbnailLeaguePoint_", "c_league_point" },
		{ "c_main", "p_RankingThumbnailLeaguePoint_", "e_text_rank" },
		{ "c_main", "p_Group_root_switch", "p_RankingListLeaguePoint", "p_ScrollList_ranking_v_noloop",
			"p_FighterBannerRankingLeaguePoint_",
			"p_FighterBannerRankingInfo_",
			"p_LargeRankIcon_" },
		{ "c_main", "p_Group_root_switch", "p_RankingListLeaguePoint", "p_ScrollList_ranking_v_noloop",
			"p_FighterBannerRankingLeaguePoint_",
			"p_FighterBannerRankingInfo_",
			"e_text_lp" },
		{ "c_main", "p_Group_root_switch", "p_RankingListLeaguePoint", "p_ScrollList_ranking_v_noloop",
			"p_FighterBannerRankingLeaguePoint_",
			"p_FighterBannerRankingInfo_",
			"c_rank" },
		{ "c_main", "p_Group_root_switch", "p_RankingListLeaguePoint", "p_ScrollList_ranking_v_noloop",
			"item%d",
			"p_FighterBannerRankingInfo_",
			"p_LargeRankIcon_" },
		{ "c_main", "p_Group_root_switch", "p_RankingListLeaguePoint", "p_ScrollList_ranking_v_noloop",
			"item%d",
			"p_FighterBannerRankingInfo_",
			"e_text_lp" },
		{ "c_main", "p_Group_root_switch", "p_RankingListLeaguePoint", "p_ScrollList_ranking_v_noloop",
			"item%d",
			"p_FighterBannerRankingInfo_",
			"c_rank" },
	},
};

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

	local exclude_paths = exclude[game_object_name];
	if exclude_paths then
		for _, path in ipairs(exclude_paths) do
			hide_path(view, path);
		end
	end
	return true;
end)
