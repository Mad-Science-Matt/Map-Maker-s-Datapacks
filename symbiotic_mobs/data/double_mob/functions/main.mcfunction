
tag @e[tag=body,tag=!symimmune] add killme

tag @e[tag=head,tag=!symimmune] add killme

execute at @e[tag=head] run tag @e[tag=body,distance=..2] remove killme

execute at @e[tag=body] run tag @e[tag=head,distance=..2] remove killme

kill @e[tag=body,tag=killme]

kill @e[tag=head,tag=killme]