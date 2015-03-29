source /usr/share/peda/peda.py
set logging redirect on
set logging file /dev/null
python
def on_new_objfile(e):
    gdb.execute("set logging off")
    #print "new objfile:",e.new_objfile.filename
    if e.new_objfile.filename[:19] == "system-supplied DSO":
        gdb.execute("set logging on") # hide inevitable error message
gdb.events.new_objfile.connect(on_new_objfile)
end
