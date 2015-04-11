
local tags = 
{
--Group    --Tag     --Color
{"Server Admin", "[Admin] ", Color(255,255,0) },
{"superadmin", "[S. Admin] ", Color(192,64,0) },
{"Server Owner", "[Owner] ", Color(21,228,211) },
{"co-owner", "[Co-Owner] ", Color(0,128,0) },
{"Server Moderator", "[Mod] ", Color(0,255,0) },
{"trial moderator", "[Trial Mod] ", Color(255,255,0) },
{"donator", "[Donator] ", Color(0,255,255) },
{"user", "[User] ", Color(0,0,255) },
{"Server Developer", "[Developer] ", Color(70,130,180) },
{"Server Trusted", "[Trusted] ", Color(138,43,226) },
{"Server Donator", "[Donator] ", Color(255,20,147) },
{"Server God", "[The God] ", Color(0,0,0) }, 
{"Server Awesome", "[Awesome] ", Color(255,0,0) },              
}

function GM:OnPlayerChat( player, strText, bTeamOnly, bPlayerIsDead )
 
 	local tab = {}

	if ( IsValid( player ) ) then
	 	for k, v in pairs(tags) do
	 		if (player:IsUserGroup(v[1])) then
	 			table.insert(tab, v[3])
	 			table.insert(tab, v[2])
	 		end
	 	end

	 	table.insert( tab, player )
	else
		table.insert( tab, Color( 255, 255, 255 ) )
		-- derp, invalid
	 	table.insert( tab, "#ConsoleFTW" )
 	end

	table.insert(tab, Color(255, 255, 255))
	table.insert(tab, ": ")

	for k, v in pairs(tags) do
		if (player:IsValid())  then
			if (player:IsUserGroup(v[1]))then
				if (v[1] == "user") or (v[1] == "Server Trusted") or (v[1] == "Server Donator") or (v[1] == "Server God") or (v[1] == "Server Awesome")   then
					table.insert( tab, Color( 255, 255, 255 ) )
					break
				else
					table.insert(tab, v[3])
					break
				end
			else
				table.insert( tab, Color( 255, 255, 255 ) )
			end
		else
			table.insert( tab, Color( 255, 255, 255 ) )
		end
	end

	table.insert( tab, strText )
 
 	chat.AddText( unpack( tab ) )

 	return true
end