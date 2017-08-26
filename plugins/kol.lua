
local function TAHAJ20(msg,matches) 
local taha = matches[2] 
return taha 
end 

  return  { 
    patterns = { 
      "^(كول)(.+)", 
       "^(اكول)(.+)", 
        "^(يكول)(.+)", 
}, 
  run = TAHAJ20, 
} 
