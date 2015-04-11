
-- Object
jukebox = {}
jukebox.Songs = {}
jukebox.Queue = {}

-- Add a new song into le table
function jukebox.AddSong(name, link, time, explicit)
	table.insert(jukebox.Songs, {name=name, link=link, time=time, explicit=explicit})
end

-- Add songs here
jukebox.AddSong("Doom - Theme song", "http://picosong.com/download/RnGJ/", "1:35", false)
jukebox.AddSong("heyaeyea", "http://picosong.com/download/qq8i/", "2:06", false)
jukebox.AddSong("Rucka rucka ali - Obama", "http://picosong.com/download/qqKy/", "4:37", true)
jukebox.AddSong("DJ Caffeine - Fuck on Cocaine", "http://picosong.com/download/qqQ8/", "3:24", false)
jukebox.AddSong("Tool - Hooker with a penis", "http://picosong.com/download/qCWQ/", "4:33", false) 
jukebox.AddSong("Ylvis - The Fox", "http://picosong.com/download/qev2/", "3:44", false)
jukebox.AddSong("Macklemore - Thrift Shop", "http://picosong.com/download/qCsY/", "3:52", false)
jukebox.AddSong("MACKLEMORE & RYAN LEWIS - CAN'T HOLD US", "http://picosong.com/download/qCsV/", "7:04", false)
jukebox.AddSong("The Prodigy - Omen", "http://picosong.com/download/qCsc/", "3:18", false)
jukebox.AddSong("Drake - Hold on, We're going home", "http://picosong.com/download/qCsQ/", "4:35", false)
jukebox.AddSong("Uppermost - Saving The World", "http://picosong.com/download/qCsz/", "4:15", false)
jukebox.AddSong("Naughty Boy - La la la", "http://picosong.com/download/qCwf/", "4:04", false)
jukebox.AddSong("Gangnam style", "http://picosong.com/download/qCsR/", "4:13", false)
jukebox.AddSong("Stromae - Papaoutai", "http://picosong.com/download/qCwe/", "3:52", false)
jukebox.AddSong("Katy Perry - Roar", "http://picosong.com/download/qCwq/", "4:29", false)
jukebox.AddSong("Cups (Pitch Perfect's When I'm Gone)", "http://picosong.com/download/qCwE/", "4:21", false)
jukebox.AddSong("Avicii - Wake Me Up", "http://picosong.com/download/qCw7/", "4:33", false)
jukebox.AddSong("Bruno Mars - The Lazy Song", "http://picosong.com/download/qC3y/", "3:28", false)
jukebox.AddSong("Jason Derulo - 'Talk Dirty' feat. 2Chainz", "http://picosong.com/download/qC3C/", "3:07", false)
jukebox.AddSong("Justin Bieber - Beauty And A Beat ft. Nicki Minaj", "http://picosong.com/download/qC34/", "4:52", false)
jukebox.AddSong("Miley Cyrus - Wrecking Ball", "http://picosong.com/download/qC3j/", "3:41", false)
jukebox.AddSong("P.O.D. - Boom", "http://picosong.com/download/qCGm/", "3:09", false)
jukebox.AddSong("AC DC - Back In Black", "http://picosong.com/download/qCGA/", "4:15", false)
jukebox.AddSong("Dancing In The Moonlight", "http://picosong.com/download/qPFy/", "2:16", false)
jukebox.AddSong("Imagine Dragons - Radioactive", "http://picosong.com/download/qPVM/", "5:00", false)
jukebox.AddSong("AC DC - Shoot To Thrill", "http://picosong.com/download/qPVp/", "4:57", false)
jukebox.AddSong("Matthew L. Fisher - Home Is Ahead", "http://picosong.com/download/qPXs/", "3:57", false)
jukebox.AddSong("Two steps from Hell - Heart of Courage", "http://picosong.com/download/qPXL/", "3:11", false)
jukebox.AddSong("Press me, I DARE YOU!", "http://picosong.com/download/qPXS/", "3:47", false)
jukebox.AddSong("Tool - Stinkfist", "http://picosong.com/download/qCWd/", "5:11", false)
jukebox.AddSong("Enya - May It Be", "http://picosong.com/download/qPud/", "3:34", false)
jukebox.AddSong("The Hobbit dwarf song Misty Mountain", "http://picosong.com/download/qPur/", "3:31", false)
jukebox.AddSong("The Weeknd - Wicked Games", "http://picosong.com/download/qPXW/", "5:31", false)
jukebox.AddSong("The Weeknd - High For This", "http://picosong.com/download/qPXa/", "4:15", false)
jukebox.AddSong("Paramore - Decode", "http://picosong.com/download/qPjX/", "4:25", false)
jukebox.AddSong("Taylor Swift - We Are Never Ever Getting Back Together", "http://picosong.com/download/qPjB/", "3:53", false)
jukebox.AddSong("Sander van Doorn - Joyenergizer", "http://picosong.com/download/qPjZ/", "5:15", false)
jukebox.AddSong("Save The World Tonight Acoustic Cover - Collin McLoughlin", "http://picosong.com/download/qPjx/", "3:14", false)
jukebox.AddSong("Imagine Dragons - Amsterdam", "http://picosong.com/download/qPji/", "4:02", false)
jukebox.AddSong("Imagine Dragons - It's Time", "http://picosong.com/download/qPgF/", "4:06", false)
jukebox.AddSong("Imagine Dragons Demons Lyrics", "http://picosong.com/download/qPgP/", "2:54", false)
jukebox.AddSong("MACKLEMORE & RYAN LEWIS - SAME LOVE feat. MARY LAMBERT", "http://picosong.com/download/qPgL/", "7:03", false)
jukebox.AddSong("Tiptoe - Imagine Dragons HD", "http://picosong.com/download/qPgg/", "3:14", false)
jukebox.AddSong("Imagine Dragons - Hear Me", "http://picosong.com/download/qPg8/", "3:55", false)
jukebox.AddSong("Chris Brown ft Justin Bieber", "http://picosong.com/download/qPgT/", "4:30", false)
jukebox.AddSong("Ian carey Feat. bobby anthony & snoop dog - Last Night", "http://picosong.com/download/qPSK/", "3:22", false)
jukebox.AddSong("Crazy Frog - Crazy Frog - Axel F", "http://picosong.com/download/qPg7/", "2:43", false)
jukebox.AddSong("Gandalfs Fall - LOTR Soundtrack", "http://picosong.com/download/qPJr/", "2:12", false)
jukebox.AddSong("Jakubi - Feels Like Yesterday", "http://picosong.com/download/qcPC/", "3:30", false)
jukebox.AddSong("My Songs Know What You Did In The Dark (Light Em Up)", "http://picosong.com/download/qPSq/", "3:07", false)
jukebox.AddSong("Gothic Storm - You Are Not Alone (Chris Haigh - 2012 Epic Emotional Piano)", "http://picosong.com/download/qPS3/", "2:11", false)
jukebox.AddSong("Gothic Storm - Whisper Of Hope", "http://picosong.com/download/qPJ7/", "2:33", false)
jukebox.AddSong("Gothic Storm - Tortured Heart", "http://picosong.com/download/qPJx/", "2:03", false)
jukebox.AddSong("Gabrielle Aplin - Please Don't Say You Love Me - Acoustic", "http://picosong.com/download/qPJh/", "2:59", false)
jukebox.AddSong("Following The Footsteps - Isaac Shepard (Awaken)", "http://picosong.com/download/qPJm/", "2:55", false)
jukebox.AddSong("Brand X Music - Breathless", "http://picosong.com/download/qPJL/", "3:03", false)
jukebox.AddSong("Brand Music X - Hand of Time", "http://picosong.com/download/qPJk/", "2:00", false)
jukebox.AddSong("Audiomachine - Transcendence", "http://picosong.com/download/qPJ3/", "3:42", false)
jukebox.AddSong("If It Means A Lot To You By A Day To Remember", "http://picosong.com/download/qPuK/", "4:11", false)
jukebox.AddSong("The All-American Rejects - Gives You Hell", "http://picosong.com/download/q9Jb/", "3:32", false)
jukebox.AddSong("ShadowBeatzInc - Pulse Ecstasy", "http://picosong.com/download/q9JB/", "4:38", false)
jukebox.AddSong("ShadowBeatzInc - Diesel", "http://picosong.com/download/q9JT/", "3:57", false)
jukebox.AddSong("Slipknot - Duality", "http://picosong.com/download/q9SY/", "3:30", false)
jukebox.AddSong("Bring Me The Horizon - The sadness will never end", "http://picosong.com/download/q9S5/", "5:22", false)
jukebox.AddSong("Slipknot - Spit it out", "http://picosong.com/download/q9SX/", "2:39", false)
jukebox.AddSong("Bring Me The Horizon - The Comedown", "http://picosong.com/download/q9S6/", "4:09",  false)
jukebox.AddSong("Dream On, Dreamer - A Thousand Miles", "http://picosong.com/download/q9SA/", "4:15", false)
jukebox.AddSong("Bring Me The Horizon - Can You Feel My Heart", "http://picosong.com/download/q9Sx/", "3:47", false)
jukebox.AddSong("five finger death punch - bulletproof", "http://picosong.com/download/qjwA/", "3:16", false)
jukebox.AddSong("five finger death punch - bad company", "http://picosong.com/download/qjwX/", "4:17", false)
jukebox.AddSong("five finger death punch - M.I.N.E", "http://picosong.com/download/qjwH/", "3:59", false)
jukebox.AddSong("five finger death punch - Canto 34", "http://picosong.com/download/qjwt/", "4:08", false)
jukebox.AddSong("emmure - Solar flare homicide", "http://picosong.com/download/qjwY/", "3:46", false)
jukebox.AddSong("August burns red - Fault Line", "http://picosong.com/download/qjwq/", "4:11", false)
jukebox.AddSong("Cher Lloyd - Swagger Jagger", "http://picosong.com/download/quyY/", "3:15", false)
jukebox.AddSong("Skrillex - First of the Year", "http://picosong.com/download/quyD/", "4:22", false)
jukebox.AddSong("Ephixa - Lost Woods Dubstep", "http://picosong.com/download/qSkd/", "3:53", false)
jukebox.AddSong("AK9 - When you come home", "http://picosong.com/download/q65j/", "7:16", false)
jukebox.AddSong("Owl City - Alligator Sky", "http://picosong.com/download/q6aE/", "3:11", false)
jukebox.AddSong("Owl City - Fireflies", "http://picosong.com/download/q6aA/", "3:54", false)
jukebox.AddSong("Aerosmith - Dream on", "http://picosong.com/download/q6aS/", "4:23", false)
jukebox.AddSong("Pentatonix - Daftpunk", "http://picosong.com/download/qEsz/", "4:55", false)
jukebox.AddSong("Pewdiepie - Jabba the hut", "http://picosong.com/download/qAy2/", "2:11", false)
jukebox.AddSong("Jason Mraz - I wont give up", "http://picosong.com/download/qAyj/", "4:35", false)
jukebox.AddSong("Jason Mraz - I'm yours", "http://picosong.com/download/qAyE/", "3:41", false)
jukebox.AddSong("Jessie J - Wild", "http://picosong.com/download/qxFg/", "3:54", false)
jukebox.AddSong("Mitis and Mahi - Blu", "http://picosong.com/download/qxF8/", "5:01", false)
jukebox.AddSong("The 1975 - Sex", "http://picosong.com/download/qxFx/", "3:26", false)
jukebox.AddSong("The 1975 - Chocolate", "http://picosong.com/download/qxR3/", "3:43", false)
jukebox.AddSong("Martin Garrix - Animals", "http://picosong.com/download/qxRC/", "3:11", false)
jukebox.AddSong("Pokemon - Battle Theme", "http://picosong.com/download/qxRX/", "2:15", false)
jukebox.AddSong("DVBBS & Borgeous - TSUNAMI", "http://picosong.com/download/qxRu/", "3:56", false)
jukebox.AddSong("Basshunter - DotA", "http://picosong.com/download/qDm2/", "3:20", false) 
jukebox.AddSong("UMC Ft. Jessie J - Wild", "http://picosong.com/download/qd5N/", "3:59", false) 
jukebox.AddSong("Purple Ponies", "http://picosong.com/download/qWE2/", "1:39", false)
jukebox.AddSong("Tool - Right in two", "http://picosong.com/download/qW8j/", "8:57", false)
jukebox.AddSong("Tool - Ænema", "http://picosong.com/download/qWES/", "6:46", false)
jukebox.AddSong("Tool - Eulogy", "http://picosong.com/download/qWEh/", "8:33", false)
jukebox.AddSong("Tool - Jambi", "http://picosong.com/download/qWED/", "7:28", false)
jukebox.AddSong("Tool - Lateralus", "http://picosong.com/download/qWEH/", "9:24", false)
jukebox.AddSong("Tool - Schism", "http://picosong.com/download/qWEv/", "7:22", false)
jukebox.AddSong("Tool - The Pot", "http://picosong.com/download/qW8R/", "6:24", false)
jukebox.AddSong("Tool - Vicarious", "http://picosong.com/download/qW8f/", "9:09", false)
jukebox.AddSong("Pegboard Nerds & Tristam - Razor Sharp", "http://picosong.com/download/kwb2/", "4:41", false)
jukebox.AddSong("Crabsong", "http://picosong.com/download/kjRR/", "1:12", false)
jukebox.AddSong("Safety Dance - Men without hats", "http://picosong.com/download/ku9J/", "2:53", false)
jukebox.AddSong("KDrew - Bullseye", "http://picosong.com/download/kJse/", "4:03", false)
jukebox.AddSong("M4SONIC - Weapon", "http://picosong.com/download/kuvB/", "2:52", false)
jukebox.AddSong("Nero - Must Be The Feeling", "http://picosong.com/download/kuvn/", "6:00", false)
jukebox.AddSong("Skrillex - Kill Everybody", "http://picosong.com/download/kuW8/", "5:37", false)
jukebox.AddSong("Snoop DOG - Smoke Weed Everyday", "http://picosong.com/download/ku7j/", "4:11", false)
jukebox.AddSong("The Braindrillerz - Frenchcore S'il vous plait", "http://picosong.com/download/krGb/", "5:30", false)
jukebox.AddSong("Babymetal - Megitsune", "http://picosong.com/download/CZug/", "4:08", false)
jukebox.AddSong("Babymetal - Gimme Choko!", "http://picosong.com/download/CZum/", "3:52", false)
jukebox.AddSong("Babymetal - Ii ne!", "http://picosong.com/download/CZuE/", "4:11", false)
jukebox.AddSong("Babymetal - DoKiDoKi Morning", "http://picosong.com/download/CZuK/", "3:46", false)
jukebox.AddSong("Babymetal - Onedari Daisakusen", "http://picosong.com/download/CZuW/", "3:17", false)
jukebox.AddSong("Babymetal - 4 no Uta", "http://picosong.com/download/CZJs/", "4:04", false)
jukebox.AddSong("Babymetal - UkiUki Midnight", "http://picosong.com/download/CZJk/", "3:19", false)
jukebox.AddSong("Babymetal - Catch Me If You Can", "http://picosong.com/download/CZJg/", "3:57", false)
jukebox.AddSong("Babymetal - Akumu no Rinbukyoku", "http://picosong.com/download/CZJJ/", "3:36", false)
jukebox.AddSong("Babymetal - Headbanger!", "http://picosong.com/download/CZJE/", "4:02", false)
jukebox.AddSong("Babymetal - Babymetal Death", "http://picosong.com/download/CZSF/", "6:06", false)
jukebox.AddSong("Babymetal - Ijime, Dame, Zettai", "http://picosong.com/download/CZJD/", "6:09", false)
jukebox.AddSong("Babymetal - Benitsuki Akatsuki", "http://picosong.com/download/CZJi/", "5:52", false)
-- Since Sanne is too lazy to add these for me, fucking twat
jukebox.AddSong("Kawada Mami - Joint", "http://picosong.com/download/CxdV/", "4:01", false)
jukebox.AddSong("Maximum the hormone - What's up people", "http://picosong.com/download/Cxrs/", "4:31", false)



-- See if a song is valid
function jukebox.IsValidSong(song)
	for k, v in pairs(jukebox.Songs) do
		if (v.name == song) then
			return true
		end
	end
	
	return false
end

-- Get shit from a song
function jukebox.GetSongData(song)
	for k, v in pairs(jukebox.Songs) do
		if (v.name == song) then
			return v
		end
	end
	
	return {}
end

-- returns time in seconds
function jukebox.GetTimeFromSong(song)
	local time = "0:00"
	local totaltime = 0
	
	for k, v in pairs(jukebox.Songs) do
		if (v.name == song) then
			time = v.time
			break
		end
	end

	-- Meh
	totaltime = tonumber(time[1] * 60)
	totaltime = totaltime + tonumber(time[3] * 10)
	totaltime = totaltime + tonumber(time[4])
	
	return totaltime
end

-- See if a song is explicit
function jukebox.IsSongExplicit(song)
	for k, v in pairs(jukebox.Songs) do
		if (v.name == song) then
			if (v.expllicit == true) then
				return true
			end
		end
	end
	
	return false
end

-- This is tricky, the streamlink changes all the time
jukebox.link = ""
function jukebox.GetLink(link)
	local html
	local tab = {}
	
	local t = http.Fetch(link, 
		function(body)
			html = body
			
			-- Such a shitty way :C
			local x, y = html:find([[<a href="/cdn/]])
			local s = string.sub(html, x, y + 50)
			s =	s:Replace([[<a href=]], "")
			s = s:Replace("<", "")
			s = s:Replace(">", "")
			s = s:Replace([["]], "")
			s = s:Replace("click", "")
			s = s:Replace("here", "")
			s = s:Replace("to", "")
			
			result = "http://picosong.com"..s
			
			print(result)
			jukebox.link = result
		end,
		
		function(err)
			print("[JUKEBOX] Failed to find link.")
		end
	)
	
	return ""
end

-- This is a shitty way to sort
jukebox.SongsSorted = {}
for k, v in pairs(jukebox.Songs) do
	jukebox.SongsSorted[k] = {name = v.name, time = v.time}
end

table.SortByMember(jukebox.SongsSorted, "name", function(a, b) return a < b end)