--[[ 
--]] 
do 

local function pre_process(msg) 
    local hash = 'mate:'..msg.to.id 
    if redis:get(hash) and msg.fwd_from and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg)  then 
            delete_msg(msg.id, ok_cb, true) 
            return "done" 
        end 
        return msg 
    end 

local function moody(msg, matches) 
    chat_id =  msg.to.id 
    if is_momod(msg) and matches[1] == 'قفل التوجيه' then 
                    local hash = 'mate:'..msg.to.id 
                    redis:set(hash, true) 
                    return "ټـہۛஓہـۛمـ͜ﮩ͞₍🌚₎ﮩـ   ِِ✔🔰 ✾❣قہٍّْـٍّْ﴿🔐﴾ٍّْـفہلٍٍّّْْ❣✾ ألـﮩﮨہٰٰہٰتہٍِـِۣـّ̐ہٰوُجـﮩ๋͜ﮧـ͜ާْيــ๋͜ہٌۤـہًّٰٰه" 
  elseif is_momod(msg) and matches[1] == 'فتح التوجيه' then 
      local hash = 'mate:'..msg.to.id 
      redis:del(hash) 
      return "ټـہۛஓہـۛمـ͜ﮩ͞₍🌚₎ﮩـ  ِِ ✾❣فہٍّْـٍّْ﴿🔓﴾ٍّْـتہح❣✾ألـﮩﮨہٰٰہٰتہٍِـِۣـّ̐ہٰوُجـﮩ๋͜ﮧـ͜ާْيــ๋͜ہٌۤـہًّٰٰه✔🔰" 
end 

end 

return { 
    patterns = { 
        '^(قفل التوجيه)$', 
        '^(فتح التوجيه)$', 
        '^[/!#](قفل التوجيه)$', 
        '^[/!#](فتح التوجيه)$' 
    }, 
run = run, 
pre_process = pre_process 
} 
end 

