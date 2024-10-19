# BEGIN ethantkoenig EDIT
# Note: I have removed many of the commands from the upstream file, because Cursorless makes them unnecessary.
# END ethantkoenig EDIT

# Compound of action(select, clear, copy, cut, paste, etc.) and modifier(word, line, etc.) commands for editing text.
# eg: "select line", "clear all"
<user.edit_action> <user.edit_modifier>: user.edit_command(edit_action, edit_modifier)

# Zoom
zoom in: edit.zoom_in()
zoom out: edit.zoom_out()
zoom reset: edit.zoom_reset()

# Searching
find it: edit.find()
next one: edit.find_next()

# Navigation

# The reason for these spoken forms is that "page up" and "page down" are globally defined as keys.
scroll up: edit.page_up()
scroll down: edit.page_down()

# go left, go left left down, go 5 left 2 down
# go word left, go 2 words right
# BEGIN ethantkoenig EDIT
# go <user.navigation_step>+: user.perform_navigation_steps(navigation_step_list)
# END ethantkoenig EDIT

go line start | head: edit.line_start()
go line end | tail: edit.line_end()

go top: edit.file_start()
go bottom: edit.file_end()

# Selecting

# BEGIN ethantkoenig EDIT
# select left: edit.extend_left()
# select right: edit.extend_right()
# select up: edit.extend_line_up()
# select down: edit.extend_line_down()

# select word left: edit.extend_word_left()
# select word right: edit.extend_word_right()

# select way left: edit.extend_line_start()
# select way right: edit.extend_line_end()
# select way up: edit.extend_file_start()
# select way down: edit.extend_file_end()

# # Indentation
# indent [more]: edit.indent_more()
# (indent less | out dent): edit.indent_less()

# # Delete
# clear left: edit.delete()
# clear right: user.delete_right()

# clear up:
#     edit.extend_line_up()
#     edit.delete()

# clear down:
#     edit.extend_line_down()
#     edit.delete()

# clear word left:
#     edit.extend_word_left()
#     edit.delete()

# clear word right:
#     edit.extend_word_right()
#     edit.delete()

# clear way left:
#     edit.extend_line_start()
#     edit.delete()

# clear way right:
#     edit.extend_line_end()
#     edit.delete()

# clear way up:
#     edit.extend_file_start()
#     edit.delete()

# clear way down:
#     edit.extend_file_end()
#     edit.delete()
# END ethantkoenig EDIT

# Copy
copy that: edit.copy()
# BEGIN ethantkoenig EDIT
# copy word left: user.copy_word_left()
# copy word right: user.copy_word_right()

# #to do: do we want these variants, seem to conflict
# # copy left:
# #      edit.extend_left()
# #      edit.copy()
# # copy right:
# #     edit.extend_right()
# #     edit.copy()
# # copy up:
# #     edit.extend_up()
# #     edit.copy()
# # copy down:
# #     edit.extend_down()
# #     edit.copy()
# END ethantkoenig EDIT

# Cut
cut that: edit.cut()
# BEGIN ethantkoenig EDIT
# cut word left: user.cut_word_left()
# cut word right: user.cut_word_right()

# #to do: do we want these variants
# # cut left:
# #      edit.select_all()
# #      edit.cut()
# # cut right:
# #      edit.select_all()
# #      edit.cut()
# # cut up:
# #      edit.select_all()
# #     edit.cut()
# # cut down:
# #     edit.select_all()
# #     edit.cut()
# END ethantkoenig EDIT

# Paste
# BEGIN ethantkoenig EDIT
# (pace | paste) that: edit.paste()
pasty: edit.paste()
# END ethantkoenig EDIT
(pace | paste) enter:
    edit.paste()
    key(enter)
paste match: edit.paste_match_style()

# Duplication
clone that: edit.selection_clone()
clone line: edit.line_clone()

# Insert new line
# BEGIN ethantkoenig EDIT
# new line above: edit.line_insert_up()
# new line below | slap: edit.line_insert_down()
slap: edit.line_insert_down()
# END ethantkoenig EDIT

# Insert padding with optional symbols
# BEGIN ethantkoenig EDIT
# (pad | padding): user.insert_between(" ", " ")
# (pad | padding) <user.symbol_key>+:
#     insert(" ")
#     user.insert_many(symbol_key_list)
#     insert(" ")
# END ethantkoenig EDIT

# Undo/redo
undo that: edit.undo()
redo that: edit.redo()

# Save
file save: edit.save()
file save all: edit.save_all()

[go] line mid: user.line_middle()
