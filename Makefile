
FILES = 
FILES += '[Library]'
FILES += '!Enable the AI'

FILES += 'Master Mind'

FILES += 'Tower From Home'
FILES += 'Trade From Home'

FILES += 'Factory/Home'
FILES += 'Factory/_Buy Them All'
FILES += 'Factory/_Make Dust'
FILES += 'Factory/_Make One Dust'

FILES += 'Mine From Home'
FILES += '_Mine One Tab'

FILES += 'Get Cursor Position'
FILES += 'Click 8 Times'
FILES += 'Click Click'
FILES += 'Slow Click 64 times'

FILES += '!Delete the AI'

build:
	@ cd scripts && ../lib/perfect-tower-ai-compiler $(FILES)
