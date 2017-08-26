do 
local function rode(msg, matches) 
local reply_id = msg['id'] 

local info = 'ٴٴ♚ ┋⇝ اسمكٌـﮧ الكـۂ͜ާـ‏امُــل هـৡـوو﴾℡☻'..msg.from.print_name..'تابہٰٰــع  قن͒ہاٰٰٰ̲ھ السٰہورٰٰٖسہ https://telegram.me/DEV_NOVAR\n..\n' 

reply_msg(reply_id, info, ok_cb, false) 
end 

return { 
patterns = { 
"^شنو اسمي$", 
"^اسمي$" 
}, 
run = taha 
} 
end 

