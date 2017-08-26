--by-taha 
do 

local function run(msg, matches) 
if matches[1] == "ايدي" then 
   return "معرفك 🎄️ : @"..msg.from.username.."\n".."ايديك 🀄 :  "..msg.from.id.."\n".."اسم المجوعه ✅  "..msg.to.title.."\n".."➖➖➖➖➖➖".."\n".."💛 ( "..os.date().." )" 

end 
end 

return { 
  patterns = { 
       "^(ايدي)$", 
  }, 
  run = run, 
} 

end 
