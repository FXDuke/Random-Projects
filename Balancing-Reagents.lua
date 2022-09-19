
--[[
How to use:

Scroll to the bottom,
Set Parameters,
set("B=1.2")
set("A=3.2")
Run the equation,
run("9A + 7B --> 2C + 3D")
And you get your result!

]]
local reaction = {}
local result = {}
local final = nil



SR = function(pos,elem,amount,mol)
  local set_already = false
  for _,v in pairs(reaction) do
    if v.Element == elem then
      set_already = true
    end 
  end
  if set_already then 
    for _,v in pairs(reaction) do
      if v.Element == elem then 
          v.Position = pos
          v.Amount = amount
          v.Mols = mol
      end
    end
  else
    table.insert(reaction, {Position=pos,Element=elem,Amount=amount,start=nil,left=0,convrt=0,Mols=mol,
     conv = function(new)
        return mol*(new/amount)
      end
    })
  end
end


SC = function(pos,elem,amount)
  local set_already = false
  for _,v in pairs(result) do
    if v.Element == elem then
      set_already = true
    end 
  end
  if set_already then 
    for _,v in pairs(result) do
      if v.Element == elem then 
          v.Position = pos
          v.Amount = amount
      end
    end
  else
    table.insert(result, {Position=pos,Element=elem,Amount=amount,fin=0,
       conv = function(new,cc)
        return cc*(new/amount)
      end
    })
  end
end


finalize = function()

  -- Start Variables

  local pos_mnt = 0
  local res_mnt = 0
  local smallest = 0 

  -- Define how many things are needed

  for i,v in pairs(reaction) do
    if v.Position > pos_mnt then 
      pos_mnt = v.Position
    end
  end
  for i,v in pairs(result) do
    if v.Amount > smallest then 
      smallest = v.Amount + 1 
    end
    if v.Position > res_mnt then 
      res_mnt = v.Position
    end
  end
  
  -- Find Answers

  local start = ""
  local am_start = 0

  for _,v in pairs(result) do
    if v.Amount < smallest then 
      smallest = v.Amount
      start = v.Element
      am_start = v.Amount
    end
  end

  local res = 0
  
  for _,v in pairs(reaction) do 
    for k,z in pairs(result) do 
      if z.Element == start then 
        v.convrt = v.conv(z.Amount)
        v.start = start
        if res == 0 then 
          res = v.convrt
        else
          if res > v.convrt then 
            res = v.convrt
          end
        end
      end
    end
  end

  for _,v in pairs(reaction) do 
    if v.convrt ~= res then
      v.left = (v.convrt-res)*(v.Amount / am_start)
      v.convrt = v.convrt - res 
    else
      v.left = 0 
    end
  end

  for i,v in pairs(result) do 
    if v.Element ~= start then 
      v.fin = v.conv(smallest,res)
    else 
      v.fin = res
    end
  end

  -- Build Result

  local conversion = {}
  local ratio = {}
  local answers = {}
  local equation = ""

  for i,v in pairs(reaction) do 
    table.insert(conversion, {text=(v.Mols .. " mols " .. v.Element .. " * (" .. smallest .. start .. " / " .. v.Amount .. v.Element .. ") = " .. v.convrt .. " mols " .. start)})
    table.insert(answers, {text=("Mols " .. v.Element .. " = " .. v.left)})
    if i == #reaction then
      equation = equation .. v.Amount .. v.Element .. " ---> "
    else
     equation = equation .. v.Amount .. v.Element .. " + "
    end
    
  end

  for i,v in pairs(result) do 
    table.insert(answers, {text=("Mols " .. v.Element .. " = " .. v.fin)})
    if i == #result then 
      equation = equation .. v.Amount .. v.Element .. "\n\nStart Amounts:\n"
    else
      equation = equation .. v.Amount .. v.Element .. " + "
    end
  end

  for i,v in pairs(reaction) do 
    equation = equation .. "\nMols " .. v.Element .. " = " .. v.Mols 
  end
  

  for k,z in pairs(result) do 
    if z.Element ~= start then 
       table.insert(ratio, {text=(res .. " mols " .. start .. " * (" .. z.Element .. z.Amount .. " / " .. smallest .. start .. ") = " .. z.fin .. " mols " .. z.Element)})
    end
  end

  -- Print Result

  print("--------------------------------------------------")
  print("\nEquation:\n")
  print(equation)
  print("\nConversions:\n")
  for i,v in pairs(conversion) do 
    print(v.text)
  end
  print("\n")
  if #ratio > 0 then 
    print("Ratio Conversions: \n")
  end
  for i,v in pairs(ratio) do 
    print(v.text)
  end
  print("\nAnswers: \n")
  for i,v in pairs(answers) do 
    print(v.text)
  end
  print("\n--------------------------------------------------")
end

clear = function()
  for i = 0,#reaction do 
    print(reaction[i+1].Element)
    table.remove(reaction, i)
  end
  for i = 0,#result do
  print(result[i+1].Element)
   table.remove(result, i) 
  end
  print("\nCleared.\n")
end


local fin_sep = {}
local fin_res = {}



test = "5B + 9R ---> 3V + 1P"

fin = {}

num = {}
for i = 0,10 do 
  num[tostring(i)] = true
end



run = function(str)
  for i = 1,#str do
    local jum = string.char(string.byte(str, i))
    if jum == " " or jum == "-" or jum == "+" then
      table.insert(fin, {text="_"})
    else
      table.insert(fin, {text=jum})
    end
  end
  table.insert(fin, {text="_"})

  local last = ""
  local seperate = {}
  local result = {}
  local in_result = false
  local on = 0

  for i,v in pairs(fin) do 
    if v.text == "_" then 
      if last ~= "" then
        on = on + 1
        if in_result then 
          table.insert(result, {text=last,pos=on})

          last = ""
          
        else
          table.insert(seperate, {text=last,pos=on})

          last = ""
        end
      end
    elseif v.text == ">" then
      in_result = true
      on = 0
    else
      if v.text ~= nil then
        last = last .. v.text
      end
    end
  end

  

  for i,v in pairs(seperate) do 
    local element = ""
    local amount = 1
    for i = 1,#v.text do 
      local jum = string.char(string.byte(v.text, i))
      local e = num[jum]
      if e then
        amount = jum
      else 
        element = element .. jum
      end
    end
    table.insert(fin_sep, {elem=element,am=amount,pos=v.pos})
  end

  for i,v in pairs(result) do 
    local element = ""
    local amount = 1
    for i = 1,#v.text do 
      local jum = string.char(string.byte(v.text, i))
      local e = num[jum]
      if e then
        amount = jum
      else 
        element = element .. jum
      end
    end
    table.insert(fin_res, {elem=element,am=amount,pos=v.pos})
  end

  for i,v in pairs(fin_sep) do 
    table.insert(fin, {elem=v.elem,am=v.am,pos=v.pos,res=false,mol=0})
  end

  for i,v in pairs(fin_res) do 
    table.insert(fin, {elem=v.elem,am=v.am,pos=v.pos,res=true,mol=0})
  end
end

mols = {}

set = function(str) 
  local first = ""
  local num = 0
  local onnum = false
  for i = 1,#str do 
    local jum = string.char(string.byte(str, i))
    if jum == " " then 
    elseif jum == "=" then 
      onnum = true
    else
      if onnum then 
        if jum == "." then
          num = num .. jum
        else
         num = num .. jum
        end
      else
        first = first .. jum
      end
    end
  end
  num = tonumber(num)
  table.insert(mols, {mols=num,element=first})
end

finfunc = function()
  for _,v in pairs(fin) do 
    for k,z in pairs(mols) do 
      if v.elem == z.element and v.res == false then
        v.mol = z.mols
      end
    end
  end

  for _,v in pairs(fin) do 
    if v.pos ~= nil then
      if v.res then 
        SC(v.pos, v.elem, tonumber(v.am))
      else
        SR(v.pos, v.elem, tonumber(v.am), v.mol)
      end
    end
  end
  finalize()
end

set("B=1.2")
set("A=3.2")
run("9A + 7B --> 2C + 3D")
finfunc()
