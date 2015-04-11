if SERVER then return end
local bg = Material("FC/scoreboard/Flamingcrystal.png", "smooth alphatest")
local adminicon = Material("icon16/shield.png")
local usericon = Material("icon16/user.png")

local lyrics = {}
lyrics[1] = "Who are you to wave your finger?"
lyrics[2] = "You must have been outta your head"
lyrics[3] = "Eye hole deep in muddy waters"
lyrics[4] = "You practically raised the dead"
lyrics[5] = ""
lyrics[6] = "Rob the grave to snow the cradle"
lyrics[7] = "Then burn the evidence down"
lyrics[8] = "Soapbox house of cards and glass so"
lyrics[9] = "Don't go tossin' your stones around"
lyrics[10] = ""
lyrics[11] = "You must have been high"
lyrics[12] = "You must have been high"
lyrics[13] = "You must have been"
lyrics[14] = ""
lyrics[15] = "Foot in mouth and head up ass-hole"
lyrics[16] = "Whatcha talkin' 'bout?"
lyrics[17] = "Difficult to dance 'round this one"
lyrics[18] = "til you pull it out, boy"
lyrics[19] = ""
lyrics[20] = "You must have been high"
lyrics[21] = "You must have been high"
lyrics[22] = ""
lyrics[23] = "Steal, borrow, refer, save your shady inference"
lyrics[24] = "Kangaroo done hung the juror with the innocent"
lyrics[25] = ""
lyrics[26] = "Now you're weeping shades of cozened indigo"
lyrics[27] = "Got lemon juice up in your eye"
lyrics[28] = "When you pissed all over my black kettle"
lyrics[29] = ""
lyrics[30] = "You must have been high"
lyrics[31] = "You must have been high"
lyrics[32] = ""
lyrics[33] = "Who are you to wave your finger?"
lyrics[34] = "So full of it"
lyrics[35] = "Eye balls deep in muddy waters"
lyrics[36] = "Fuckin' hypocrite"
lyrics[37] = ""
lyrics[38] = "Liar, lawyer; mirror show me, what's the difference?"
lyrics[39] = "Kangaroo done hung the guilty with the innocent"
lyrics[40] = ""
lyrics[41] = "Now you're weeping shades of cozened indigo"
lyrics[42] = "Got lemon juice up in your eye, eye"
lyrics[43] = "When you pissed all over my black kettle"
lyrics[44] = "You must've been..."
lyrics[45] = ""
lyrics[46] = "So who are you to wave your finger?"
lyrics[47] = "Who are you to wave your fatty fingers at me?"
lyrics[48] = "You must have been out your mind" 
lyrics[49] = ""
lyrics[50] = "Weepin' shades of indigo"
lyrics[51] = "Trapped without a reason"
lyrics[52] = "Weepin' shades of indigo"
lyrics[53] = "Liar, lawyer; mirror for ya', what's the difference?"
lyrics[54] = "Kangaroo be stoned. He's guilty as the government"
lyrics[55] = ""
lyrics[56] = "Now you're weeping shades of cozened indigo"
lyrics[57] = "Got lemon juice up in your eye, eye"
lyrics[58] = "When you pissed all over my black kettle"
lyrics[59] = ""
lyrics[60] = "You must've been"
lyrics[61] = "High"
lyrics[62] = "High"
lyrics[63] = "High"
lyrics[64] = "High"
lyrics[65] = ""
lyrics[66] = "Eyeballs deep in muddy waters"
lyrics[67] = "Your balls deep in muddy waters"
lyrics[68] = "Ganja Police"
lyrics[69] = "You must have been out your mind"
lyrics[70] = ""
lyrics[71] = "Tool - The pot"
lyrics[72] = "I LOVE SANNE"

local dildo = {}
dildo[1] = "Free Hugs"
dildo[2] = "I want a chocolate cookie"
dildo[3] = "Dildo's"
dildo[4] = "I wanna rape u"
dildo[5] = "Spiked Dildo"
dildo[6] = "Rainbow Dildo"
dildo[7] = "Glow in the dark Dildo"
dildo[8] = "Pink Dildo"
dildo[9] = "Wanna have sex?"
dildo[10] = "Blue Dildo"
dildo[11] = "Diamond Dildo"

local line = 1
local line2 = 1
local x = 100

scoreboard = {}
function scoreboard.CreateScoreboard()
	scoreboard.Menu = vgui.Create("DFrame")
	scoreboard.Menu:SetSize(800, 200)
	scoreboard.Menu:Center()
	scoreboard.Menu:SetTitle("")
	scoreboard.Menu:ShowCloseButton(false)
	scoreboard.Menu:MakePopup()

	scoreboard.Menu.Paint = function(self)
		draw.RoundedBox(0, 0, 0, self:GetWide(), self:GetTall(), Color(30, 30, 30, 255))

		surface.SetDrawColor(Color(255, 255, 255, 255))
		surface.SetMaterial(bg)
		surface.DrawTexturedRect(2, 2, self:GetWide() - 4, 96)
		--draw.RoundedBox(0, 2, 2, self:GetWide() - 4, 96, Color(73, 73, 73, 155))

		draw.RoundedBox(0, 2, 102, self:GetWide() - 4, self:GetTall() - 104, Color(83, 83, 83, 55))

		draw.SimpleText("Name", "HudHintTextSmall", 40, 85, color_white, TEXT_ALIGN_LEFT)
		draw.SimpleText("Level", "HudHintTextSmall", 440, 85, color_white, TEXT_ALIGN_CENTER)
		if (scoreboard.Menu:GetTall() >= 600) then
			draw.SimpleText("Rank", "HudHintTextSmall", self:GetWide() - 55 - 16, 85, color_white, TEXT_ALIGN_RIGHT)
			draw.SimpleText("Ping", "HudHintTextSmall", self:GetWide() - 25 - 16, 85, color_white, TEXT_ALIGN_RIGHT)
		else
			draw.SimpleText("Rank", "HudHintTextSmall", self:GetWide() - 55, 85, color_white, TEXT_ALIGN_RIGHT)
			draw.SimpleText("Ping", "HudHintTextSmall", self:GetWide() - 25, 85, color_white, TEXT_ALIGN_RIGHT)
		end
	end

	local panel = vgui.Create("DScrollPanel", scoreboard.Menu)
	panel:SetSize(scoreboard.Menu:GetWide() - 10, scoreboard.Menu:GetTall() - 110)
	panel:SetPos(4, 104)

	local players = {}
	local list = vgui.Create("DIconLayout")
	list:SetSize(panel:GetWide(), panel:GetTall())
	list:SetPos(0, 0)

	list:SetSpaceX(0)
	list:SetSpaceY(1)

	panel:Add(list)

	local tbl = {}

	function scoreboard.Menu:Update()
		list:Clear()
		tbl = {}

		local count = #player.GetAll()

		scoreboard.Menu:SetTall(109 + (count * 35))

		if (scoreboard.Menu:GetTall() >= 600) then
			scoreboard.Menu:SetTall(600)
		end

		panel:SetSize(scoreboard.Menu:GetWide() - 10, scoreboard.Menu:GetTall() - 110)
		list:SetSize(panel:GetWide(), panel:GetTall())

		scoreboard.Menu:Center()

		for k, v in pairs( player.GetAll() ) do
			if ( v:Team() == TEAM_DEATH ) and (v:Alive()) then
				table.insert( tbl, v )
			end
		end
			
		for k, v in pairs( player.GetAll() ) do
			if ( v:Team() == TEAM_RUNNER ) and (v:Alive()) then
				table.insert( tbl, v )
			end
		end

		for k, v in pairs( player.GetAll() ) do
			if not (v:Alive()) then
				table.insert( tbl, v )
			end
		end
		
		for k, v in pairs( player.GetAll() ) do
			if ( v:Team() == TEAM_SPECTATOR ) and (v:Alive()) then
				table.insert( tbl, v )
			end
		end

		for i, v in pairs(tbl) do
			if (scoreboard.Menu:GetTall() >= 600) then
				list:SetWide(panel:GetWide() - 16)
			end

			if (v:IsValid()) then
				players[i] = vgui.Create("DPanel")
				players[i]:SetSize(list:GetWide(), 34.5)

				local playercolor =  GAMEMODE:GetScoreboardNameColor( v ) or hook.Call( "GetScoreboardNameColor", nil, v ) or Color( 255, 255, 255, 255 )
				local r, g, b = 0, 0, 0

				players[i].Paint = function(self)
					if not (v:IsValid()) then return end

					if (v:Team() == TEAM_DEATH) and (v:Alive()) then
						surface.SetDrawColor(Color(149, 14, 14, 155))
					elseif (v:Team() == TEAM_RUNNER) and (v:Alive()) then
						surface.SetDrawColor(Color( 50, 50, 160, 200 ))
					else
						surface.SetDrawColor(Color( 160, 160, 160, 233 ))
					end

					surface.DrawRect(0,0, self:GetWide(), self:GetTall())

					surface.SetDrawColor(Color(17, 17, 17, 255))
					surface.DrawOutlinedRect(0, 0, self:GetWide(), self:GetTall())

					draw.SimpleText(v:Name(), "Deathrun_Smooth", 40, 10, playercolor, TEXT_ALIGN_LEFT)
					
					if v:SteamID() == "STEAM_0:0:51692222" then
						draw.SimpleText(dildo[line2] or "ERROR IN DA CODE!", "Deathrun_Smooth", 440, 10, color_white, TEXT_ALIGN_CENTER)
					elseif v:SteamID() == "STEAM_0:0:16134549" then
						for k, v in pairs(string.Explode("", lyrics[line])) do
							x = x + .1

							if (x >= 550) then 
								x = 100
							end

							draw.SimpleText(v or "ERROR IN DA CODE!", "Deathrun_Smooth", x + (k*9), 10, playercolor, TEXT_ALIGN_LEFT)
						end
					else
						draw.SimpleText("Lvl "..(v:GetNWInt("level") or 0), "Deathrun_Smooth", 440, 10, playercolor, TEXT_ALIGN_CENTER)
					end

					surface.SetDrawColor(Color(255, 255, 255, 255))
					if (v:IsAdmin()) then
						surface.SetMaterial(adminicon)
					else
						surface.SetMaterial(usericon)
					end
					surface.DrawTexturedRect(self:GetWide() - 66, 8, 16, 16)

					draw.RoundedBox(0, self:GetWide() - 40, 0, 30, self:GetTall(), Color(0, 0, 0, 100))
					draw.SimpleText(v:Ping(), "Deathrun_Smooth", self:GetWide() - 25, 10, playercolor, TEXT_ALIGN_CENTER)
				end

				local avatar = vgui.Create("AvatarImage", players[i])
				avatar:SetPos(1, 1)
				avatar:SetPlayer(v, 32)
				avatar:SetSize(34, 34)
				list:Add(players[i])
			end
		end
	end

	scoreboard.Menu:Update()

	if not (timer.Exists("scoreboardupdate")) then
		timer.Create("Scoreboardupdate", 1, 0, function()
			if (scoreboard.Menu:IsVisible()) then
				scoreboard.Menu:Update()
			end
		end)
	end

	if not (timer.Exists("tooltimer")) then
		timer.Create("tooltimer", 1.5, 0, function()
			line = line + 1
			line2 = line2 + 1

			if (line > #lyrics) then
				line = 1
			end

			if (line2 > #dildo) then
				line2 = 1
			end
		end)
	end
end

function GM:ScoreboardHide()
	if not (scoreboard.Menu) then return end
	scoreboard.Menu:Hide()
end

function GM:ScoreboardShow()
	if (scoreboard.Menu) and (scoreboard.Menu:IsValid()) then
		scoreboard.Menu:Show()
	else
		scoreboard.CreateScoreboard()
	end
end

