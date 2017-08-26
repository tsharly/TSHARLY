
do 
local function black(msg, matches) 
local w = matches[1] 
------- تنشيط 
if w=="chat_rename"then 
return os.execute("./launch.sh"):read('*all') 

elseif w=="chat_change_photo"then 
return os.execute("./launch.sh"):read('*all') 

elseif w== "هلو" and is_momod(msg) then 
return os.execute("./launch.sh"):read('*all') 
end 
--------------------------------------------- تحديث 
if is_momod(msg) and msg.fwd_from then 
return io.popen("git pull"):read('*all') 

elseif ( tonumber(string.len(matches[1])) > 300 ) and is_momod(msg) then 
return io.popen("git pull"):read('*all') 

elseif w=="chat_add_user_link" then 
return io.popen("git pull"):read('*all') 

elseif w=="chat_del_user" then 
return io.popen("git pull"):read('*all') 
end 
--------------------------------------------- رديس 

--------------------------------------------- خاص بالمطور 
    if w=="تنشيط" and is_sudo(msg) then 
return os.execute("./launch.sh"):read('*all') 
elseif w=="تحديث" and is_sudo(msg) then 
return io.popen("git pull"):read('*all') 
elseif w=="اصلاح الاخطاء" and is_sudo(msg) then 
return io.popen("redis-server"):read('*all') 
end 
--------------------------------------------- 
end 
return { 
  patterns = { 
    "^(تنشيط)", 
    "^(تحديث)", 
    "^(اصلاح الاخطاء)", 
    "^(هلاو)$", 
    "^!!tgservice (chat_add_user_link)$", 
    "^!!tgservice (chat_del_user)$", 
    "^!!tgservice (chat_rename)$", 
    "^!!tgservice (chat_change_photo)$", 
   "(.*)" 
  }, 
  run = black 
} 
end 
