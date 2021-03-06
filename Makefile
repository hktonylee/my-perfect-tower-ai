
FILES = 
FILES += '!Enable the AI'
FILES += '[Library]'
FILES += 'Factory/[CraftMagic]'
FILES += 'Cursor/Position'

FILES += 'Master Mind'

FILES += 'Tower/Home Idle'
FILES += 'Tower/Home Trial'
FILES += 'Tower/_Select Level'
FILES += 'Tower/_Auto Trial'
FILES += 'Tower/_Slow Down'

FILES += 'Factory/Home'
FILES += 'Factory/_Buy Them All'
FILES += 'Factory/_Make Stuff'
FILES += 'Factory/_Make Stuff ∞'
FILES += 'Factory/_Make 1 Dust'
FILES += 'Factory/_Make 1 Plate'
# FILES += 'Factory/_Make 1 Chip T2'
FILES += 'Factory/_Make 1 Chip'

FILES += 'Mine/Home'
FILES += 'Mine/_Mine 1 Tab'
FILES += 'Mine/_Dig 4'
FILES += 'Mine/_Scan Asteroids'

FILES += 'Trade/Home'

FILES += 'Workshop/Home'

FILES += 'Museum/Home'
FILES += 'Museum/_Buy Shop'
FILES += 'Museum/_Buy Market'
FILES += 'Museum/_Upgrade Equipped'
FILES += 'Museum/_Combine'
FILES += 'Museum/_Move'
FILES += 'Museum/_Delete'

FILES += 'Lab/Home'
FILES += 'Lab/_Nature'
FILES += 'Lab/_Electric'

FILES += 'Cursor/Click 8'
FILES += 'Cursor/Click Click'
FILES += 'Cursor/Slow Click Click'
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

build: update-files-count replace-impulse-map process-python-super-macro
	@ cd scripts && ../lib/perfect-tower-ai-compiler $(FILES)

update-files-count:
	@ ./bin/update-files-count $(FILES)

replace-impulse-map:
	@ cd scripts && ../bin/replace-impulse-map ../ImpulseMap $(FILES)

process-python-super-macro:
	@ cd scripts && ../bin/process_python_super_macro $(FILES)

.PHONY: build update-files-count replace-impulse-map process-python-super-macro
