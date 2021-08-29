
FILES = 
FILES += '!Enable the AI'
FILES += '[Library]'
FILES += 'Cursor/Get Cursor Position'

FILES += 'Main'

FILES += 'Tower/Home'

FILES += 'Factory/Home'
FILES += 'Factory/_Buy Them All'
FILES += 'Factory/_Make Dust'
FILES += 'Factory/_Make One Dust'

FILES += 'Mine/Home'
FILES += 'Mine/_Mine One Tab'

FILES += 'Trade/Home'

FILES += 'Cursor/Click 8 Times'
FILES += 'Cursor/Click Click'
FILES += 'Cursor/Slow Click 64 times'

FILES += '!Delete the AI'

build:
	@ cd scripts && ../lib/perfect-tower-ai-compiler $(FILES)
