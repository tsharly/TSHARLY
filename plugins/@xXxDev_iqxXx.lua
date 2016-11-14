do 

local function run(msg, matches) 
 local sudo = 259142888
 local r = get_receiver(msg)
  send_large_msg(r, "انتضرني 🙊 اصيحلك مطوري واجي ❤️🏃 ")
  send_large_msg("user#id"..sudo, "🎴 هناك شخص 👤 بحاجة اليك 🔷✔\n\n ".."⛔ المعرف : @"..msg.from.username.."\n 🔋 الايدي : "..msg.from.id.."\n 📋 اسم المجموعة : "..msg.to.title.."\n 🆔 ايدي المجموعة : "..msg.from.id..'\n 🕚 الوقت : '..os.date(' %T*', os.time())..'\n 📅 التاريخ : '..os.date('!%A, %B %d, %Y*\n', timestamp))
end 

return { 
  patterns = { 
     "^(@xXxDev_iqxXx)$" 
  }, 
  run = run, 
} 

end


--By @xXxDev_iqxXx