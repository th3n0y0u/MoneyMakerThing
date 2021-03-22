
--// ROBLOX LUA
local moneyadded = script.Parent:FindFirstChild("MoneyAdded")
local debounce = false

script.Parent.Touched:Connect(function(hit)
	local player = game.Players:GetPlayerFromCharacter(hit.Parent)
	if debounce == false then
		debounce = true
	     if player then
			player.leaderstats.Money.Value += moneyadded.Value
		end
		wait(60)
		debounce = false
	end
end)