
do 

local function pre_process(msg) 
local mohammed = msg['id'] 
  local user = msg.from.id 
local chat = msg.to.id 
    local moody = 'mate:'..msg.to.id 
    if redis:get(moody) and msg.media and not is_momod(msg) then 

            delete_msg(msg.id, ok_cb, false) 
local test = "عزيزي~["..msg.from.first_name.."]".."\n".."يمنع نشر صور فيديوهات صوتيات وكافة الميديا هنا ان تكرر الامر سوف تجبرني على طردك😼☝️".."\n".." 🔺🔻 username : @"..(msg.from.username or " ") 
reply_msg(mohammed, test, ok_cb, true) 

end 

        return msg 
    end 

local function MOHAMMED(msg, matches) 
local mohammed = msg['id'] 

    if matches[1] == 'قفل الوسائط'  and is_momod(msg) then 
                    local th3boss= 'mate:'..msg.to.id 
                    redis:set(th3boss, true) 
local boss = '🔰💫🔐تـۣۛـۣۛـ﴿ٰقفـۣۣۛـۣل الوسـہائطۭۢ﴾ۣۣۙــہٰۭۢمۦ✿⇣\n✴Order By : @'..msg.from.username..'\n✴Order By : '.. msg.from.id..'\n' 
reply_msg(mohammed, boss, ok_cb, true) 
elseif matches[1] == 'قفل الوسائط' and not is_momod(msg) then 
local moody = '🔘🔇هـْـٍْـ(ٍْ☝)ـٍْـٍْ✟ـْذأ.cc.الامـٍٍٍّّّـٍٍٍّّّ🌸ٍٍٍّّّـٍٍّّّــر ٍّْ✾للادمہًٍِْہـ﴿✮﴾ـٌٍِنيه والمــﮨـℓـٍَّـدراءلتبـ﴿❂﴾ـعبصـُْہۭۢ❀ٰٰ❥ٰ' 
reply_msg(mohammed, moody, ok_cb, true) 
  elseif is_momod(msg) and matches[1] == 'فتح الوسائط' then 
      local th3boss= 'mate:'..msg.to.id 
      redis:del(th3boss) 
local boss = '🔰💫🔓تـۣۛـۣۛـ﴿ٰفـۣۣۛـۣتح الوسـہائطۭۢ﴾ۣۣۙــہٰۭۢمۦ✿⇣\n✴Order By : @'..msg.from.username..'\n✴Order By : '.. msg.from.id..'\n' 
reply_msg(mohammed, boss, ok_cb, true) 
elseif matches[1] == 'فتح الوسائط' and not is_momod(msg) then 
local moody= '🔘🔇هـْـٍْـ(ٍْ☝)ـٍْـٍْ✟ـْذأ.cc.الامـٍٍٍّّّـٍٍٍّّّ🌸ٍٍٍّّّـٍٍّّّــر ٍّْ✾للادمہًٍِْہـ﴿✮﴾ـٌٍِنيه والمــﮨـℓـٍَّـدرا۽✞ لتبـ﴿❂﴾ـعبصـُْہۭۢ❀ٰٰ❥ٰ' 
reply_msg(mohammed, moody, ok_cb, true) 
end 
end 

return { 
    patterns = { 
    "^(قفل الوسائط)$", 
    "^(فتح الوسائط)$", 
  }, 
run = taha, 
    pre_process = pre_process 
} 

end 
