return {
	"ms-jpq/coq_nvim",
	branch = "coq",
	lazy = true,
	enabled = false,
	dependencies = {
		{
			"ms-jpq/coq.artifacts",
			branch = "artifacts",
		},
		{
			"ms-jpq/coq.thirdparty",
			branch = "3p",
		},
	},
}