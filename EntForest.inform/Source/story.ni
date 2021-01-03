"EntForest" by Bruno

[Variables]

PlayerMove is a truth state that varies. PlayerMove is false. [Move player after he picks up the Elixir of Happines]

HasSword is a truth state that varies. HasSword is false. 

HasArrow is a truth state that varies. HasArrow is false. 

HasStaff is a truth state that varies. HasStaff is false. 

HasPower is a truth state that varies. HasPower is false. 

HasCourage is a truth state that varies. HasCourage is false. 

[GreenForest part]

The GreenForest is a room. "Oh you mighty warrior, you are finding yourself in the Green Forest, the home of the cure, potions, and all the thing dear to a man to survive in this cruel and harsh world! Maybe you can find courage and power here to defeat the evil creatures that stand in your way to the eternal life with the Ents!
   
   You can see Blue forest rising in the west and in the east there is a Cursed forest and the road you must take!"

A Elixir of Courage is in GreenForest.

A Elixir of Peace is in GreenForest.

A Elixir of Inspiration is in GreenForest.

A ElvenKey is in GreenForest. 

After taking the Elixir of Courage:
	now HasCourage is true;
	continue the action;

The Hole in the tree is a container. 

Hole in the tree is in the GreenForest. The description of Hole in the tree is  "Strange hole in the tree. Who knows what opening up the hole in the tree can bring you or where it could take you. Maybe it contains happiness? Maybe power? Maybe just nothing? Oh well . . . "

The Hole is closed and locked.

The ElvenKey unlocks the Hole. 

A Elixir of Happiness and a Elixir of Power are in the Hole. 

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

HappyValley is a room. "Okay you are happy for now in this valley. But what about eternal happiness with the Ents? You must want that. Get back to the woods and find a away to defeat the evil creatures! You can go south to get back to the Green forest"


[BlueForest part]
	
The BlueForest is a room. "You can find yourself in the Blue Forest where you see things of great value that can help you on your journey across the Cursed Forest. You can see a wooden desk with weapons that were forged in the eternal fires and cooled down in the freezing deeps of the northern sea! Maybe some friend can help you on your journey aswell?

  You can see Green forest rising in the east and Old Elven fortress standing in the south!"

Archer is a person in BlueForest.

Wizard is a person in BlueForest.

Swordsman is a person in BlueForest.

The Grass is a container.

The Grass is in the BlueForest. The description of Grass is  "That is some tall grass . . . Maybe there's snakes in it? Maybe some useful things. Should you look inside?"

The GrassKey is in the Grass.

The Grass is closed and openable.

The Wooden desk is a container.

Wooden desk is in the BlueForest. The description of Wooden desk is  "Oh those wooden desks of old . . .  You can smell the power and greatness that they hold!"

Wooden desk is closed and locked.

The GrassKey unlocks the Wooden desk. 

White staff is in the Wooden desk. The description of White staff is "Those magical white staff must be for something evil and demonic!"

Green staff is in the Wooden desk. The description of Green staff is "Those magical green staff must be for something greeen and peaceful!"

Black staff is in the Wooden desk. The description of Black staff is "Those magical black staff must be for something that's in the mines, it's so dusty . . ."

After taking the White staff:
	now HasStaff is true;
	continue the action;

The Gates of fortress is a door. The Gates of fortress is south of the BlueForest.

OldElvenFortress is south of the the Gates of fortress.


[Old Elven fortress part]

OldElvenFortress is a room. "Forgoten for ages, lost in the books, now only ruins remain of once great elven fortress. Mistery surrounds this place, ghost fly by you, but don't be scared, it's a peaceful place. Try to find something useful. It looks like there's still some weapons here that stood for ages and are stiill standing like the time stopped for them. Must be that Elves used some kind of magic on them. . . But be aware that while you look out for weapons your enemies grow stronger!"

White arrow is in the OldElvenFortress. The description of White arrow is "Maybe you can see enemies in the dark with white arrow."

Green arrow is in the OldElvenFortress. The description of Green arrow is "Hmm . . . There is saying that green arrow can be good for aiming high!"

Black arrow is in the OldElvenFortress. The description of Black arrow is "If you need defence against stone giants, there is nothing better than black arrow!"

After taking the Green arrow:
	now HasArrow is true;
	continue the action;

Stone grave is a container.

Stone grave is in the OldElvenFortress.  The description of Stone grave is "There are some old and brave warriors burried here. It must be full of some ancient weapons"

Stone grave is closed and openable. 

White sword is in the Stone grave.  The description of  White sword is "White swords were carried by the kings of old. The high lords of Elves and keepers of the peace."

Green sword is in the Stone grave.The description of Green sword is "Green sword is said to be worn be the Quens of might and magic!"

Black sword is in the Stone grave. The description of  Black sword is "Black sword is the one that all Orcs fear and flee before it!"

After taking the Black sword:
	now HasSword is true;
	continue the action;
	

[CursedForest part]

CursedForest is a room. "Ground hasn't seen the ligh for ages, rivers stopped flowing and leaves mourn the life that was once here, but no more. Cursed is the place where you are. Be aware of going alone. Don't even try without right equipment. The Orcs on the branches fight until the end and guard the entrance of the forest. If you win the fight you will come across the Trolls that smash hard and fear no one! If you manage to get through all of that, only magic can save you becase Deamon from the deep, the almighty ghost that roams these forest is feared by all living things and no solid thing can hurt him!

   Go east if you dare . . ."

Before going east from CursedForest:
	If HasSword is false:
		If HasArrow is false:
			If HasStaff is false:
				If HasCourage is false:
					If HasPower is false:
						move the player to the GreenForest;
						say "You will lose your life, don't risk it. Find the right items my friend!";
						stop the action;

East of the CursedForest is a room called EntForest.		

[EntForest part]

EntForest is a room. "You are in peace my friend. Congratulations!"





