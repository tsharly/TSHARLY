
do 

local function pre_process(msg) 
    local hash = 'mate:'..msg.to.id 
    if redis:get(hash) and msg.fwd_from and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg)  then 
            delete_msg(msg.id, ok_cb, true) 
            return "done" 
        end 
        return msg 
    end 

local function taha(msg, matches) 
    chat_id =  msg.to.id 
    if is_momod(msg) and matches[1] == 'قفل التوجيه' then 
                    local hash = 'mate:'..msg.to.id 
                    redis:set(hash, true) 
                    return "تم قفل اعاده توجيه في المجموعه🚩🔒"
  elseif is_momod(msg) and matches[1] == 'فتح التوجيه' then 
      local hash = 'mate:'..msg.to.id 
      redis:del(hash) 
      return "تم فتح اعاده توجيه في المجموعه 🚩�🔒"
end 

end 

return { 
    patterns = { 
        '^(قفل التوجيه)$', 
        '^(فتح التوجيه)$', 
        '^[/!#](قفل التوجيه)$', 
        '^[/!#](فتح التوجيه)$' 
    }, 
run = taha, 
pre_process = pre_process 
} 
end 
