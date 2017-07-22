
local function TAHAJ20(msg,matches) 
local TAHA = matches[2] 
return TAHA 
end 

  return  { 
    patterns = { 
      "^(كول)(.+)", 
       "^(اكول)(.+)", 
        "^(يكول)(.+)", 
}, 
  run = TAHAJ20, 
} 
