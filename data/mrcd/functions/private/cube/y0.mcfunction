# Calculate the intersection point coordinate
#   Plane equation: y = #box_y0
#   Condition of crossing: #box_x0 <= x <= #box_x1 #box_z0 <= z <= #box_z1

execute store result score #target_y mrcd_system run scoreboard players get #box_y0 mrcd_system
function mrcd:private/calculate/y
execute if score #target_x mrcd_system >= #box_x0 mrcd_system if score #target_x mrcd_system <= #box_x1 mrcd_system if score #target_z mrcd_system >= #box_z0 mrcd_system if score #target_z mrcd_system <= #box_z1 mrcd_system run tag @s add mrcd_touch_y_minus