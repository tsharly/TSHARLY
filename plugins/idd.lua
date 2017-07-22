--by-taha 
do 

local function run(msg, matches) 
if matches[1] == "ايدي" then 
   return "You Username 🎄️ : @"..msg.from.username.."\n".."You id 🀄 :  "..msg.from.id.."\n".."Group Name ✅  "..msg.to.title.."\n".."➖➖➖➖➖➖".."\n".."💛 ( "..os.date().." )" 

end 
end 

return { 
  patterns = { 
       "^(ايدي)$", 
  }, 
  run = run, 
} 

end 
