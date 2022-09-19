ToDo = 1 -- Put your number here!



local function split(x,y)
  local table_A = {}
  local passed = 0 
  local last = 1
  for i=1,#x,1 do 
    if x:sub(i,i) == y then
      table.insert(table_A,x:sub(last,last+passed-1))
      last = i+1
      passed = 0
    elseif i == #x then 
      table.insert(table_A,x:sub(last,last+passed))
      last = i+1
      passed = 0
    else
      passed = passed + 1 
    end
  end
  return table_A
end

local function powerOf(x,y)
  local a = 1
  local t = (y<0) and true or (y>=1) and false
  if t == true then 
    for i=1,y,1 do 
      a=a/10
    end
  elseif t == false then 
    for i=1,y-1,1 do 
      a=a*10
    end
  end
  return x*a
end

local science = {
  scientificNotation = function(num)
    local snum = tostring(num)
    local numzero = 0
    local result = ""
    local last_ = 0
    for i=1,#snum,1 do 
      v = snum:sub(i,i)
      if v == "0" and not i == #snum then
        numzero = numzero + 1
      elseif v == "0" and i == #snum then
      elseif v == "." then
        last_ = i
      else 
        for a = 1,numzero,1 do
          result = result .. "0"
        end
        numzero = 0
        result = result .. v
        if i == 1 then
          result = result .. "."
        end
      end 
    end
    local b = tonumber(result)
    local a
    for i=1,#result,1 do 
      if result:sub(i,i) == "." then
        a = last_-(i)
        if a < 1 then
          a = -a
        end
      end 
    end
    if num < 1 then
      result = result .. "*10*-" .. a
    elseif num > 1 then
      result = result .. "*10*" .. a
    end
    return result, b
  end,
  addNotation = function(x,y)
    local a 
    local b
    local temp = split(x,"*")
    local temp2 = 10
    a = tonumber(temp[1])
    for i=2,tonumber(temp[3]),1 do 
      temp2 = temp2*10
    end
    a=a*temp2
    temp2 = 10 
    temp = split(y,"*")
    b = tonumber(temp[1])
    for i=2,tonumber(temp[3]),1 do 
      temp2 = temp2*10
    end
    b = b * temp2
    local na = tostring(a)
    local nb = tostring(b)
    local na1 = 1
    local nb1 = 1
    local t,x = string.find(na,".")
    local na2 = (t==1) and true or false
    if na2 == true then 
      for i=1,#na,1 do 
        if na:sub(i,i) == "." then 
          na1 = i
        end
      end
    else
      na1 = #na
    end
    local j,h = string.find(nb,".")
    local nb2 = (j==1) and true or false 
    print(nb2)
    if nb2 == true then
      for i=1,#nb,1 do 
        if nb:sub(i,i) == "." then 
          nb1 = i
        end
      end
    else
      nb1 = #nb
    end
    print("NA: ", na1, "\nNB: ",nb1)
  end,
}
local a = science.scientificNotation(ToDo)
print(a)
