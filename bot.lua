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
		client:getServerById("256403463510949898"):getChannelById("260453104791584768"):sendMessage("welcome my dood to the server")
end)


client:on('messageCreate', function(message)
    if message.content == '?/ping' then
        message.channel:sendMessage('pong')
    else
    if message.content == '?/musa' then
        message.channel:sendMessage('motherland')
    else
    if message.content == '?/discordia' then
        message.channel:sendMessage('https://github.com/SinisterRectus/Discordia')
    else
end)

client:run('token')
 

