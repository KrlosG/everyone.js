FileLoader = require './utils/FileLoader'

argv = require('optimist').argv

Images = require './Images'
Forms = require './Forms'

if(argv.h || argv.help)
	help = "usage: loadFile.js [-h] [--help] [file]"
	
	console.log help
	
	process.exit(0)

strInputFile = argv._[0]

# init tasks
imgAnalyzer = new Images.ImgAnalyzer
inputAnalyzer = new Forms.InputAnalyzer

# init file loader and provide analysis tasks
fileLoader = new FileLoader.FileLoaderUtility strInputFile, [imgAnalyzer, inputAnalyzer]
