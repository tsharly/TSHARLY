
kicktable = {} 

do 

local DEV_NOVAR = 2 -- seconds 
-- Save stats, ban user 
local function pre_process(msg) 
  -- Ignore service msg 
  if msg.service then 
    return msg 
  end 
  if msg.from.id == our_id then 
    return msg 
  end 
    -- Save user on Redis 
  if msg.from.type == 'user' then 
    local hash = 'user:'..msg.from.id 
    print('Saving user', hash) 
    if msg.from.print_name then 
      redis:hset(hash, 'print_name', msg.from.print_name) 
    end 
    if msg.from.first_name then 
      redis:hset(hash, 'first_name', msg.from.first_name) 
    end 
    if msg.from.last_name then 
      redis:hset(hash, 'last_name', msg.from.last_name) 
    end 
  end 

  -- Save stats on Redis 
  if msg.to.type == 'chat' then 
    -- User is on chat 
    local sofe = 'chat:'..msg.to.id..':users' 
    redis:sofe(sofe, msg.from.id) 
  end 

  -- Save stats on Redis 
  if msg.to.type == 'channel' then 
    -- User is on channel 
    local sofe = 'channel:'..msg.to.id..':users' 
    redis:sofe(sofe, msg.from.id) 
  end 
  if msg.to.type == 'user' then 
    -- User is on chat 
    local sofe = 'PM:'..msg.from.id 
    redis:sofe(sofe, msg.from.id) 
  end 

  -- Total user msgs 
  local sofe = 'msgs:'..msg.from.id..':'..msg.to.id 
  redis:incr(sofe) 

  --Load moderation data 
  local data = load_data(_config.moderation.data) 
  if data[tostring(msg.to.id)] then 
    --Check if flood is on or off 
    if data[tostring(msg.to.id)]['settings']['flood'] == 'no' then 
      return msg 
    end 
  end 

  -- Check flood 
  if msg.from.type == 'user' then 
    local sofe = 'user:'..msg.from.id..':msgs' 
    local msgs = tonumber(redis:get(sofe) or 0) 
    local data = load_data(_config.moderation.data) 
    local dev_novar = 5 
    if data[tostring(msg.to.id)] then 
      if data[tostring(msg.to.id)]['settings']['flood_msg_max'] then 
        dev_novar = tonumber(data[tostring(msg.to.id)]['settings']['flood_msg_max'])--Obtain group flood sensitivity 
      end 
    end 
    local max_msg = dev_novar * 1 
    if msgs > max_msg then 
     local user = msg.from.id 
     local chat = msg.to.id 
     local whitelist = "whitelist" 
     local is_whitelisted = redis:sismember(whitelist, user) 
      -- Ignore mods,owner and admins 
      if is_momod(msg) then 
        return msg 
      end 
     if is_whitelisted == true then 
      return msg 
     end 
     local receiver = get_receiver(msg) 
     if msg.to.type == 'user' then 
      local max_msg = 7 * 1 
      print(msgs) 
      if msgs >= max_msg then 
         print("Pass2") 
      send_large_msg("user#id"..msg.from.id, "📑️ |  مـمـنـوع الـتـكـرار |❌ "..msg.from.first_name.."\n🌐️ | بـسـبـب تـكـرار النـشـر |📛\n🖨️️ | تم حظرك تلقائيأ \n🔰️ | مـعـرفـك |📑 : @"..(msg.from.username or "لا يوجد " ).."\n💮️ | الــقــنــاه |🔰 : @DEV_NOVAR ") 
         savelog(msg.from.id.." PM", "📑️ |  مـمـنـوع الـتـكـرار |❌ "..msg.from.first_name.."\n🌐️ | بـسـبـب تـكـرار النـشـر |📛\n🖨️️ | تم حظرك تلقائيأ \n🔰️ | مـعـرفـك |📑 : @"..(msg.from.username or "لا يوجد " ).."\n💮 | الــقــنــاه |🔰 : @DEV_NOVAR ") 
         block_user("user#id"..msg.from.id,ok_cb,false)--Block user if spammed in private 
      end 
      end 
     if kicktable[user] == true then 
      return 
     end 
     delete_msg(msg.id, ok_cb, false) 
     kick_user(user, chat) 
     local username = msg.from.username 
     local print_name = user_print_name(msg.from):gsub("‮", "") 
     local name_log = print_name:gsub("_", "") 
     if msg.to.type == 'chat' or msg.to.type == 'channel' then 
      if username then 
         savelog(msg.to.id, name_log.." @"..username.." ["..msg.from.id.."] kicked for #spam") 
send_large_msg(receiver , "📛 |  مـمـنـوع الـتـكـرار |❌ "..msg.from.first_name.."\n️🔰 | بـسـبـب تـكـرار النـشـر |📛\n🌐 | تم حظرك من الـمـجـمـوعـه تلقائيأ \n♻️️ | عـبـر حـمـايـه الــبوت |✔️ \n️📃 | مـعـرف الــعــضــو |✅ : @"..(msg.from.username or "لا يوجد " ).."\n📝 | الــقــنــاه |📌 : @DEV_NOVAR ") 
      else 
         savelog(msg.to.id, name_log.." ["..msg.from.id.."] kicked for #spam") 
send_large_msg(receiver , "️📛 |  مـمـنـوع الـتـكـرار |❌ "..msg.from.first_name.."\n🔰️ | بـسـبـب تـكـرار النـشـر |📛\n🌐️ | تم حظرك من الـمـجـمـوعـه تلقائيأ \n♻️ | عـبـر حـمـايـه الــبوت |✔️\n📃️ | مـعـرف الــعــضــو |✅ : @"..(msg.from.username or "لا يوجد " ).."\n📝️ | الــقــنــاه |📌 : @DEV_NOVAR ") 
      end 
     end 
      -- incr it on redis 
      local gbanspam = 'gban:spam'..msg.from.id 
      redis:incr(gbanspam) 
      local gbanspam = 'gban:spam'..msg.from.id 
      local gbanspamonredis = redis:get(gbanspam) 
      --Check if user has spammed is group more than 4 times 
      if gbanspamonredis then 
        if tonumber(gbanspamonredis) ==  4 and not is_owner(msg) then 
          --Global ban that user 
          banall_user(msg.from.id) 
          local gbanspam = 'gban:spam'..msg.from.id 
          --reset the counter 
          redis:set(gbanspam, 0) 
          if msg.from.username ~= nil then 
            username = msg.from.username 
        else 
         username = "---" 
          end 
          local print_name = user_print_name(msg.from):gsub("‮", "") 
        local name = print_name:gsub("_", "") 
          --Send this to that chat 
          send_large_msg("chat#id"..msg.to.id, "User [ "..name.." ]"..msg.from.id.." globally banned (spamming)") 
        send_large_msg("channel#id"..msg.to.id, "User [ "..name.." ]"..msg.from.id.." globally banned (spamming)") 
          local GBan_log = 'GBan_log' 
        local GBan_log =  data[tostring(GBan_log)] 
        for k,v in pairs(GBan_log) do 
         log_SuperGroup = v 
         gban_text = "User [ "..name.." ] ( @"..username.." )"..msg.from.id.." Globally banned from ( "..msg.to.print_name.." ) [ "..msg.to.id.." ] (spamming)" 
         --send it to log group/channel 
         send_large_msg(log_SuperGroup, gban_text) 
        end 
        end 
      end 
      kicktable[user] = true 
      msg = nil 
    end 
    redis:setex(sofe, dev_novar, msgs+1) 
  end 
  return msg 
end 

local function sofe() 
  --clear that table on the top of the plugins 
   kicktable = {} 
end 

return { 
  patterns = {}, 
  sofe = sofe, 
  pre_process = pre_process 
} 

end 
