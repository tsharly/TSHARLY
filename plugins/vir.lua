do 

function run(msg, matches) 
local reply_id = msg['id'] 
  local S = ' اهــهلا بك 🌝❤️
فـي سـورس <تشــارلـي> 🌝❤️


🇮🇶➖ رابط السورس على GITHUB
https://github.com/TSHARLY/TSHARLY
🇮🇶➖ المطورين 

CH_ ᗦΣⱱ @phplua 
CH_ ᗦΣⱱ @jhon124 
CH_ ᗦΣⱱ @gokeos 
CH_ ᗦΣⱱ @no0om 
CH_ ᗦΣⱱ @easo100

🇮🇶➖ قناة السورس 
snak_bot@
  ' 
reply_msg(reply_id, S, ok_cb, false) 
end 

return { 
  patterns = { 
"^(الاصدار)$", 
"^(السورس)$"
  }, 
  run = run 
} 

end