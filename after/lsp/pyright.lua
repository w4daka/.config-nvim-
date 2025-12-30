return{
	cmd = {'pyright-langsever' , '--stdio'},
	filetypes = {'python'},
	settings = {
	python = {
		analysis ={
			autoSearchPaths = true,
			useLibraryCodeForTypes = true,
			diagnosticMode = 'openFilesOnly',
			typeCheckingMode = 'basic',
			},
		},
	},
}
