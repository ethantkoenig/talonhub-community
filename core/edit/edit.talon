# Note: I have removed many of the commands from the upstream file, because Cursorless makes them unnecessary.

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

go word left: edit.word_left()
go word right: edit.word_right()

go line start | head: edit.line_start()
go line end | tail: edit.line_end()

go top: edit.file_start()
go bottom: edit.file_end()

# Selecting
select all: edit.select_all()

# Delete
clear all: user.delete_all()

# Copy
copy that: edit.copy()
copy all: user.copy_all()

# Cut
cut that: edit.cut()
cut all: user.cut_all()

# Paste
pasty: edit.paste()
(pace | paste) enter:
    edit.paste()
    key(enter)

# Duplication
clone that: edit.selection_clone()
clone line: edit.line_clone()

# Insert new line
slap: edit.line_insert_down()

# Undo/redo
undo that: edit.undo()
redo that: edit.redo()

# Save
file save: edit.save()
file save all: edit.save_all()
