local discordia = require('discordia')
local client = discordia.Client()
local timer = require("timer")
local Files = {
	"commands.lua",
}

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
		message.author:sendMessage("```Markdown\nCommands:\n\n .add @someone Role\n .mute @someone Reason  \n .unmute @someone \n .banList \n .prune NumberOfMessages\n .kick @someone Reason\n .ban @someone Reason\n .tempMute @someone TimeInMinutes\n .Welcome WelcomingMessage\n .Logs channelID\n .WhiteList @someone so the bot doesnt remove his discord.gg links.\n .MuteRank DefaultMuteRole\n\n```<@"..message.author.id..">\n")
		message.channel:sendMessage("Check PM.")
	end

	if message.author == client.user then return end
	
	if cmd == '?/ping' then
       		message.channel:sendMessage('pong')
	end
	if cmdt == '?/musa' then
       		message.channel:sendMessage('motherland')
	end
	if message.content == '?/discordia' then
        	message.channel:sendMessage('https://github.com/SinisterRectus/Discordia')
    	end
	if cmd == "?/discord.js" then
		message.channel:sendMessage("https://github.com/hydrabolt/discord.js")
	end
	if cmd == "?/game" then
		message.channel:sendMessage("done!")
	end
	if cmd == "bandisboi" then
		message.channel:sendMessage("im on my way")
		return guild.owner:sendMessage("boi dis guy wants to ban somebodey")
	end			
	if cmd == "?/maze" then
		message.channel:sendMessage("runner")
	end
	if message.content == "?/mention" then
		message.channel:sendMessage(string.format("%s mentioned!", message.author.mentionString))
	end
	if cmd == "?/guild" then
		if arg == "name" then -- you should type !guild name in chat to call this
			message.channel:sendMessage(string.format("The name of this guild is %s.", message.guild.name))
		elseif arg == "number-id" then
			message.channel:sendMessage(string.format("The id of this guild is %s.", message.guild.id))
		else
			message.channel:sendMessage("Invalid argument.")
		end
	end
	if message.content == "?/whobanned" then
		message.channel:sendMessage(string.format(bannedUsers))
	end
		
end)

local function recycleTrashbin(guild)
    guild:getTextChannel('name', 'trashbin'):delete()
    guild:createTextChannel
		
client:run('MjI2MDA3OTY5MjQ1MDM2NTU1.C1Vw-w.DEU4QprcE9a4M7MlCL5oUYeqSGs')
 


