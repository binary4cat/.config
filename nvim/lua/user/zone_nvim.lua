local ok, zone = pcall(require, "zone")
if not ok then
	print("zone.nvim not installed!")
	return
end

zone.setup({
	style = "epilepsy",
	after = 30, -- Idle timeout
	-- More options to come later

	treadmill = {
		direction = "left",
		-- Opts for Treadmill style
	},
	epilepsy = {
		stage = "ictal", -- "aura" or "ictal"
		-- etc.
	},
	dvd = {
		-- Opts for Dvd style
	},
	-- etc
})
