
do 

local function pre_process(msg) 
local mahdi = msg['id'] 
  local user = msg.from.id 
local chat = msg.to.id 
    local phplua = 'mate:'..msg.to.id 
    if redis:get(phplua) and msg.media and not is_momod(msg) then 

            delete_msg(msg.id, ok_cb, false) 
local test = "ممنوع 🎌 ارسال الوسائط في المجموعه 💔🌞"
reply_msg(mahdi, test, ok_cb, true) 

end 

        return msg 
    end 

local function run(msg, matches) 
local mahdi = msg['id'] 

    if matches[1] == 'قفل الوسائط'  and is_momod(msg) then 
                    local devasl= 'mate:'..msg.to.id 
                    redis:set(devasl, true) 
local albadry = 'تـــم قفل 🚩🔒 الوسائط'
reply_msg(mahdi, albadry, ok_cb, true) 
elseif matches[1] == 'قفل الوسائط' and not is_momod(msg) then 
local phplua = 'للادمنيه والمدراء فقط'
reply_msg(mahdi, phplua, ok_cb, true) 
  elseif is_momod(msg) and matches[1] == 'فتح الوسائط' then 
      local devasl= 'mate:'..msg.to.id 
      redis:del(devasl) 
local albadry = 'تـــم  فتح 🔓🌟 الوسائط في المجموعه' 
reply_msg(mahdi, albadry, ok_cb, true) 
elseif matches[1] == 'فتح الوسائط' and not is_momod(msg) then 
local phplua= ' للادمنيه والمدراء فقط'
reply_msg(mahdi, phplua, ok_cb, true) 
end 
end 

return { 
    patterns = { 
    "^(قفل الوسائط)$", 
    "^(فتح الوسائط)$", 
  }, 
run = run, 
    pre_process = pre_process 
} 

end 
