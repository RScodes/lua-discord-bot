local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
    print('Logged in as '.. client.user.username)
end)
client:on("memberJoin", function(member)
       message.channel:sendMessage('member.name has joined')
       member:sendMessage("welcome to the server") end)
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
