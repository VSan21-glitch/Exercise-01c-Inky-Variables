/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
*/


VAR health = 5
VAR pet_name = ""
VAR torches = 0
VAR hunger_bar = 0
VAR Anger = 0


-> memory

=== memory ===
Before you stands the cavern of Josh. You wish your childhood pet was with you now. The cave might be less intimidating then. What was your pet's name?

*[Charlie]
    ~ pet_name = "Charlie"
    -> cave_mouth
*[Susan]
    ~pet_name = "Susan"
    -> cave_mouth
*[Spot]
    ~pet_name = "Spot"
    -> cave_mouth

== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.

You made it to the cave. If only {pet_name} could you see now!

You have {torches} torches.
Your hungar bar is currently {hunger_bar}.
Your anger meter is {Anger}.


+ [Think about food and get hungry] -> hunger_memory
+ [Go back home] -> home
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

*{Anger > 0} [Cry] -> crying

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torches > 0} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west
+[Step in mud] -> dirty_clothes
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
~torches = torches + 1
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
-> END

== home ==
You decided this cave is too scary and decided to go home.
+[Eat food] -> food
-> END

== hunger_memory ==
Your stomach rumbles out of nowhere. You remembered that you skipped your breakfast because you were too lazy to make it. You curse yourself for your laziness. Idiot.
-> END

== food ==
~hunger_bar = hunger_bar + 1
You made yourself a good meal because you were starving due to missing out breakfast.
Your hungar bar is now {hunger_bar}.
-> END

== dirty_clothes ==
~Anger = Anger + 1
You stepped in mud for some reason. On purpose. Why? Your clothes are now all dirty.
*[Go back] -> cave_mouth
-> END

== crying ==
You cried because you were too angry. 
-> END
