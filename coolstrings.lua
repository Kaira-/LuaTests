--[[
Function definitions
--]]
function getChar(char, line)
	--[[
	this might take a while, going through character at a time
	--]]
	if char == 'A' then
		if line == 1 then return "  AA    ";
		elseif line == 2 or line == 4 or line == 5 then return "AA  AA  ";
		else return "AAAAAA  ";
		end;
	elseif char == 'B' then
		if line == 1 or line == 3 or line == 5 then return "BBBBB   ";
		else return "BB  BB  ";
		end;
	elseif char == 'C' then
		if line == 1 or line == 5 then return " CCCC   ";
		elseif line == 2 or line == 4 then return "CC  CC  ";
		else return "CC      ";
		end;
	elseif char == 'D' then
		if line == 1 or line == 5 then return "DDDDD   ";
		else return "DD  DD  ";
		end;
	elseif char == 'E' then
		if line == 1 or line == 3 or line == 5 then return "EEEEE  ";
		else return "EE     ";
		end;
	elseif char == 'F' then
		if line == 1 or line == 3 then return "FFFFF  ";
		else return "FF     ";
		end;
	elseif char == 'G' then
		if line == 1 then return " GGGGG   ";
		elseif line == 2 then return "GG       ";
		elseif line == 3 then return "GG  GGG  ";
		elseif line == 4 then return "GG   GG  ";
		else return " GGGGG   ";
		end;
	elseif char == 'H' then
		if line == 3 then return "HHHHHH  ";
		else return "HH  HH  ";
		end;
	elseif char == 'I' then return "II  ";
	elseif char == 'J' then
		if line == 1 or line == 2 then return "    JJ  ";
		elseif line == 3 or line == 4 then return "JJ  JJ  ";
		else return " JJJJ   ";
		end;
	elseif char == 'K' then
		if line == 1 or line == 5 then return "KK  KK  ";
		elseif line == 2 or line == 4 then return "KK KK   ";
		else return "KKK     ";
		end;
	elseif char == 'L' then
		if line == 1 or line == 2 or line == 3 then return "LL      ";
		elseif line == 4 then return "LL  LL  ";
		else return "LLLLLL  ";
		end;
	elseif char == 'M' then
		if line == 2 then return "MMM  MMM  ";
		elseif line == 3 then return "MM MM MM  ";
		else return "MM    MM  ";
		end;
	elseif char == 'N' then
		if line == 2 then return "NNN NN  ";
		elseif line == 3 then return "NN NNN  ";
		else return "NN  NN  ";
		end;
	elseif char == 'O' then
		if line == 1 or line == 5 then return " OOOO   ";
		else return "OO  OO  ";
		end;
	elseif char == 'P' then
		if line == 1 or line == 3 then return "PPPPP   ";
		elseif line == 2 then return "PP  PP  ";
		else return "PP      ";
		end;
	elseif char == 'Q' then
		if line == 1 then return " QQQQ    ";
		elseif line == 4 then return "QQ  QQQ  ";
		elseif line == 5 then return " QQQQ Q  ";
		else return "QQ   QQ  ";
		end;
	elseif char == 'R' then
		if line == 1 or line == 3 then return "RRRRR   ";
		else return "RR  RR  ";
		end;
	elseif char == 'S' then
		if line == 1 or line == 3 or line == 5 then return " SSSS   ";
		elseif line == 2 then return "SS   S  ";
		else return "S  SS   ";
		end;
	elseif char == 'T' then
		if line == 1 then return "TTTTTT  ";
		else return "  TT    ";
		end;
	elseif char == 'U' then
		if line == 5 then return " UUUU   ";
		else return "UU  UU  ";
		end;
	elseif char == 'V' then
		if line == 1 then return "VV     VV  ";
		elseif line == 2 then return " VV   VV   ";
		elseif line == 3 then return "  VV VV    ";
		elseif line == 4 then return "   VVV     ";
		else return "    V      ";
		end;
	elseif char == 'W' then
		if line == 1 or line == 2 or line == 3 then return "WW WWW WW  ";
		else return " WW   WW   ";
		end;
	elseif char == 'X' then
		if line == 1 or line == 5 then return "XX   XX  ";
		elseif line == 2 or line == 4 then return " XX XX   ";
		else return "  XXX    ";
		end;
	elseif char == 'Y' then
		if line == 1 then return "YY  YY  ";
		elseif line == 2 then return " YYYY   ";
		else return "  YY    ";
		end;
	elseif char == 'Z' then
		if line == 2 then return "    ZZ   ";
		elseif line == 3 then return "  ZZ     ";
		elseif line == 4 then return " ZZ      ";
		else return "ZZZZZZZ  ";
		end;
	end;
end;
	
--[[
executing block goes here
--]]
if (arg[1] == nil) then
	print("Coolstrings help: to run, use \"lua coolstrings.lua <inputstring>\"");
	print("No params given, exiting...\n");
else
	local s = arg[1];
	str = string.upper(s);
	local tokens = {};
	s = "";
	for token in str:gmatch("%S+") do table.insert(tokens, token) end;
	for i = 1,5 do
		for index, value in pairs(tokens) do
			for j = 1, #value do
				local c = value:sub(j,j);
				s = s .. getChar(c, i);
			end;
		print(s);
		s = "";
		end;
	end;
end;

