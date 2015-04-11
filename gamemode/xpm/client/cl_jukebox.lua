// TODO
// Clean up code

CreateClientConVar("jukebox_mute", 0, true, false)
CreateClientConVar("jukebox_volume", .5, true, false)

jukebox.IsPlaying = false
jukebox.CurrentSong = ""
jukebox.CurrentTime = 0

usermessage.Hook("jukebox.song", function(um)
	local url = um:ReadString()
	local song = um:ReadString()
	
	local song = sound.PlayURL(url, "mono", function(sound)
		if (sound) then
			sound:SetVolume(tonumber(GetConVarNumber("jukebox_volume")) or .5)
			
			cvars.AddChangeCallback("jukebox_volume", function(CVar, PreviousValue, NewValue)
				if (sound) then
					sound:SetVolume(NewValue)
				end
			end)
			
			cvars.AddChangeCallback("jukebox_mute", function(Cvar, PreviousValue, NewValue)
				if (sound) and (tonumber(NewValue) == 1) then
				
					jukebox.IsPlaying = false
					jukebox.CurrentSong = ""
					jukebox.CurrentTime = 0
					
					if (timer.Exists("jukebox.CurrentTime")) then
						timer.Destroy("jukebox.CurrentTime")
					end
					
					sound:Stop()
				end
			end)
			
			jukebox.IsPlaying = true
			jukebox.CurrentSong = song
			
			if (timer.Exists("jukebox.CurrentTime")) then
				timer.Destroy("jukebox.CurrentTime")
				jukebox.CurrentTime = 0
			end
			
			timer.Create("jukebox.CurrentTime", 1, 0, function()
				jukebox.CurrentTime = jukebox.CurrentTime + 1
			end)
			
			sound:Play()
			
			timer.Simple(jukebox.GetTimeFromSong(song), function()
				jukebox.IsPlaying = false
				jukebox.CurrentSong = ""
			end)
			
			if (tonumber(GetConVarNumber("jukebox_mute")) == 1) then
				jukebox.IsPlaying = false
				jukebox.CurrentSong = ""
				jukebox.CurrentTime = 0
				
				sound:Stop()
			end
		end
	end)
end)

usermessage.Hook("jukebox.mute", function()
	RunConsoleCommand("jukebox_mute", 1)
	RunConsoleCommand("jukebox_mute", 0)
end)

usermessage.Hook("jukebox.volume", function(um)
	RunConsoleCommand("jukebox_volume", um:ReadFloat())
end)