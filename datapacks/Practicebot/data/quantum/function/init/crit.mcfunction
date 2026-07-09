execute unless score .mode mode matches 4..5 at @s[scores={state=1}] if score .shield toggles matches 1 run function quantum:shield/tick

execute if score .mode mode matches 1 run function quantum:sword/tick

execute if score .mode mode matches 3 run function quantum:mace/tick

execute if score .mode mode matches 4..5 run function quantum:pot/tick

execute if score .mode mode matches 6 run function quantum:carttest/tick