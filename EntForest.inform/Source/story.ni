"EntForest" by Bruno

Release along with the "Quixe" interpreter.

Release along with cover art ("Trees cover").

When play begins:
	say "You're a brave warrior stranded in this forsaken land where nothing is as it was before. Find a way through the Cursed forest, but be aware, you need weapons and friends, you can't do this alone!"

The display banner rule is listed before the when play begins stage rule in the startup rules.

[Mapping - showing the map of story on commands "map" and "look at map"]

Figure of EntForest is the file "map.png".

Mapping is an action applying to nothing.
Understand "map" as mapping.
Understand "look at map" as mapping.

After mapping:
	display the Figure of EntForest;
	continue the action;
	
[Tables]

[Speech table for Swordsman]

Table of Swordsman Responses
Topic	Response	Index
"Who are you"	"An ancient warrior in need for a sword!"		"Who are you"
"What is your name"	"My name is Astellan."	"What is your name"
"What race are you"	"I am a human!"	"What race are you"

After asking Swordsman about something:
	if the topic understood is a topic listed in the Table of Swordsman Responses:
		say "[Response entry]";
		
[Action]

list-asking is an action applying to one thing.
understand "ask [thing]" as list-asking.
understand "ask [thing] about" as list-asking.

instead of list-asking a Swordsman:
	if the noun is Swordsman:
		let T be the Table of Swordsman Responses;
		list options from T;
	otherwise:
		say "I am sorry, but there are no questions to ask :(";
		
[Speech table for Wizard]

Table of Wizard Responses
Topic	Response	Index
"Who are you"	"Long forgotten wizard!"	"Who are you"
"What is your name"	"My name is Oberost."	"What is your name"
"What race are you"	"I am a wizard, of course!"	"What race are you"

After asking Wizard about something:
	if the topic understood is a topic listed in the Table of Wizard Responses:
		say "[Response entry]";
		
instead of list-asking a Wizard:
	if the noun is Wizard:
		let T be the Table of Wizard Responses;
		list options from T;
	otherwise:
		say "I am sorry, but there are no questions to ask :(";
		
[Speech table for Archer]

Table of Archer Responses
Topic	Response	Index
"Who are you"	"Friend of the forest!"	"Who are you"
"What is your name"	"My name is Eruviel."	"What is your name"
"What race are you"	"I am an Elf!"	"What race are you"

After asking Archer about something:
	if the topic understood is a topic listed in the Table of Archer Responses:
		say "[Response entry]";
		
instead of list-asking a Archer:
	if the noun is Archer:
		let T be the Table of Archer Responses;
		list options from T;
	otherwise:
		say "I am sorry, but there are no questions to ask :(";

To list options from (T - a table name):
	let N be the number of rows in T;
	if N is 0:
		say "Ah . . . Nothing to ask!";
	otherwise:
		say "You can ask about: ";
		repeat with X running from 1 to N minus 1:
			say "[index in row X of T][if N is greater than 2], [end if]";
		if N is greater than 1:
			say "or ";
		say "[index in row N of T].";

[Variables]

PlayerMove is a truth state that varies. PlayerMove is false. [Move player after he picks up the Elixir of Happines]

HasSword is a truth state that varies. HasSword is false. 

HasArrow is a truth state that varies. HasArrow is false. 

HasStaff is a truth state that varies. HasStaff is false. 

HasPower is a truth state that varies. HasPower is false. 

HasCourage is a truth state that varies. HasCourage is false. 


[Green Forest part]
 
The GreenForest is a room. "[line break]Oh you mighty warrior, you are finding yourself in the Green Forest, the home of the cure, potions, and all the thing dear to a man to survive in this cruel and harsh world! [line break]Maybe you can find courage and power here to defeat the evil creatures that stand in your way to eternal life with the Ents!"

A Elixir of Courage is in GreenForest.

A Elixir of Peace is in GreenForest.

A Elixir of Inspiration is in GreenForest.

A ElvenKey is in GreenForest. 

After taking the Elixir of Courage:
	now HasCourage is true;
	continue the action;

The Hole in the tree is a container. 

Hole in the tree is in the GreenForest. The description of Hole in the tree is  "Strange hole in the tree. Who knows what opening up the hole in the tree can bring you or where it could take you. Maybe it contains happiness? Possibly power? Maybe just nothing? Oh well . . . "

The Hole is closed and locked.

The ElvenKey unlocks the Hole. 

A Elixir of Happiness and a Elixir of Power are in the Hole. 

Instead of taking the Hole:
	say "How do you think you will carry that hole? Please, no more crazy mushrooms!";

After taking the Elixir of Power:
	now HasPower is true;
	continue the action;

Before taking the ElvenKey:
	say "Maybe some ancient people forgot about it. Must be to unlock something. It looks kinda elvish!";
	continue the action.

After taking the Elixir of Happiness:
	if PlayerMove is false:
		move the player to the HappyValley;
		now PlayerMove is true;
		continue the action;
		
Before going north from GreenForest:
	If PlayerMove is false:
		move the player to the GreenForest;
		say "You're not happy, you can't go north yet, or maybe you don't need to go at all?";
		stop the action;

West of the GreenForest is a room called BlueForest.

North of the GreenForest is a room called HappyValley.

East of the GreenForest is a room called CursedForest.


[Happy valley part]

HappyValley is a room. "[line break]Okay, you are happy for now in this valley. But what about eternal happiness with the Ents? You must want that. Get back to the woods and find a way to defeat the evil creatures!"


[Blue Forest part]
	
The BlueForest is a room. "[line break]You can find yourself in the Blue Forest where you see things of great value that can help you on your journey across the Cursed Forest. You can see a wooden desk with weapons that were forged in the eternal fires and cooled down in the freezing deeps of the northern sea![line break]Maybe some friend can help you with your journey as well?"

Archer is a person in BlueForest. The description of Archer is "He is useless without his arrow. Find him his weapon and summon his to the Cursed forest to aid you, you need your friends!"

Wizard is a person in BlueForest. The description of Wizard is "He is useless without his staff. Find him his weapon and summon his to the Cursed forest to aid you, you need your friends!"

Swordsman is a person in BlueForest. The description of Swordsman is "He is useless without his sword. Find him his weapon and summon his to the Cursed forest to aid you, you need your friends!"

The Grass is a container.

The Grass is in the BlueForest. The description of Grass is  "That is some tall grass . . . Maybe there are snakes in it? Maybe some useful things. Should you look inside?"

The GrassKey is in the Grass.

The Grass is closed and openable.

Instead of taking the Grass:
	say "Really? You're a human man, not an cow!";

The Wooden desk is a container.

Wooden desk is in the BlueForest. The description of Wooden desk is  "Oh, those wooden desks of old . . .  You can smell the power and greatness that they hold!"

Wooden desk is closed and locked.

The GrassKey unlocks the Wooden desk. 

White staff is in the Wooden desk. The description of White staff is "Those magical white staff must be for something evil and demonic!"

Green staff is in the Wooden desk. The description of Green staff is "Those magical green staff must be for something green and peaceful!"

Black staff is in the Wooden desk. The description of Black staff is "Those magical black staff must be for something that's in the mines, it's so dusty . . ."

Instead of taking the Wooden desk:
	say "Where you are going they don't need wooden desks. Actually, I think they don't like things made of wood . . .";

After taking the White staff:
	now Wizard is in CursedForest;
	say "You have summoned the White Wizard to the Cursed forest!";
	now HasStaff is true;
	continue the action;

The Gates of fortress is a door. The Gates of fortress is south of the BlueForest.

OldElvenFortress is south of the the Gates of fortress.


[Old Elven fortress part]

OldElvenFortress is a room. "[line break]Forgotten for ages, lost in the books, now only ruins remain of once a great elven fortress. Mystery surrounds this place, ghost fly by you, but don't be scared, it's a peaceful place. Try to find something useful. It looks like there are still some weapons here that stood for ages and are still standing like the time stopped for them. It must be that Elves used some kind of magic on them. . . But be aware that while you look out for weapons your enemies grow stronger!"

White arrow is in the OldElvenFortress. The description of White arrow is "Maybe you can see enemies in the dark with a white arrow."

Green arrow is in the OldElvenFortress. The description of Green arrow is "Hmm . . . There is saying that a green arrow can be good for aiming high!"

Black arrow is in the OldElvenFortress. The description of Black arrow is "If you need defence against stone giants, there is nothing better than a black arrow!"

After taking the Green arrow:
	now Archer is in CursedForest;
	say "You have summoned the Green Archer to the Cursed forest!";
	now HasArrow is true;
	continue the action;

Stone grave is a container.

Stone grave is in the OldElvenFortress.  The description of Stone grave is "There are some old and brave warriors buried here. It must be full of some ancient weapons."

Stone grave is closed and openable. 

White sword is in the Stone grave.  The description of  White sword is "White swords were carried by the kings of old. The high lords of Elves and keepers of the peace."

Green sword is in the Stone grave.The description of Green sword is "The Green sword is said to be worn be the Queens of might and magic!"

Black sword is in the Stone grave. The description of  Black sword is "The Black sword is the one that all Orcs fear and flee before it!"

Instead of taking the Stone grave:
	say "It's not polite to take someone's grave with you . . .";

After taking the Black sword:
	now Swordsman is in CursedForest;
	say "You have summoned the Black Swordsman to the Cursed forest!";
	now HasSword is true;
	continue the action;
	

[CursedForest part]

CursedForest is a room. "[line break]The ground hasn't seen the light for ages, rivers stopped flowing and leaves mourn the life that was once here, but no more. Cursed is the place where you are. Be aware of going alone. Don't even try without the right equipment. The Orcs on the branches fight until the end and guard the entrance of the forest. If you win the fight, you will come across the Trolls that smash hard and fear no one! If you manage to get through all of that, only magic can save you because Demon from the deep, the almighty ghost that roams this forest is feared by all living things and no solid thing can hurt him!

   Go south if you dare . . ."

Before going south from CursedForest:
	If HasSword is false:
		say "You will lose your life, don't risk it. Find the right items, my friend!";
		move the player to the GreenForest;
		stop the action;
	If HasArrow is false:
		say "You will lose your life, don't risk it. Find the right items, my friend!";
		move the player to the GreenForest;
		stop the action;
	If HasStaff is false:
		say "You will lose your life, don't risk it. Find the right items, my friend!";
		move the player to the GreenForest;
		stop the action;
	If HasCourage is false:
		say "You will lose your life, don't risk it. Find the right items, my friend!";
		move the player to the GreenForest;
		stop the action;
	If HasPower is false:
		say "You will lose your life, don't risk it. Find the right items, my friend!";
		move the player to the GreenForest;
		stop the action;
	if Archer is not in CursedForest:
		say "You need your Archer to defeat the evil creatures!";
		move the player to the GreenForest;
		stop the action;
	if Wizard is not in CursedForest:
		say "You need your Wizard to defeat the evil creatures!";
		move the player to the GreenForest;
		stop the action;
	if Swordsman is not in CursedForest:
		say "You need your Swordsman to defeat the evil creatures!";
		move the player to the GreenForest;
		stop the action;

South of the CursedForest is a room called EntForest.		

[Ent Forest part]

EntForest is a room. "[line break]You are in peace, my friend. Your journey is now over. But don't be sad, you've got an eternal life with the Ents, just like we promised! Hope you enjoyed this adventure and now go take a rest, you deserved it!"





