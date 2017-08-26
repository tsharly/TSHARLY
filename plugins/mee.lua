
do 

local function taha(msg, matches) 
if is_sudo(msg) then 
        local text = "اَٰنٍٰــتّٰ مٍٰطَُِــوٍّرِٰ اَٰلْٰبٌِٰــوٍّتّٰ ↺⚖️💙≬℠".."\n".."- 💭 أيـديــك : "..msg.from.id.."\n".."🔰- أســمـك : "..msg.from.first_name.."\n".."🌚- مــعــرفــك  : @"..msg.from.username.."\n".."©- أســم ألـمـجـمـوعـة   "..msg.to.title  
        return reply_msg(msg.id, text, ok_cb, false) 
     end 
if is_toto(msg) then 
        local text = "اَٰنٍٰتّٰ اَٰدِٰمٍٰــنٍٰ فِٰيَٰ اَٰلْٰــمٍٰجًِّمٍٰوٍّعٍِّــهَٰہۧ ⁽“͢ 🥁🙍🏻‍♂️✦₎️".."\n".."💭- أيــديــك  : "..msg.from.id.."\n".."🔰- أســمـك : "..msg.from.first_name.."\n".."🎐- مــعــرفــك : @"..msg.from.username.."\n".."©- أســم ألـمـجـمـوعـة "..msg.to.title 
        return reply_msg(msg.id, text, ok_cb, false) 
     end 
if not is_toto(msg) then 
        local text = "اَٰنٍٰـــتّٰ عٍِّضــوٍّ” ᵛ͢ᵎᵖ📯💛﴾⌁".."\n".."💭- أيـديــك : "..msg.from.id.."\n".."🔰- أســمـك : "..msg.from.first_name.."\n".."🎐- مــعــرفــك : @"..msg.from.username.."\n".."©- أسـم ألـمـجـمـوعـة "..msg.to.title 
        return reply_msg(msg.id, text, ok_cb, false) 
     end 
if is_owner(msg) then 
        local text = "اَٰنٍٰتّٰ مٍٰدِٰيَٰــرِٰ اَٰلْٰمٍٰـجًِّمٍٰوٍّعٍِّهَٰہۧ ’ֆ💧💆🏻⍤".."\n".."💭- أيــديــك : "..msg.from.id.."\n".."🔰- أســمـك : "..msg.from.first_name.."\n".."🎐- مــعــرفــك  : @"..msg.from.username.."\n".."©- أســم ألـمـجـمـوعـة   "..msg.to.title 
        return reply_msg(msg.id, text, ok_cb, false) 
     end 
     end 

return { 
  patterns = { 
       "^(me)$", 
  }, 
  run = taha, 
} 

end 

