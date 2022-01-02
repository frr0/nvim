local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local hide_in_width = function()
	return vim.fn.winwidth(0) > 80
end

local colors = {
    bg = "#292D38",
    yellow = "#DCDCAA",
    dark_yellow = "#D7BA7D",
    cyan = "#4EC9B0",
    green = "#608B4E",
    light_green = "#B5CEA8",
    string_orange = "#CE9178",
    orange = "#FF8800",
    purple = "#C586C0",
    magenta = "#D16D9E",
    grey = "#858585",
    blue = "#569CD6",
    vivid_blue = "#4FC1FF",
    light_blue = "#9CDCFE",
    red = "#D16969",
    error_red = "#F44747",
    info_yellow = "#FFCC66"
}

--lualine.left[1] = {
    --ViMode = {
        --provider = function()
            ---- auto change color according the vim mode
            --local mode_color = {
                --n = colors.blue,
                --i = colors.green,
                --v = colors.purple,
                --V = colors.purple,
                --c = colors.magenta,
                --no = colors.blue,
                --s = colors.orange,
                --S = colors.orange,
                --ic = colors.yellow,
                --R = colors.red,
                --Rv = colors.red,
                --cv = colors.blue,
                --ce = colors.blue,
                --r = colors.cyan,
                --rm = colors.cyan,
                --["r?"] = colors.cyan,
                --["!"] = colors.blue,
                --t = colors.blue
            --}
            --vim.api.nvim_command(
                --mode_color[vim.fn.mode()] and "hi GalaxyViMode guifg=" .. mode_color[vim.fn.mode()] or ""
            --)
            --return "▊ "
        --end,
        --highlight = {colors.red, colors.bg}
    --}
--}

local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
	colored = true,
	update_in_insert = false,
	always_visible = true,
}

local diff = {
	"diff",
	colored = true,
	symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols   
  cond = hide_in_width
}

local mode = {
	"mode",
	fmt = function(str)
		return "-- " .. str .. " --"
	end,
}

local filetype = {
	"filetype",
	icons_enabled = false,
	icon = nil,
}

local branch = {
	"branch",
	icons_enabled = true,
	icon = "",
}

local location = {
	"location",
	padding = 0,
}

-- cool function for progress
local progress = function()
	local current_line = vim.fn.line(".")
	local total_lines = vim.fn.line("$")
  local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
	local line_ratio = current_line / total_lines
  local index = math.ceil(line_ratio * #chars)
  return chars[index]
end

local spaces = function()
	return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
		always_divide_middle = true,
	},
	sections = {
		lualine_a = { branch, diff, diagnostics },
		lualine_b = { mode },
		lualine_c = {},
		-- lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_x = { spaces, "encoding", filetype },
		lualine_y = { location },
    lualine_z = { progress },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
})
