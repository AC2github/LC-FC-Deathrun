
jukebox.LastPlayed = 0
jukebox.IsPlaying = false

-- Play a song
function jukebox.PlaySong(tbl)
	local song = tbl[1]
	
	if not (jukebox.IsValidSong(song)) then return end
	local songlink = jukebox.GetSongData(song).link
	jukebox.GetLink(songlink)
	
	if (CurTime() <= jukebox.LastPlayed) then
		print("[JUKEBOX]: Cannot play new song yet.")
		return
	end
	
	PrintMessage(HUD_PRINTTALK, "[Jukebox] Playing: "..song)

	timer.Simple(7, function()
		local link = jukebox.link
		
		umsg.Start("jukebox.song")
			umsg.String(link)
			umsg.String(song)
		umsg.End()
		
		jukebox.LastPlayed = CurTime() + (jukebox.GetTimeFromSong(song) + 5)
		jukebox.IsPlaying = true
		
		timer.Simple((jukebox.GetTimeFromSong(song) + 5), function()
			table.remove(jukebox.Queue, 1)
			jukebox.IsPlaying = false
			
			net.Start("jukebox.queue")
				net.WriteTable(jukebox.Queue)
			net.Broadcast()
	
			timer.Simple(1, function()
				if (#jukebox.Queue > 0) then
					jukebox.PlaySong(jukebox.Queue)
				end
			end)
		end)
	end)
end

-- Devs and owners
local tab = {"STEAM_0:0:0", "STEAM_0:0:16134549", "STEAM_0:0:54481289", "STEAM_0:0:51508537"}

concommand.Add("jukebox_add", function(ply, cmd, args)
	--if not (table.HasValue(tab, ply:SteamID())) then return end
	
	local song = table.concat(args, " ", 1)
	if not (jukebox.IsValidSong(song)) then
		ply:ChatPrint("Invalid song")
		return
	end
	
	if (table.HasValue(jukebox.Queue, song)) then
		ply:ChatPrint("This song is already in the queue.")
		return
	end
	
	if (#jukebox.Queue >= 30) then
		ply:ChatPrint("The queue is full, please try again later.")
		return
	end
	
	PrintMessage(HUD_PRINTTALK, ply:Name().." has added "..song.." to the queue.")
	ply:ChatPrint("Your song has been added to the queue.")
	
	table.insert(jukebox.Queue, song)
	
	net.Start("jukebox.queue")
		net.WriteTable(jukebox.Queue)
	net.Broadcast()
	
	if (#jukebox.Queue == 1) then
		if not (jukebox.IsPlaying) then
			jukebox.PlaySong(jukebox.Queue)
		end
	end
end)

