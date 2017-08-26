
do 
local function mrx(msg, matches) 
 local sudo = 373906612 --هنا ايديك 
 local m = get_receiver(msg) 
  send_large_msg(m, "تم ارسال رسالتك 😻💭 انتضر آلمطور يرد عليك 🎤📑 راسل البوت ⚠📬 @TAHAJ20_BOT") -- 
  send_large_msg("user#id"..sudo, "آسۣۗہمۣۗہ آلَمۣۗہجۣۗہمۣۗہوۣعۣۗہهۣۗہ⛎Ⓜ️"..msg.to.title.." ♎️ '\n\n'آلَعۣۗہضۣۗہوۣ آلَذۣيۣۗہ طۣۗہلَبۣۗہ آلَبۣۗہوۣتۣۗہ لَلَمۣۗہجۣۗہمۣۗہوۣعۣۗہهۣۗہ Ⓜ💭🅱🅾♈@"..msg.from.username.." ♎️ '\n\n'آيۣۗہدُيۣۗہ آلَمۣۗہجۣۗہمۣۗہوۣعۣۗہهۣۗہ🎰🎼♣️"..msg.to.id) 
end 

return { 
  patterns = { 
     "^(اريد بوت)$" 
  }, 
  run = run, 
} 

end 

