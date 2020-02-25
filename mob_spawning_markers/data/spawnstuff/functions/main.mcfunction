function spawnstuff:mobtags
function spawnstuff:newrefiller
function spawnstuff:newreplacer
function spawnstuff:newcounter
function spawnstuff:refiller
function spawnstuff:replacer
function spawnstuff:counter


execute as @a[nbt={SelectedItem:{tag:{marker:reveal}}}] run function spawnstuff:show_markers

execute as @a[nbt={SelectedItem:{tag:{marker:hide}}}] run function spawnstuff:hide_markers