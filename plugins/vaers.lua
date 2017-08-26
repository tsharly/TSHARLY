
do 

function run(msg, matches) 
local reply_id = msg['id'] 
  local S = 'السٰہورٰٰٖسہ الذي يعمل على مجٰٰٰٰཻ۪ٖ۫ـٰٰـمہہـۄ໑ٰོعةٰٰ ْ10k┊ۧ♚ۧ •،ۦ،‏†࿐˻࿇͢◄‎🔰 آلَآصۣۗہدُآر v1🌚🎐تـواصـل المــْْْـــْْْطورين 🌚😸📥@KM11Qbot ٰمہطـۄ໑ٰོرين السـورسٰٰ @N0VAR / @TAHAJ20🌚🔰🙂تابہٰٰــع  قن͒ہاٰٰٰ̲ھ السٰہورٰٰٖسہ https://telegram.me/DEV_NOVAR' 
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
