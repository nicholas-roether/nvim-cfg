local mason_registry = require("mason-registry")

local function config(opts)
	local install_path = mason_registry.get_package("jdtls"):get_install_path()
	local home = os.getenv("HOME")
	opts.cmd = {
		"jdtls",
		"--jvm-arg=-javaagent:" .. install_path .. "/lombok.jar",
		"-configuration",
		home .. "/.cache/jdtls/config",
		"-data",
		home .. "/.cache/jdtls/workspace"
	}
end

return config
