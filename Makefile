
FILES = 
FILES += '!Enable the AI'
FILES += '[Library]'
FILES += 'Factory/[CraftMagic]'
FILES += 'Cursor/Position'

FILES += 'Master Mind'

FILES += 'Tower/Home'
FILES += 'Tower/_Select Level'
FILES += 'Tower/_Auto Trial'

FILES += 'Factory/Home'
FILES += 'Factory/_Buy Them All'
FILES += 'Factory/_Make Stuff'
FILES += 'Factory/_Make Stuff ∞'
FILES += 'Factory/_Make 1 Dust'
FILES += 'Factory/_Make 1 Plate'
FILES += 'Factory/_Make 1 Chip T2'

FILES += 'Mine/Home'
FILES += 'Mine/_Mine 1 Tab'
FILES += 'Mine/_Dig 4'

FILES += 'Trade/Home'

FILES += 'Lab/Home'
FILES += 'Lab/_Nature'
FILES += 'Lab/_Electric'

FILES += 'Cursor/Click 8'
FILES += 'Cursor/Click Click'
FILES += 'Cursor/Slow Click 64'

FILES += 'Timer/Main'
FILES += 'Timer/_Run 1'
FILES += 'Timer/_Run 1000'

# FILES += 'Keyboard/Left'
# FILES += 'Keyboard/Right'
# FILES += 'Keyboard/Up'
# FILES += 'Keyboard/Down'
# FILES += 'Keyboard/Enter'
# FILES += 'Keyboard/Exit'

FILES += '!Delete the AI'

build: update-files-count replace-impulse-map
	@ cd scripts && ../lib/perfect-tower-ai-compiler $(FILES)

update-files-count:
	@ ./bin/update-files-count $(FILES)

replace-impulse-map:
	@ cd scripts && ../bin/replace-impulse-map ../ImpulseMap $(FILES)

.PHONY: build update-files-count replace-impulse-map
