# sabakan-s_3DDungeon_ENG
These scripts and the documentation in the sample project was originally in Japanese.
My Japanese may not be perfect, but there shouldn't be any problems.
I made edits to the sample project to better showcase the scripts, but other than the documentation I didn't touch
any of the code.

I decided to translate it as I was having trouble looking for it intially when I was looking for
appropriate scripts for my own projects, and it was by my own good fortune that I knew enough
Japanese to be able to learn about Sabakan's works and by extension the works of other Japanese
script writers. After some introspection, I realised that there are other people who want look
for such scripts are out there but don't know enough Japanese to be able to find or use such scripts.

You can find Sabakan's twitter at "https://twitter.com/sabakan03".
His last tweet was in 2019 though, so I'm not sure he's still active.

On the subject of these particular scripts though, despite its name, it isn't actually in
full polygonal 3d; for that you should use FPLE, which you can find at 
https://rgss-factory.net/2013/09/10/ace-fple-ace-first-person-labyrinth-explorer/
*Warning - website is in French.

Sabakan's 3DDungeon system is closer to classic dungeon crawlers such as the original Might & Magic
in terms of graphics, though 3DDungeon adds optional animation when moving.
FPLE is just straight up better in terms of graphics. You can actually have damage tiles and walls
look different so the player can intuit instead of only being able to cross fingers whenever they
enter a new room.

Where I would say where 3DDungeon out does FPLE is in the quality of life, such as the
Automap/Minimap feature and how it innately has FOE funtionality (Events can not just move around autonomously,
but are also properly limited to only move after the player and are even accounted for in the aforementioned
Automap/Minimap feature), and it's ease of use; FPLE requires you to use a custom made map creation tool
called Marta, which can be very unstable and is liable to crash, while 3DDungeon doesn't need anything but the
base RPG Maker VX Ace program.

As a side note, I would like to try to possibly fuse the two script systems together; FPLE's full polygonal
3D maps with 3DDungeon's Automapping and FOE features. My Ruby coding skill isn't very good, but
this is something I'd really like to see.

~rutare


## What exactly these do
Basically, these allow you turn your 2D JRPG into a 2.5D (aka fake 3D) first person dungeon crawler and unlike FPLE,
it doesn't break whenever you transition between the two.


## Installation:
I've made the translated Sample Project file availible to download in the "Releases" section.
Using it is very simple, just unpack it wherever you like and open the project file with RPG Maker VX ACE (RPGツクールVXACE).

As for adding the scripts to an existing project:
1) Download the .zip and unpack inside of your project folder.

2) Open "Three_D_Scripts" and you will see several .rb files. Open them with the text reader of your choice (i.e. notepad++)
   and insert the scripts into your projects script editor. The scripts numbered "6x" are optional.

And you should be done.
Remember to study the documentation and the sample project thoroughly. It'll guide you through how to use it.



## Credits
sabakan (さば缶) for making the original scripts, sample project, wall and floor graphics

Me (rutare) for translation and editing of the sample project file and scripts
