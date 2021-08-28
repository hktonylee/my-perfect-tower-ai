
FILES = 
FILES += '[Library]'
FILES += '!Enable the AI'

FILES += 'Master Mind'

FILES += 'Tower From Home'
FILES += 'Trade From Home'

FILES += 'Factory From Home'
FILES += '_Factory Buy Them All'
FILES += '_Factory Make Dust'
FILES += '_Factory Make One Dust'

FILES += 'Mine From Home'
FILES += '_Mine One Tab'

FILES += 'Get Cursor Position'
FILES += 'Click 8 Times'
FILES += 'Click Click'
FILES += 'Slow Click 64 times'

FILES += '!Delete the AI'

build:
	@ cd scripts && ../perfect-tower-ai-compiler/perfect-tower-ai-compiler $(FILES)
