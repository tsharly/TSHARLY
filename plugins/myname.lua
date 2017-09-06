do 
local function mahdi(msg, matches) 
local reply_id = msg['id'] 

local info = 'كَبـر لفـك عبـالك ما اعـرف اسـمك 🌝❤️'..msg.from.print_name..' | Ch @SNAK_BOT | \n..\n' 

reply_msg(reply_id, info, ok_cb, false) 
end 

return { 
patterns = { 
"^شنو اسمي$", 
"^اسمي$" 
}, 
run = mahdi 
} 
end 

