
do 
local function mrx(msg, matches) 
 local sudo = 12345678 --هنا ايديك 
 local m = get_receiver(msg) 
  send_large_msg(m, "تم ارسال طلبك الى المطور 🌝❤️") -- 
  send_large_msg("user#id"..sudo, "اسم المجموعه"..msg.to.title.." ♎️ '\n\n'معرف الشخص @"..msg.from.username.." ♎️ '\n\n'ايـدي الشخص  "..msg.to.id) 
end 

return { 
  patterns = { 
     "^(اريد بوت)$" 
  }, 
  run = run, 
} 

end 

