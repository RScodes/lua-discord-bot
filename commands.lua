return {
	["!restart"] = function(message, client)
		if message.author.id == "191442101135867906" then
			message.channel:sendMessage("Okay, give me a second.")
			client:stop()
		else
			func.Restricted(message)
		end
	end,
	["!guilds"] = function(message, client)
		local _ = ""
		for guild in client.guilds do
			_ = _ .."\n".. tostring(guild)
		end
		message.channel:sendMessage(" ", {
			["color"] = date[WhichDay].color,
			["fields"] = {
				{
					name = "Guilds", 
					value = _, 
					inline = false
				},
			},
		})
	end,
}
