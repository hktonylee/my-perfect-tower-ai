
FILES = 
FILES += '!Enable the AI'
FILES += '[Library]'
FILES += 'Factory/[CraftMagic]'
FILES += 'Cursor/Position'

FILES += 'Main'

FILES += 'Tower/Home'

FILES += 'Factory/Home'
FILES += 'Factory/_Buy Them All'
FILES += 'Factory/_Make Stuff'
FILES += 'Factory/_Make 1 Dust'
FILES += 'Factory/_Make 1 Plate'

FILES += 'Mine/Home'
FILES += 'Mine/_Mine 1 Tab'

FILES += 'Trade/Home'

FILES += 'Cursor/Click 8'
FILES += 'Cursor/Click Click'
FILES += 'Cursor/Slow Click 64'

FILES += '!Delete the AI'

build: update-files-count
	@ cd scripts && ../lib/perfect-tower-ai-compiler $(FILES)

update-files-count:
	@ ./update-files-count $(FILES)

.PHONY: build update-files-count
