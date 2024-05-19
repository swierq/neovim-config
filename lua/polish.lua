local function yaml_ft(path, bufnr)
	-- get content of buffer as string
	local content = vim.filetype.getlines(bufnr)
	if type(content) == "table" then
		content = table.concat(content, "\n")
	end

	-- check if file is in roles, tasks, or handlers folder
	local path_regex = vim.regex("(tasks\\|roles\\|handlers)/")
	if path_regex and path_regex:match_str(path) then
		return "yaml.ansible"
	end
	-- check for known ansible playbook text and if found, return yaml.ansible
	local regex = vim.regex("hosts:\\|tasks:")
	if regex and regex:match_str(content) then
		return "yaml.ansible"
	end

	-- return yaml if nothing else
	return "yaml"
end

vim.filetype.add({
	extension = {
		templ = "templ",
		yml = yaml_ft,
		yaml = yaml_ft,
	},
	filename = {
		["Jenkinsfile"] = "groovy",
	},
})

vim.api.nvim_create_user_command(
	"Aen",
	"!ansible-vault encrypt %",
	{ bang = true, desc = "Encrypt file with ansible-vault" }
)

vim.api.nvim_create_user_command(
	"Ade",
	"!ansible-vault decrypt %",
	{ bang = true, desc = "Encrypt file with ansible-vault" }
)

vim.opt.spelllang = "en_us"
vim.opt.spell = true

-- vim.filetype.add({
-- 	extension = {
-- 		yml = yaml_ft,
-- 		yaml = yaml_ft,
-- 	},
-- })
