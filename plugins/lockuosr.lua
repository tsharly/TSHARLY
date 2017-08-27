

local function run(msg, matches) 
    local uuser = "mate"..msg.to.id 
    local chat = get_receiver(msg) 
    local user = "user#id"..msg.from.id 
    if redis:get(uuser) then 
    if not is_momod(msg) then 
      delete_msg(msg.id, ok_cb, true) 
    local warn = " "
    return reply_msg(msg.id, warn, ok_cb, true) 
    end 
   end 
 if is_momod(msg) and matches[1]=="قفل المعرف"    then 
    local uuser = "mate"..msg.to.id 
    redis:set(uuser,true) 
   reply_msg(msg.id,'',ok_cb, false) 
    end 
     if is_momod(msg) and matches[1]=="فتح المعرف"    then 
    redis:del(uuser) 
   reply_msg(msg.id,'',ok_cb, false) 
end 
end 
return { 
  patterns = { 
"(قفل المعرف)$" , 
"(فتح المعرف)$" , 
  "@"
  
  }, 
  run = run 
} 
