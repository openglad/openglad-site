<jsp:include page="/includes/header.jsp" />

<a name='manual'></a>
<h1>Manual</h1>

<hr class="style-three">

<p>Openglad can be tricky to play! This manual should hopefully make it easier.</p>

<ul style="list-style: none;">
	<li><a href="#manual">Manual</a></li>
	<ul style="list-style: none;">
		<li><a href="#installing">Installing Openglad</a></li>
		<li><a href="#playing">Playing Openglad</a></li>
		<ul style="list-style: none;">
			<li><a href="#overview">Overview</a></li>
			<li><a href="#controls">Controls</a></li>
			<li><a href="#ready">Getting Ready</a></li>
			<li><a href="#fighting">Fighting</a></li>
			<li><a href="#continue">Continuing the cycle</a></li>
			<li><a href="#hints">Hints and tips</a></li>
		</ul>
		<li><a href="#editor">Making Levels</a></li>
	</ul>
</ul>

<a name="installing"></a>
<h2>Installing Openglad</h2>

Section coming soon!

<a name="playing"></a>
<h2>Playing Openglad</h2>

<div class="alert alert-info">
	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
	You can call up the in-game help by pressing F1 (on a PC). Help for Android coming soon!
</div>

<a name="overview"></a>
<h3>Overview</h3>
<p>Gladiator is a gauntlet style, real-time arcade game where you (the red team) must set out to destroy your enemies (and pick up treasure!) in a variety of scenarios.  You get to sharpen the skills of your team as you progress through the levels, and each character class (Fighter, Mage, etc.) has a number of special abilities which come into play as your character gains levels.</p>

<a name="controls"></a>
<h3>Controls</h3>

<p>Openglad is designed to allow up to four players to use the keyboard at once (although we admit it would be rather cramped) and to use joysticks/gamepads.  Each player has a number of 'action' keys, such as movement or attacking, and also a set of preferences, which are reached from the 'options menu,' and control things such as game speed or viewport size.  Important to remember are the 'ESC' key, which will abort your current mission and return you to the menu screen, and the 'F1' key, which will bring up a brief help display during the game.</p>

<p>Detailed PC controls:</p>
<pre>
ESC: Quit Gladiator
Movement keys (keyboard control)
Player 1       Player 2		Player 3       Player 4
--------       --------		--------       -------- 
Q  W  E           UP   		U  I  O        R  T  Y
 \ | /          \ | /  		 \ | /          \ | /
A-   -D       LT-   -RT		J-   -L        F-   -H
 / | \          / | \  		 / | \          / | \
Z  X  C           DN   		M  ,  .        V  B  N

Other 'action' keys:

Action			Player 1	Player 2	Player 3	Player 4
------			--------	--------	--------	--------
Fire			Left CTRL	PERIOD .	SPACE		5 (non numpad)
Special			Left ALT	SLASH /		Semicolon ;	6 (non numpad)
Switch special		TAB		QUOTE '		9 (non numpad)	7 (non numpad)
Switch character	BACKQUOTE `	RETURN (ENTER)	- (non numpad)	EQUALS =
Special Shifter		L_SHIFT		R_SHIFT		0 (non numpad)	8 (non numpad)
Yell			S (letter)	BACKSLASH \	K		G
Options menu		1 (non numpad)	2 (non numpad)	3 (non numpad)	4 (non numpad)

Shifter + Yell: Summon allies to come fight with or protect you.
Shifter + Switch: Switch to next TYPE of ally; ie, jump to your first archer.

Options menu
------------
+/- : Make the game run slower or faster (for all)
[/] : Enlarge or shrink your viewscreen (player-specific)
</> : Brighten or darken the game screen (for all)
C : Toggle color-cycling on or off (for all)
F : Toggle the foes/allies display on or off (player-specific)
H : Cycle through hp/sp display modes (player-spec.)
R : Toggle radar display on or off (player-specific)
S : Toggle the score/exp display on or off (player-specific)
T : Bring up an overview of your team's status
</pre>


<a name="ready"></a>
<h3>Getting Ready</h3>
<p>When you first start a game of Gladiator, you actually start in the main menu instead of the playing field itself.  The menu gives you several choices: Begin a new game, continue with your current or saved game, or exit.  There is also a set of four buttons to control how many human players will be in the game (up to four, except for in the Android version), and a toggle to control the difficulty settings.  For now, select Begin New Game.</p>

<p>The next screen of the menu allows you to save or load games (useful later on), train your current team, view your team, or, finally, hire new members for your squad.  Since you don't have any team members yet, the first thing to do is "Hire Troops".</p>

<p>Choosing the "Hire Troops" menu takes you to a screen which will display the name/type of a new recruit, his statistics, and the cost to purchase him, along with your current cash, which for a new game begins at 5000.  From this point you may buy this character, raise his stats (and cost) in various amounts, or, using the "NEXT" and "PREV" buttons near the top, see what other characters are availible.</p>

<p>Generally, new abilities come every three levels (at levels 1, 4, 7, and 10).  Sometimes you'll also have 'alternate' abilities granted at a given level; these often have other restrictions of use.  For example, the mage gets an alternate special -- teleport marker -- at level 1, but he must have at least 75 Intelligence before it becomes usable.</p>

<p>Here is a list of the classes available in the game.</p>

<div class="list-group">
	<div class="list-group-item">
		<h4 class="list-group-item-heading">Soldier</h4>
		<div class="list-group-item-text">
			<p>Your basic grunt, can absorb and deal damage and moves moderately fast.  A good all-around fighter.  A fighter's normal weapon is a magical returning blade.  While effective at dealing damage, the downside to this is that the fighter must wait for his blade to return before throwing it again.</p>
			<p>Specials:</p>
			<ol>
		        	<li>Charge: The fighter charge is simple but effective.  When charging, the fighter runs forward at high speed, dealing damage to anyone he encounters.</li>
		        	<li>Boomerang: The boomerang can be difficult to use well, but inflicts much damage.  It spirals out from the thrower, inflicting deep wounds on anything it hits.  The boomerang can hit multiple targets before falling to earth.</li>
		        	<li>Whirl: When a fighter whirls, he lashes out at all foes within reach.  Foes hit by such an attack may be pushed off balance or stunned.</li>
		        	<li>Disarm: A skilled fighter can temporarily disarm a nearby opponent.  When disarmed, enemies are unable to fight effectively, and often cannot use special abilities.</li>
		        </ol>
		</div>
	</div>

	<div class="list-group-item">
		<h4 class="list-group-item-heading">Barbarian</h4>
		<div class="list-group-item-text">
			<p>Barbarians are tough fighters, but possess more will than skill.  In general, they posess strong constitutions and impressive strength, but, lacking the training of the standard Soldiers, tend to bash their way through trouble.  Barbarians fight with a heavy iron hammer, both in melee and ranged combat.</p>
			<p>One thing which makes Barbarians unique is their ability to resist magical attacks.  While they bleed like any other mortal, magic attacks, more often than not, fade off their skin without a trace.</p>
			<p>Specials:</p>
            		<ol>
            			<li>Hurl Boulder: All barbarians have the ability to rip large stones from the nearby ground and hurl them at enemies.  How far they can throw them, and the damage the boulders impart, is strongly affected by the strength of the barbarian.</li>
            			<li>Exploding Boulder: Using even more energy, a barbarian can hurl a rock with such strength that it explodes upon impact, damaging any nearby foes.</li>
                 	</ol>
                </div>
        </div>

	<div class="list-group-item">
		<h4 class="list-group-item-heading">Elf</h4>
		<div class="list-group-item-text">
			<p>Elves are small and relatively weak, but are harder to hit than most classes.  Alone of all the standard classes, elves posses the 'ForestWalk' ability.  This ability allows them to walk through dense forests, passing barriers and avoiding enemies.  The more dexterous an elf is, the easier she will be able to journey through forest land. Elves generally throw stones for their ranged attack.</p>
			<p>Specials:</p>
        		<ol>
        			<li>Rocks: A small handful of rocks.</li>
        			<li>Bouncing Rocks: A handful of bouncing rocks.</li>
        			<li>Lots of Rocks: An even bigger load of bouncing rocks.</li>
        			<li>Mega Rocks: An amazing, huge, load of destructive bouncing rock power! :&gt;</li>
        		</ol>
        	</div>
        </div>

	<div class="list-group-item">
		<h4 class="list-group-item-heading">Archer</h4>
		<div class="list-group-item-text">
			<p>Archers are fleet of foot, and their arrows have a long range.  Although they're not as strong or healthy as fighters, they can also be a good squad backbone.</p>
			<p>Specials:</p>
			<ol>
        			<li>Fire Arrows: When pressed, a skilled archer can spin quickly around, firing a stream of blazing arrows.  Each of these arrows is deadly, and can wreak havoc in crowded quarters.</li>
        			<li>Barrage: For when accuracy is more important than total power, archers can loose a stream of arrows all at one target, seriously wounding even the toughest enemy.</li>
        			<li>Exploding Bolt: Unlike the earlier specials, this is merely one bolt, but it packs a lot of punch.  Not only does the flaming arrow deal more damage than normal, these bolts explode on impact, damaging friend or foe!</li>
        		</ol>
        	</div>
        </div>

	<div class="list-group-item">
		<h4 class="list-group-item-heading">Mage</h4>
		<div class="list-group-item-text">
			<p>Mages are slow, nearly defenseless, and horrible at hand-to-hand combat, but their magical energy balls pack a big punch.  All mages, regardless of level, posses the ability to teleport out of (or into!) danger, providing they've saved enough magic.</li>
			<p>Specials:</p>
			<ol>
        			<li>Teleport: Mages often teleport out of (or into!) danger all over the battlefield.  While immensely useful in escaping or exploring, the standard teleport spell is non- directional, and the casting mage has no control over the final destination.
        			<p>SHIFTER: The alternate, more advanced teleport is really a form of 'Dimension Door,' and allows the mage to pick a location, memorize it, and return there at will.  This skill requires more intelligence than even a normal mage, and the number of uses of the memorized spot is also determined by intelligence.</li>
        			<li>Warp Space: While Warp Space can be used offensively, it is generally used as a defense by a surrounded mage.  Casting this spell will twist the fabric of space around the mage, damaging nearby opponents.  The duration and size of the twist are proportional to the amount of magic the mage possesses when the spell is cast.</li>
        			<li>Time Stop: Only powerful mages are able to freeze time at all, let alone for a subjectively long duration.  When the spell is cast, time stops for everything not on the mage's team.  Although this can be immensely powerful, be warned, as no magic will be generated during this frozen moment.</li>
        			<li>Energy Wave: Somewhat akin to a modern-day flame-thrower, a mage's energy wave releases an enormous, expanding flood of energy outward.  The energy wave, being non-corporeal, will pass through walls and other impediments, and can inflict damage on many enemies before fading away.</li>
       				<li>HeartBurst:  This awesome spell comes only to the most powerful of mages.  By concentrating his own life energies, a mage can send forth an explosive aura of energy, causing nearby foes to burst into flames from their inner depths!  The more magic posessed when casting this spell, the stronger the effect will be.  The damage is spread among all enemies in range.</li>
       			</ol>
       		</div>
       	</div>

	<div class="list-group-item">
		<h4 class="list-group-item-heading">Archmage</h4>
		<div class="list-group-item-text">
			<p>When a Mage has reached the sixth level or higher, she may choose to specialize and become an Archmage.  An Archmage takes the learnings of the Magi one step further, posessing extraordinary firepower at the expense of physical weakness.</p>
			<p>Even more than for a normal Mage, an Archmage's powers all hinge upon how much Intelligence is posessed.  An Archmage shares some spells with the standard Mage class, but quickly gains other spells for high damage.</p>
           		<p>Specials:</p>
           		<ol>
           			<li>Teleport: Like normal mages, Archmages posess the ability to teleport into and out of danger.  Similarly, intelligent Archmages can use the alternate form of this ability (SHIFTER) to place a marker, so as to memorize a location to return to.</li>
           			<li>HeartBurst:  This spell is a more powerful version of the standard mage's HeartBurst (5th level), and functions in the same manner.
           			<p>SHIFTER:  By using the alternate version of an Archmage's second-level ability, the spell 'Chain Lightning' is called forth.  Here, the Archmage shoots out a bolt of lightning, powered by excess mana.  The bolt will seek out a nearby enemy, and upon impact, split into multiple new bolts, which will seek their own targets.  In crowded quarters, this spell can incinerate an entire room of the foe with one continuous blast!</li>
           			<li>Summon Image:  By means of an intricate yet relatively unexpensive spell, an Archmage can summon forth an image of a brave warrior to fight for his team.  Should the enemy accept the illusion as real, this phantom can inflict real damage upon the foe.  Once pricked by the point of any weapon, however, the illusion will vanish back into the ether.
           			<p>SHIFTER:  More powerful than illusion, a strong Archmage may summon forth an elemental of fire.  This spell, however, comes with both a blessing and a curse -- for the lifeforce of this elemental is linked to that of the Archmage, and while this may infuse the daemon with extra sustaining health, it can also weaken the archmage to a perilous condition!</li>
           			<li>Mind Control:  For a short time, powerful Archmages may control the minds of those around them, bending their enemies to their will.  The more magical enery the Archmage has availible, the stronger the control will be, and the greater number of foes will be enslaved.</li>
           		</ol>
           	</div>
        </div>

	<div class="list-group-item">
		<h4 class="list-group-item-heading">Cleric</h4>
		<div class="list-group-item-text">
			<p>Clerics, like mages, are slow, but have a stronger hand-to-hand attack.  Clerics posses abilities related to healing and, on the darker side, interaction with the dead.  Clerics have the unique ability to generate fields which their teammates can pass through, but which foes must hack down to pass.</p>
			<p>Specials:</p>
			<ol>
        			<li>Heal: Even the lowest cleric possesses the gods-granted ability to heal others.  Due to the nature of this gift, a cleric can heal several friends, if gathered closely around, for the mana cost of a single spell.  The higher level a cleric is, the stronger this healing power will become.
        			<p>NOTE: clerics controlled by the computer who are on your team will automatically attempt to heal any wounded team member who 'bumps' them.
        			<p>SHIFTER:  Although normally beings of peace, even Clerics sometimes need a strong defense to keep their lifeblood flowing.  Thus, every Cleric soon learns the 'Mystic Mace' spell, which conjurs an ethereal mace to defend against blows, and strike any foe who gets too close.  Although several of these 'maces' may be summoned at one time, the strength of each is determined by the amount of magical energy put into it, and thus one strong mace may be more effective than several weaker ones.
        			<li>Raise Undead: This clerical ability allows the caster to temporarily bring back fallen foes or friends, and have them fight once more.  The strength of this recalled zombie, as well as its duration upon the battlefield, depends both on the cleric's power and the strength of the one who is raised.  When the undead falls again, no power available can bring it back.
        			<p>SHIFTER: The reverse of raise undead, Turn Undead has the power to ultimately send the walking dead back to their realm.
        			<p>Raise Ghost: This stronger version of Raise Undead brings back not the bodies of those who have fallen, but the spirit.  Such a ghost has the advantage of being ethereal and traveling anywhere, as well has possessing stronger powers of attack than a mere zombie.
        			<p>SHIFTER: As with Raise Undead, a knowledgable cleric has the power not only to bring forth sprits, but also to lay them to rest.  This level of Turn Undead will affect both zombies and ethereal spirits.
        			<li>Resurrect: This ultimate power of the clerics puts the art of raising the dead to shame.  With this spell, a powerful cleric can reunite the body and soul of a fallen comrade, healing most wounds in the process.  Be warned, however, that such an endeavor is extremely taxing to both the one who is raised and the casting cleric.
        		</ol>
        	</div>
        </div>

	<div class="list-group-item">
		<h4 class="list-group-item-heading">Thief</h4>
		<div class="list-group-item-text">
			<p>Thieves are fast and stronger of constitution than the magic-wielders, though not so potent as the soldier.  Like fighters, thieves wield stabbing and throwing blades.  Although their blades are not magical, they posses an unlimited supply and can throw them in rapid succession.</p>
			<p>Specials:</p>
        		<ol>
        			<li>Plant Bomb: All thieves can drop small, hand-made explosives to the ground, often able to take out even the strongest opponent.  Beware, however, for unlike an archer's arrows, bombs do not discriminate in who they destroy!</li>
        			<li>Cloak: A moderately experienced thief can learn to hide in even the smallest shadows, slipping unseen past enemy patrols.  How good the 'cloaking' is, and how long the thief can maintain it, depends on both the dexterity and level of the practicer.  A thief on your team who is cloaked will show up with an outline, so that you know where she is.</li>
        			<li>Taunt: While some would think it insane, thieves have made an art of taunting their enemies.  A skilled thief can lure her enemies away from their chosen targets, often leading them on a fruitless chase, until the rest of the team can wipe them up.
        			<p>SHIFTER: When not taunting their enemies, thieves may be charming them instead.  Masters of inducing paranoia and charm, a clever thief can at times convince his worst enemy to help him out for a while.</li>
        			<li>Poison Cloud: The ability to create billowing clouds of poison is the thief's other offensive weapon.  By gathering up harmless elements and combining them, a thief can create a truly noxious concoction, which when smashed from its container will quickly expand into the air, bringing airborne pain and confusion to nearby enemies.
        		</ol>
        	</div>
        </div>


	<div class="list-group-item">
		<h4 class="list-group-item-heading">Druid</h4>
		<div class="list-group-item-text">
			<p>Druids are the magicians of nature, and have special powers over natural events.  Druids can throw lightning bolts at their foes; the bolts have long range and are very fast.</p>
			<p>Specials:</p>
			<ol>
        			<li>Grow Tree: The simplest druid magic is that of planting and growing trees.  While this might seem pointless, the druid imbues these saplings with his own energy, and the trees will allow friends to pass without hindrance, but severely impede any enemies trying to slip past.</li>
        			<li>Summon Faerie: The druid power to summon forth sprites and faeries from the woodlands is well known.  These summoned sprites will take off in pursuit of enemies, flying over the landscape and freezing foes in their tracks.</li>
        			<li>Reveal Items: The druid's power to magically reveal items to his sight most often used when searching for gold or other treasure.  At other times, this sight aids in the searching out of enemy encampments or fortifications.  When Reveal is cast, gold, silver, potions, and creature generators will show up on the radar map, but only to the caster.</li>
        			<li>Protection: A high level druid can protect his friends with this natural invocation.  By summoning forth small currents of winds to envelop nearby team members, the druid can help make his comrades harder to hit by both close and long range attacks.  Subsequent castings will strengthen and prolong the effect.</li>
        		</ol>
        	</div>
        </div>

	<div class="list-group-item">
		<h4 class="list-group-item-heading">Orc</h4>
		<div class="list-group-item-text">
			<p>Orcs are your basic 'grunt' fighter; strong and hard to hurt, but without much intelligence or ability to do more than inflict pain.  Basic orcs don't have a ranged attack, but their damage at close range is impressive.</p>
			<p>Specials:</p>
			<ol>
        			<li>Howl: An orc's howl of rage has an almost magical quality about it.  Those nearby are often stunned, unable to move or defend themselves.  How long this effect lasts depends on the distance between the orc and its foe and their respective levels.
        			<li>Eat Corpse: Other members of the team tend to ignore the orc's ability of eating the corpses of the enemy (and sometimes friend).  Nevertheless, the strength and power gained by this barbarous act cannot be denied.
        		</ol>
        	</div>
        </div>

	<div class="list-group-item">
		<h4 class="list-group-item-heading">Fire Elemental</h4>
		<div class="list-group-item-text">
			<p>Fire elementals have been known to strike terror into even the toughest of warriors.  Strong and relatively quick, their flaming meteors can inflict hideous wounds upon an enemy, and their speed and size make them dangerous opponents even without this ability.
			<p>Specials:</p>
        		<ol>
        			<li>Starburst: Fire elementals have the ability to release a 'starburst' of flaming death in all directions; this natural defense will sometimes destroy an enemy even as the fire elemental itself perishes.</li>
        		</ol>
        	</div>
        </div>

	<div class="list-group-item">
		<h4 class="list-group-item-heading">Skeleton</h4>
		<div class="list-group-item-text">
			<p>Skeletons are the pathetic remains of those who once were among the living.  Although they are not particularly dangerous, they move with blinding speed, and often surround a living enemy to take it to the grave.</p>
			<p>Specials:</p>
			<ol>
           			<li>Tunnel: These bone-wielding undead have the ability to tunnel quickly underground, sometimes emerging under their hapless victim's feet.  When manipulated by an intelligent mind, this ability also allows them to tunnel under walls and come at the enemy from the rear.</li>
           		</ol>
           	</div>
        </div>

	<div class="list-group-item">
		<h4 class="list-group-item-heading">Ghost</h4>
		<div class="list-group-item-text">
			<p>A more fearsome type of undead, ghosts can pass through walls, trees, and anything else that gets in their way.  Although they cannot inflict damage from a distance, their chilling touch can bring death quickly at close range.</p>
			<p>Specials</p>
			<ol>
           			<li>Scare: A ghost's haunting wail can cause even the bravest of warriors to flee in terror.  When invoked, all nearby enemies will flee away from the ghost; how far they run, and how long the effect lasts, is determined by the power of the ghost and the resistance of the targets.</li>
           		</ol>
           	</div>
        </div>


	<div class="list-group-item">
		<h4 class="list-group-item-heading">Faerie</h4>
		<div class="list-group-item-text">
			<p>The flying faerie are diminutive in stature, flying above friends and enemies alike unnoticed.  Although they are delicate and easily destroyed, faeries can sprinkle a magic powder which can freeze their enemies in place.</p>
		</div>
	</div>

	<div class="list-group-item">
		<h4 class="list-group-item-heading">Slime</h4>
		<div class="list-group-item-text">
			<p> It is hard to say if a slime is truly intelligent, or simply some form of lichen too agitated to remain still.  Although generally peaceful in nature, slimes can make dangerous enemies when disturbed.  From what has been observed of slimes, they begin life as small, relatively harmless patches of ooze which grow until they are bigger than a man.  These large patches of slime then split into two or more small slimes, thus increasing the population.  Slimes are particularly vulnerable to fire or magical attacks.</p>
			<p>Specials:</p>
			<ol>
        			<li>Grow: Slimes can grow larger, or split in two, when they gain enough magical energy.</li>
        		</ol>
        	</div>
	</div>
</div>

<p>In general, each character has about three 'special abilities', although it often requires gaining several levels before these other special abilities become availible.</p>

<p>The statistics from which you can choose to modify here are:</p>

<div class="list-group">
	<div class="list-group-item">
		<h4 class="list-group-item-heading">Strength</h4>
		<div class="list-group-item-text">
    			<p>Strength affects your melee (hand-to-hand) combat, as well as things like your weapon range.</p>
    		</div>
    	</div>

	<div class="list-group-item">
		<h4 class="list-group-item-heading">Constitution</h4>
		<div class="list-group-item-text">
    			<p>Constitution increases your hitpoints and rate of healing, and also affects other combat-related skills.</p>
    		</div>
    	</div>

	<div class="list-group-item">
		<h4 class="list-group-item-heading">Dexterity</h4>
		<div class="list-group-item-text">
    			<p>Dexterity helps improve your ability to dodge, your weapon's accuracy, your speed, and other related skills.</p>
    		</div>
    	</div>

	<div class="list-group-item">
		<h4 class="list-group-item-heading">Intelligence</h4>
		<div class="list-group-item-text">
    			<p>Intelligence controls the amount of 'magic' power you have, how fast this power regenerates, and the success of your special abilities.</p>
    		</div>
    	</div>

	<div class="list-group-item">
		<h4 class="list-group-item-heading">Armor</h4>
		<div class="list-group-item-text">
    			<p>Armor is like shielding; the more you have, the less damage you will take from a given blow.</p>
    		</div>
    	</div>

	<div class="list-group-item">
		<h4 class="list-group-item-heading">Level</h4>
		<div class="list-group-item-text">
    			<p>Your character's level is determined by his experience (currently 0), visible on the right of the screen.  Level affects all stats, and affects what special abilities your character can perform.  While it may look very expensive to buy a level for your character, it can be useful when you're "almost there" and want the increase, as the cost decreases the closer you are to the next level.</p>
    		</div>
    	</div>
</div>

<p>So, from the "Hire" menu you may purchase whatever type(s) of men you choose.  You can edit their stats before you buy them, or, if you prefer, switch to the "Train" menu instead.  The train menu appears similar to the purchasing menu, but the NEXT and PREV buttons will take you through your already purchased men.  When you use the "LESS" and "MORE" buttons for changing their stats, notice that you do not actually pay (and thus make your changes permanent) until you click the "ACCEPT" button; this will purchase the changes, provided you have the funds, and record your character's stats.</p>

<p>Clicking the LEFT mouse button on "+" or "-" button will adjust the value by one point; clicking the RIGHT mouse button will change by five.</p>

<p>After you have chosen to buy a new character (click the BUY button), you get a chance to name your new team member.  Hitting Enter will accept the default name, which will be something like SOLDIER1.</p>

<p>When picking a team, only about the first 25, at most, will appear in a scenario; the others are not lost, but will show up on the next level.  Thus, it is generally best to limit your team to 10 to 20 characters, which is normally quite sufficient.</p>

<p>After you have purchased and edited your team, or any time during this phase, you can choose to "VIEW TEAM." This will display a screen listing the number of each type of character you have, and what "scenario" number you will be attempting next (currently 1).  This screen also contains a "GO" button:  this will start that scenario. There is also a button titled "Set Level."  Clicking this button enables you to jump to any level in the game, including any levels you may have created with the scenario editor.</p>

<p>Before hitting go, this time, press (or click) "ESC" several times until you get to a point where you can save the game.  Don't worry if you go out to the main menu; simply press "continue game" from there; all your team members will still be there.  When saving a game, you have a choice of 10 slots.  Your current game is always saved by the computer as game number 0, and is loaded each time you enter the menu.  Each saved game slot allows you a descriptive name to help keep games in order; just hit Enter after typing the name to save your game.</p>

<p>After saving your game, you're ready to go!  Find the "GO" button (such as from the "VIEW TEAM" menu), click it, and you're off!</p>

<a name="fight"></a>
<h3>Fighting</h3>

<p>You've just hit the "GO" button from the menu.  After a brief fade-out,  you'll see the main screen, which by default will fill the entire screen.  Each corner of the screen (top left, etc.) contains some important information about the state of the game, but more on that in a moment.</p>

<p>When the level first begins, another button with introduction text should appear in the center of the screen.  This text will often tell you about the current level, and may list any special goals or hints.  You can use the arrow keys or the page up/down keys to scroll through the text.  When you are done reading it, hit ESC to continue.</p>

<p>The viewscreen lists several important items.  At the top left should be listed the name or designation of your current character, such as "COMMANDER."  Below that are numbers and bar graphs indicating your current hitpoints and spellpoints.  Be careful -- when your hitpoints go to zero, you're dead!</p>

<p>At the bottom left will appear "SC: 123" and "XP: 456"  This is your score for the current level, which will start at zero and go up as you wreak havok, and your character's experience, which will depend on how much damage that character has personally done.  If you are playing an npc (one of the freebie characters) the level instead of the score will be displayed.  Right above these numbers should be something like "SPC: CHARGE".  This displays your currently-selected special ability.  If it prints in yellow, like the others, you can perform this action.  If it's red, you are unable to do this special right now, most often because you don't have the required magic points.</p>

<p>The numbers following "TEAM" and "FOES" in the upper right are the number of members left alive on your team, and the number of foes left, respectively.</p>

<p>Finally, the lower right corner will be filled with a radar map.  This map shows a larger portion of the playing area than can fit on a screen, and can help you determine where enemies and allies are.  Your team members are shown as red dots; other teams are shown as dots of their respective colors.  Weapons, explosions, and other things will often show up briefly as grey dots.</p>

<p>After hitting ESC to exit the introductory text, the game will begin.  Gladiator uses an angled, mostly overhead view.  You will see your character standing on a field of grass or dirt, perhaps with some trees, cobblestone, or water nearby.  Everybody on your team is wearing red; the bad guys will wear a variety of colors depending on their team (the blue team, the yellow team, etc.).  Normally, when you fire, your shots will pass over your teammates and hit your enemies; use this to your advantage!</p>

<p>When you begin Scenario 1, you are a young recruit in a small band of warriors.  You, personally (at the keyboard) however, may be controlling "Commander."  Commander is an NPC (Non-Player-Character), which in this case means that although he is on your team, you are not able to buy stats for him or examine him when you are in the menu, and he may choose to leave at any time.  There are pro's and con's to having NPCs in your group:  they are often somewhat stronger than your men, and can help keep you alive against the odds, but they DO NOT EARN EXPERIENCE, and will not go up levels, nor can you buy their stats up.  For this reason, it is often good to let the NPCs control themselves, and go off hunting experience with your own men.  You can tell you are controlling an NPC rather than a normal character because the score panel will display his level rather than his experience.</p>

<p>For this scenario, switch characters several times until you get out of the officers and into the enlisted ranks -- your personally bought men.  Try out your ranged attack, if you have one, by pressing the fire key (INSERT), while staying away from enemies.  Try hitting your special key (ENTER) and see what happens.  Later, when you have more special abilities, you can select them with your 'special cycler,' such as numeric "-".  Finally, if you've mastered the art of moving around and firing, head up north and look for the nasty elves who have been killing the local travelers.</p>

<p>Don't be too upset if all your men are slaughtered and you lose the scenario. There's NO penalty; all that will happen is that you will be returned to the menu.  From here, choose "CONTINUE GAME," and then just hit the "GO" button to try it again.</p>

<p>Assuming you're able to overcome the odds and kill all the bad guys (the "FOE" count will drop to zero), it's time to look for the exit to the next level, which in this scenario is near the top.  Exits look like four glowing arrows pointing at each other.  Most often, exits won't function until you have killed all the enemies, although in some special cases you can flee while foes are still alive (if you step on an exit and nothing happens, kill more foes!).  When you've completed the scenario, a small window should appear asking if you'd like to go on to the next level.  Hitting "Y" will save your game and take you to the menu, where you can spend some more hard-earned cash before continuing to the next level. A "N" response will let you stay on the level.  It's often good to check a completed scenario level to see if there are any hidden treasures -- such as gold bars or food -- left around.</p>

<p>On the first scenario, you might notice another exit in the lower left corner of the map; taking this exit will jump you to level 10, in case you know all about the game and don't need the introductory levels to get you started, but it's NOT a good idea to take it when you've just started out!</p>

<p>Even when a good character dies, all is not lost.  A 'heart gem' will appear over the corpse of the deceased; any team member can pick it up and gain back the majority of what it cost to outfit and train that character.  While losing your team members isn't great, you may find yourself unable to complete a difficult level without losses, so don't worry too much about it.</p>

<a name="continue"></a>
<h3>Continuing the cycle</h3>

<p>That's it!  Every time you complete a scenario successfully, your current game will be saved and you'll head back to the menu.  Sometimes there will be places you can pass back through levels you have already completed.  There won't be any enemies or treasure here, but they can serve as passages and rest-stops between areas you've completed and areas yet unsolved.</p>

<p>Once you've learned the basics of Gladiator, try two player!  To toggle the number of players, just click the appropriate button on the main screen.  The currently active mode will be highlighted in red.</p>

<p>If you find the game too tough -- or too easy! -- you can control the difficulty setting of the game from the main menu.  Clicking the "Difficulty" button will select from "Skirmish" (Easy), "Battle" (Normal), and "Slaughter" (Difficulty) modes.  In the easy mode enemies have fewer hitpoints and mana, but are worth fewer points to kill.  The difficult setting is just the opposite: enemies are stronger, but worth more to kill.</p>

<p>The standard Gladiator multi-player system is cooperative (you're all on the same team), although racing for experience is fun.  Score is shared between the team, while experience goes to the character who earned it.</p>

<p>For players who want to try "player-versus-player" mode, this option is available from the training menu.  By default, all characters start out on "Team 1."  If you change this setting (you can select teams 1 through 4), then each player will control a different team of characters.  In this mode, each team has its own score, which can be used to hire and train troops.  A character may change his team at any point from the training menu.</p>

<p>The way teams treat each other is controlled from the main menu's "Player-v-Player" button.  When this setting is set to "Allied," team members will not actively seek each other out as foes, although they may attack NPCs on player teams.  If the "Player-v-Player" setting is set to "Enemy," your team will consider everyone not on your own team as a deadly enemy.</p>

<p>You may play the player-versus-player modes on the normal levels, or in the "300-range" levels.  To select these levels from the registered version, click the "Set Level" button and choose "300" to begin playing.</p>


<a name="hints"></a>
<h3>Hints and Tips</h3>

<ul>
	<li>Two (or more)-player mode can really help make things easier. Frozen by a faerie?  Get your friend to fry him from the side.</li>
	<li>Clerics may feel weak at first, but they're great for healing wounded team members.  They're also great for building a 'wall' of power to block onrushing foes; call your teammates to you while you build a fortress!</li>
	<li>Don't forget to use your special!  If you've got the magic to burn, it's almost always worth it.
	<li>If you have a cleric on your team, and you are hurt, try giving him a push.</li>
	<li>Don't forget to check how much it costs to train your character in a "level."  If she's almost there, you can be a level higher, a scenario sooner, without much cost.</li>
</ul>

<a name="editor"></a>
<h2>Making levels!</h2>
<p>Section coming soon!</p>

<jsp:include page="/includes/footer.jsp" />

