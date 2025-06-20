local cloneref = clonereference or cloneref
local cache = {}
local Services = setmetatable({}, {
    __index = function(_, serviceName)
        local service = cache[serviceName]
        if not service then
            service = cloneref(game:GetService(serviceName))
            cache[serviceName] = service
        end
        return service
    end
})

local ReplicatedStorage, TextChatService = Services.ReplicatedStorage, Services.TextChatService
local Remote = Services.ReplicatedStorage:WaitForChild("DefaultChatSystemChatEvents", 5)
Remote = Remote and Remote:FindFirstChild("SayMessageRequest") or nil

local Packages = {
    Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))(),
    Lines = {
        "Want to come to my place and watch Family Guy?",
        "I wish I was crossed-eyed so I could see you twice.",
        "Are you Grass? because if you are, that's the only time I'd touch it.",
        "I wish I was garbage so you would take me out one a week",
        "Are you a parking ticket? Cause you got fine written all over you.",
        "I have 206 bones in my body, wanna give me one?",
        "Are you from Tennessee? Because you're the only 10 I see.",
        "Are you sure you're not tired? You've been running through my mind all day.",
        "I'm not a photographer, but I can picture me and you together.",
        "I'm lost. Can you give me directions to your heart?",
        "Did it hurt? When you fell from heaven?",
        "If I could rearrange the alphabet, I'd put 'U' and 'I' together.",
        "Well, here I am. What are your other two wishes?",
        "It's a good thing I have my library card, because I am totally checking you out.",
        "They say Disney World is the happiest place on Earth, but clearly they've never stood next to you.",
        "Are you Siri? Because you autocomplete me.",
        "You remind me of a magnet because you sure are attracting me over here.",
        "Are you a loan? Because you've got my interest.",
        "If you were a fruit, you'd be a fine-apple.",
        "If you were a flower, you'd be a daaaaaamn-delion.",
        "Is your name Google? Because you're everything I've been searching for.",
        "Did you do something to my eyes? Because I can't keep them off you.",
        "I'm pretty good at algebra...I can replace your X and you wouldn't need to figure out Y.",
        "Can I borrow your phone? I need to call God and tell him I've found his missing angel.",
        "My phone's broken, it doesn't have your number in it.",
        "I'm no mathematician, but I'm pretty good with numbers. Tell you what, give me yours and watch what I can do with it.",
        "I think there's something wrong with my phone. Could you call it and see if it works?",
        "I think your number will be safer in my phone than in your head.",
        "Do you know CPR? Because you are taking my breath away!",
        "You're so beautiful that you made me forget my pickup line.",
        "It's a good thing I have my library card because I am totally checking you out.",
        "I was blinded by your beauty; I'm going to need your name and phone number for insurance purposes.",
        "I was wondering if you had an extra heart. Because mine was just stolen.",
        "Is your name Google? Because you have everything I've been searching for.",
        "Are you a bank loan? Because you got my interest.",
        "Are you a time traveler? Cause I see you in my future!",
        "Can I follow you where you're going right now? Because my parents always told me to follow my dreams.",
        "Is this the Hogwarts Express? Because it feels like you and I are headed somewhere magical.",
        "Life without you is like a broken pencil... pointless.",
        "Do you have a BandAid? I just scraped my knee falling for you.",
        "I must be a snowflake, because I've fallen for you.",
        "🔮 I see me in your future.",
        "Let's play a game! If I win, you take me out. If you win, I take you out. 🏆",
        "Is it just the WiFi? Or am I totally feeling a connection?",
        "Are you a keyboard? Because you're just my type.",
        "You must be made of Copper and Tellurium, because you're CuTe!",
        "Do you drink Pepsi? Because you're so-da-licious!",
        "I swear someone stole the stars from the sky and put them in your eyes.",
        "I was going to say something really sweet about you. But when I saw you, I became speechless.",
        "Trust me, I'm not drunk. I'm just intoxicated by you.",
        "Do you have a name or can I just call you mine?",
        "Are you sure you're not tired? Because you've been running through my mind all day.",
        "Hi, how was heaven when you left it?",
        "I must be in a museum, because you truly are a work of art.",
        "Are you a dictionary? Cause you're adding meaning to my life.",
        "If you were a triangle, you'd be acute one!",
        "You look so familiar. Didn't we take a class together? I could've sworn we had chemistry.",
        "If I had to rate you from 1 to 10, I'd give you a 9 because I'm the 1 you need.",
        "Do you wanna grab a coffee? Because I like you a latte.",
        "Are you French? Because Eiffel for you.",
        "Do you like Nintendo? Because Wii would look good together.",
        "If you were a flower you'd be a damnnnnnn-delion.",
        "If I had a star for every time you brightened my day, I'd have a galaxy in my hand.",
        "I thought happiness started with an H. Why does mine start with U?",
        "Are you a banana? Because I find you apeeling.",
        "Are you an alien? Because you just abducted my heart.",
        "You dropped something... my jaw.",
        "Forget Hydrogen. You're my number 1 element.",
        "Are you a compound of Barium and Beryllium? Because you're a total BaBe.",
        "You've got everything I've been searching for, and believe me — I've been looking a long time.",
        "I was wondering if you're an artist because you were so good at drawing me in.",
        "Do you have a map? I just got lost in your eyes.",
        "Are you an electrician? Because you're definitely lighting up my day/night!",
        "I always thought happiness started with an 'h,' but it turns out mine starts with 'u.'",
        "If you were a song, you'd be the best track on the album.",
        "Your hand looks heavy — can I hold it for you?",
        "I can't tell if that was an earthquake, or if you just seriously rocked my world.",
        "If beauty were time, you'd be eternity.",
        "I don't know which is prettier today — the weather, or your eyes.",
        "I'm not usually religious, but when I saw you, I knew you were the answer to my prayers.",
        "I'm not currently an organ donor, but I'd be happy to give you my heart.",
        "I'd say, 'God bless you,' but it looks like he already did.",
        "There must be something wrong with my eyes—I can't seem to take them off of you.",
        "You must be a hell of a thief, because you managed to steal my heart from across the room.",
        "When your parents made you, they were really just showing off.",
        "Is there an airport nearby or is it my heart taking off?",
        "Was your dad a boxer? Because damn, you're a knockout!",
        "Would you grab my arm, so I can tell my friends I've been touched by an angel?",
        "Can I follow you home? Cause my parents always told me to follow my dreams.",
        "Hello, I'm a thief, and I'm here to steal your heart.",
        "If nothing lasts forever, will you be my nothing?",
        "Was you father an alien? Because there's nothing else like you on Earth!",
        "Was your father a thief? 'Cause someone stole the stars from the sky and put them in your eyes.",
        "Are you my phone charger? Because without you, I'd die.",
        "You remind me of a magnet, because you sure are attracting me over here!",
        "Four and four become eight, but you and I can be fate.",
        "Hello! I guess you are looking for Mr. Right. Well, that's me!",
        "Do you like bad boys/girls? Because I'm really bad at this.",
        "Mind if I tie your shoes? I'd hate to see you falling for anyone else.",
        "My buddies bet me that I wouldn't be able to start a conversation with the most beautiful person here. How should we spend their money?",
        "Are you an exam paper? Because I forget everything when I look at you...",
        "I am not very good at holding conversations... so can I hold your hands instead?",
        "I would take you to the movies, but they don't allow snacks",
        "You remind me of a dictionary in the way you add meaning to everything.",
        "Are you HTTP? Because without you, I'm just ://",
        "You're so pretty that you made me forget my pick up line.",
        "No wonder the sky is gray today. All the blue is in your eyes.",
        "I want our love to be like the number Pi: irrational and never-ending.",
        "I didn't think wishing on those birthday candles would work, but here you are.",
        "Do you play soccer? You look like a keeper.",
        "Hey, can you help me get to a doctor? My heart keeps skipping a beat when I'm with you.",
        "I might need crutches. You make my knees weak.",
        "I should charge you rent for spending so much time in my head.",
        "Are you C₆H₁₂O₆? Because you're sweet.",
        "My pronouns are he/him but I could be all/yours.",
        "I think you've got something in your eye. Oh never mind, it's just a sparkle.",
        "If you're here, who's running heaven?",
        "You're so sweet, you could put Hershey's out of business!",
        "Are you my appendix? Because I have a funny feeling in my stomach that makes me feel like I should take you out.",
        "You must be a high test score. Because I want to take you home and show you to my mother.",
        "There is plenty of fish in the sea, but you're the only one I'd like to catch.",
        "Roses are red, my face is too, that only happens when I'm around you.",
        "You must be exhausted, because you've been running through my mind all day.",
        "My mom told me not to talk to strangers, but I'll make an exception for you.",
        "I'd never play hide and seek with you because someone like you is impossible to find.",
        "Are you the city of Ancient Rome? Because you're on fire!",
        "Know what's on the menu? Me-N-U.",
        "Did the sun just come out, or did you just smile at me?",
        "I'm glad I remembered to bring my library card. 'Cause I am totally checking you out!",
        "If your left leg is Thanksgiving and your right leg is Christmas, can I visit you in between the holidays?",
        "I was feeling a little off today, but you've turned me on again",
        "Can we take a picture together? I want to show my mom what my next girlfriend looks like",
        "Can I have your picture so I can show Santa what I want for Christmas this year?",
        "Your feet must be tired because you've been running through my mind all day",
        "Hey, do you like bananas? Cause I wanna show you mine",
        "You remind me of my pinkie toe you're small you're cute and i'll probably be bangn' you on my coffee table later tonight", 
        "Are you wifi? 'Cause I'm feelin' a connection.",
        "You got a name, or can I call you mine?",
        "Are you a campfire? 'Cause you're hot and I want s'more.",
        "Is your heart a charger? 'Cause I'm feelin' low without it.",
        "You're hotter than the back of my laptop.",
        "Are you Spotify Premium? 'Cause you got no ads and all my attention.",
        "You're the reason autocorrect knows your name.",
        "You're the 'lol' to my 'wyd'. Always.",
        "Are you a TikTok trend? 'Cause I can't get you outta my head.",
        "You're the reason I ignore all my notifs.",
        "Are you Bluetooth? Because I feel paired up already.",
        "You must be YouTube Premium, no ads, just you and me.",
        "You got that main character energy fr.",
        "Are you my phone? 'Cause I can't stop checking you.",
        "Do you stream? 'Cause you just made my heart go live.",
        "You're like a Discord ping—I felt that.",
        "You're the sauce to my nuggets.",
        "Are you loading screen? 'Cause you got me stuck thinking about you.",
        "Are you a power outage? 'Cause you just shut everyone else off.",
        "Are you a keyboard? Because you're everything I've been typing about.",
        "You're the lag in my heart—it skips a beat when I see you.",
        "Do you play Roblox? 'Cause I wanna build a world with you.",
        "You're the only update I wanna install.",
        "You got that 'just dropped' energy. Fresh af.",
        "Are you FYP? 'Cause I keep seeing you everywhere.",
        "You're like RAM—always in my memory.",
        "Are you a mouse click? Because every time I see you, I feel clicked.",
        "You must be cracked, 'cause you just broke my defense system.",
        "You're like low ping, smooth and satisfying.",
        "Are you a Discord mod? 'Cause I feel safe around you.",
        "Are you a playlist? Because you're straight bangers.",
        "You're like loot in a chest—rare and valuable.",
        "Are you a respawn? Because you just revived my heart.",
        "You're my favorite skin—drip maxed out.",
        "Are you a glitch? 'Cause you're breaking my reality.",
        "You're the drip to my fit.",
        "Are you the final boss? 'Cause I'd keep retrying just for you.",
        "You make my heart race like a speedrun.",
        "Are you RTX? Because everything looks better when you're around.",
        "You're a limited-time offer, and I'm tryna cop.",
        "Are you a pop-up ad? 'Cause you just took over my screen.",
        "You're like a W update—everything just got better.",
        "You must be patch notes, 'cause you fixed my broken heart.",
        "Are you a stealth buff? 'Cause I feel better when you're near.",
        "You're the rarest drop from the loot pool.",
        "Are you night mode? 'Cause you just made everything feel right.",
        "You're a full combo—perfect from start to finish.",
        "Are you a stream delay? 'Cause I feel like I waited too long to meet you.",
        "You're the only person I wouldn't mute in VC.",
        "You're like a rare badge—one of a kind and hard to earn.",
        "Are you a tutorial level? Because you made everything make sense.",
        "You're like a secret easter egg—I feel lucky I found you.",
        "Are you my final form? Because this feels like my evolution.",
        "You're a critical hit to my soul.",
        "Are you in-game voice chat? 'Cause I wanna hear your voice 24/7.",
        "You're like a patch release—bringing balance to my life.",
        "You got me simping harder than a speedrun world record.",
        "Are you a victory royale? Because you're my one and only win.",
        "You're like headshot damage—instant impact.",
        "Are you wallhack? 'Cause I see you even through everything else.",
        "You're the meta. No cap.",
        "You're like full brightness—lighting up everything.",
        "You must be in my party, 'cause I never wanna queue without you.",
        "You're the OG version—nothing else compares.",
        "Are you controller drift? 'Cause I'm sliding into your DMs.",
        "You're my daily login reward.",
        "Are you a battle pass? Because I'd grind every level for you.",
        "You're the 'W' I needed today.",
        "Are you a healing item? Because I feel better when I'm with you.",
        "You're a secret level—underrated but unforgettable.",
        "You're like ping under 10ms—unreal perfection.",
        "Are you the lobby leader? 'Cause I'll follow your every move.",
        "You're the buff I didn't know I needed.",
        "You're a skin I'd spend Robux on. No regrets.",
        "Are you crossplay? 'Cause you connect all my worlds.",
        "You're a private server—only meant for me.",
        "Are you a loading bar? 'Cause I've been waiting for you forever.",
        "You're the thumbnail that actually delivered.",
        "Are you a rare emote? Because you bring the vibes.",
        "You're the GFX on my thumbnail—highlighting the best part of my day.",
        "You're the ping that keeps me stable.",
        "Are you in my lobby? Because I've been matchmaking with destiny.",
        "You're like alt+tab—I keep coming back to you.",
        "You're a glitch I never want patched.",
        "You're the top comment on my For You page.",
        "Are you a sniper scope? 'Cause I'm locked in on you.",
        "You're like a limited skin—I gotta flex having you.",
        "You're the bug fix to my mental patch notes.",
        "You're a redeem code—full of surprises.",
        "Are you my ranked team? 'Cause we got synergy.",
        "You're that new update—game changer fr.",
        "Are you a final killcam? Because you just ended me clean.",
        "You're like a clean UI—satisfying to be around.",
        "You must be a dev console, 'cause I wanna type my feelings to you.",
        "Are you a YouTube comment? 'Cause you got me thinking for hours.",
        "You're a critical W—no RNG involved.",
        "Are you a side quest? Because I'd spend hours with you.",
        "You're like the best drop spot—straight value.",
        "You're like console aim assist—unfairly attractive.",
        "Are you my main server? 'Cause I'm always connected to you.",
        "You're my one true buff—stacked and lovely.",
        "Are you fullscreen? 'Cause I need all of you.",
        "You're an XP boost—leveling up my day.",
        "You're the rare shiny I didn't even know I was hunting for.",
        "Are you a rebirth? Because this feels brand new.",
        "You're like soft shadows—making everything glow softly.",
        "Are you post-processing? 'Cause my world got vivid with you.",
        "You're the plot twist in my cutscene.",
        "You're like a default dance—I can't get you outta my head.",
        "Are you a killstreak? Because you keep coming back stronger.",
        "You're the grind that's worth it.",
        "You're the one W in my L streak.",
        "Are you a drop location? 'Cause I'm landing with you.",
        "You must be patch v1.0—perfect from the start.",
        "You're like free V-Bucks—too good to be true.",
        "You're the player I'd always rez first.",
        "Are you a hitmarker? 'Cause I feel every moment with you.",
        "You're the one clip I'd never delete.",
        "Are you a 1v1? Because you've got all my attention.",
        "You're the ping spike in my chest.",
        "Are you a cracked player? 'Cause you got my walls down.",
        "You're the 360 noscope to my heart.",
        "You must be F5, 'cause I keep refreshing just to see you.",
        "Are you a streamer cam? 'Cause you always catch my best angles.",
        "You're like bloom—unpredictable but always on target.",
        "Are you a red dot? Because I'm locked on to you.",
        "You're the montage I want to play on repeat.",
        "You're my aim assist—guiding me where I need to be.",
        "Are you third-person view? Because you give me perspective.",
        "You're like low graphics settings—still beautiful even with no filters.",
        "Are you controller rumble? 'Cause I feel a jolt when you're near.",
        "You're the HUD I never wanna hide.",
        "You're a cracked out operator—every move is elite.",
        "Are you stealth mode? 'Cause you snuck into my heart.",
        "You're that new meta loadout—OP and irresistible.",
        "Are you ping 1ms? 'Cause this feels instant.",
        "You're the pre-game lobby—already hyping me up.",
        "Are you that new badge? Because you're all I'm trying to earn.",
        "You're the animation cancel that makes my heart skip a beat.",
        "You're like a good RNG roll—lucky I found you.",
        "You're the speedrun strat I never knew I needed.",
        "Are you AFK? 'Cause you just stopped my world.",
        "You're like bullet drop—I had to adjust, but it's worth it.",
        "Are you the carry? 'Cause I feel safe with you on my team.",
        "You're the only DM I won't leave on read.",
        "Are you a comeback? 'Cause I'm making moves for you.",
        "You're the W I didn't know I queued for.",
        "Are you spawn protection? 'Cause you keep me safe.",
        "You're my go-to loadout: reliable and fire.",
        "Are you new patch notes? 'Cause you're full of surprises.",
        "You're the pre-load—always worth the wait.",
        "Are you an alt account? Because I'd start over just for you."
    }
}

local Window = Packages.Rayfield:CreateWindow({
    Name = "Rizzler",
    LoadingTitle = "Rizzler",
    LoadingSubtitle = "by Volt Hub",
    ConfigurationSaving = {
        Enabled = false,
        FolderName = nil,
        FileName = "Rizzler"
    },
    Discord = {
        Enabled = false,
        Invite = "noinvitelink",
        RememberJoins = true
    },
    KeySystem = false,
})

local Tabs = {
    Main = Window:CreateTab("Main", 4483362458)
}

local RizzlerModule = Tabs.Main:CreateSection("Rizzler")

Tabs.Main:CreateLabel(#Packages.Lines .. " lines are on your fingertips.")

local Line = ""

Tabs.Main:CreateDropdown({
    Name = "Select Line",
    Options = Packages.Lines,
    CurrentOption = {"Select a line here!"},
    MultipleOptions = false,
    Flag = "Dropdown1",
    Callback = function(Option)
        Line = Option[1]
        print("Selected line:", Line)
    end
})

Tabs.Main:CreateButton({
    Name = "Say Line",
    Callback = function()
        if typeof(Line) ~= "string" or Line == nil or Line == "Select a line here!" then
            print("No valid line selected, skipping send")
            return
        end

        if Remote then
            Remote:FireServer(Line, "All")
        else
            local TargetChannel = TextChatService.TextChannels["RBXGeneral"]
            TargetChannel:SendAsync(Line)
        end
    end
})

Tabs.Main:CreateButton({
    Name = "Say Random Line",
    Callback = function()
        local RandomLine = Packages.Lines[math.random(1, #Packages.Lines)]
        if Remote then
            Remote:FireServer(RandomLine, "All")
        else
            local TargetChannel = TextChatService.TextChannels["RBXGeneral"]
            TargetChannel:SendAsync(RandomLine)
        end
    end
})
