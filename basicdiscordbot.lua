local discordia = require('discordia')
local client = discordia.Client()
local timer = require("timer")

client:on('ready', function()
    print('Logged in as '.. client.user.username)
end)

client:on(
	'memberJoin',
	function(member) -- member will be the var that I'll use to access everything that is in the member object.
		-- from here everything will be executed EVERY time someone joins the server.
		if not member then return end -- a simple check (not necessary).
		-- we set up a welcome message.
		local WelcomeMessage = string.format("Hey %s, how is it going? Welcome to our server!", member.username) -- as previously said, 'member' is formed by different values, username is one of them.
		client:getServerById("256403463510949898"):getChannelById("260453104791584768"):sendMessage("welcome ".. member.username .." to the server")
end)



client:on('messageCreate', function(message)
	local cmd, arg = string.match(message.content, '(%S+) (.*)')
	cmd = cmd or message.content

	if cmd == "?/help" then
		message.author:sendMessage("```boi```<@"..message.author.id..">\n")
		message.channel:sendMessage("Check PM.")
	end

	if message.author == client.user then return end
	
	if message.content == '?/ping' then
       		message.channel:sendMessage('pong')
	end
	if message.content == '?/musa' then
       		message.channel:sendMessage('motherland')
	end
	if message.content == '?/discordia' then
        	message.channel:sendMessage('https://github.com/SinisterRectus/Discordia')
    	end
	if message.content == "?/discord.js" then
		message.channel:sendMessage("https://github.com/hydrabolt/discord.js")
	end
	if cmessage.content == "?/game" then
		message.channel:sendMessage("done!")
	end
	if message.content == "bandisboi" then
		message.channel:sendMessage("im on my way")
		return guild.owner:sendMessage("boi dis guy wants to ban somebodey")
	end			
	if message.content == "?/maze" then
		message.channel:sendMessage("runner")
	end
	if message.content == "?/mention" then
		message.channel:sendMessage(string.format("%s mentioned!", message.author.mentionString))
	end
	if message.content == "?/guild" then
		if arg == "name" then -- you should type !guild name in chat to call this
			message.channel:sendMessage(string.format("The name of this guild is %s.", message.guild.name))
		elseif arg == "number-id" then
			message.channel:sendMessage(string.format("The id of this guild is %s.", message.guild.id))
		elseif arg == "owner" then
			message.channel:sendMessage(string.format("the owner is %s.", message.guild.owner.username))
		else
			message.channel:sendMessage("Invalid argument.")
		end
	end
	if message.content == "?/membercount" then
		if msg.author.id !== "226003765889597440" then break end
		else
		message.channel:sendMessage(string.format(memberCount))
	end

		
end)
		
client:run("put your token here")
 


