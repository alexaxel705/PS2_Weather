﻿local WeatherArr = {
	["Los Santos"] = {0,1,2,3,4},
	["San Fierro"] = {5,6,7,8,9},
	["Las Venturas"] = {10,11,12},
	["Red County"] = {13,14,15,16},
	["Whetstone"] = {13,14,15,16},
	["Flint County"] = {13,14,15,16},
	["Bone County"] = {17,18,19},
	["Tierra Robada"] = {17,18,19},
	["UNDERWATER"] = {20},
	["Unknown"] = {21, 22}, 
	["Vice City"] = {23,24,25,26,27,28}, 
	["Liberty City"] = {29,30,31,32}
}

local CurrentWeather = {
	["Los Santos"] = nil,
	["San Fierro"] = nil,
	["Las Venturas"] = nil,
	["Red County"] = nil,
	["Whetstone"] = nil,
	["Flint County"] = nil,
	["Bone County"] = nil,
	["Tierra Robada"] = nil,
	["UNDERWATER"] = nil,
	["Unknown"] = nil, 
	["Vice City"] = nil, 
	["Liberty City"] = nil, 
}


function NewWeather()
	for name, k in pairs(WeatherArr) do
		CurrentWeather[name] = WeatherArr[name][math.random(#WeatherArr[name])]
	end
	setElementData(root, "weather", toJSON(CurrentWeather))
	
	for _,thePlayer in ipairs(getElementsByType("player")) do 
		triggerClientEvent(thePlayer, "GameSky", thePlayer, false, true)
	end
end
addEvent("NewWeather", true)
addEventHandler("NewWeather", root, NewWeather)



function preLoad()
	NewWeather()
end
addEventHandler("onResourceStart", getResourceRootElement(), preLoad)



local Cheat_Weather = {
	["afzllqll"] = 1, 
	["icikpyh"] = 0, 
	["auifrvqs"] = 8, 
	["mghxyrm"] = 16, 
	["alnsfmzo"] = 4, 
	["cfvfgmj"] = 7, 
	["cwjxuoc"] = 19, 
}


function CheatWeather(zone, cheat)
	CurrentWeather[zone] = Cheat_Weather[cheat]
	setElementData(root, "weather", toJSON(CurrentWeather))
	
	for _,thePlayer in ipairs(getElementsByType("player")) do 
		triggerClientEvent(thePlayer, "GameSky", thePlayer, false, false)
	end
end
addEvent("CheatWeather", true)
addEventHandler("CheatWeather", root, CheatWeather)








