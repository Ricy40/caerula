scoreboard players add @s title_timer 1
title @s subtitle {"text":" "}
title @s[scores={title_timer=20..}] title {"translate":"exp_screentxt_morecoal_title","color":"red","bold":true}

scoreboard players set @s[scores={title_timer=20..}] title_timer 0