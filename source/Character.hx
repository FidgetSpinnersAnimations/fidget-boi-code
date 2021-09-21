package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.animation.FlxBaseAnimation;
import flixel.graphics.frames.FlxAtlasFrames;

using StringTools;

class Character extends FlxSprite
{
	public var animOffsets:Map<String, Array<Dynamic>>;
	public var debugMode:Bool = false;

	public var isPlayer:Bool = false;
	public var curCharacter:String = 'bf';

	public var holdTimer:Float = 0;

	public function new(x:Float, y:Float, ?character:String = "bf", ?isPlayer:Bool = false)
	{
		super(x, y);

		animOffsets = new Map<String, Array<Dynamic>>();
		curCharacter = character;
		this.isPlayer = isPlayer;

		var tex:FlxAtlasFrames;
		antialiasing = true;

		switch (curCharacter)
		{
			case 'gf':
				// GIRLFRIEND CODE
				tex = Paths.getSparrowAtlas('characters/GF_assets');
				frames = tex;
				animation.addByPrefix('cheer', 'GF Cheer', 24, false);
				animation.addByPrefix('singLEFT', 'GF left note', 24, false);
				animation.addByPrefix('singRIGHT', 'GF Right Note', 24, false);
				animation.addByPrefix('singUP', 'GF Up Note', 24, false);
				animation.addByPrefix('singDOWN', 'GF Down Note', 24, false);
				animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				animation.addByIndices('hairBlow', "GF Dancing Beat Hair blowing", [0, 1, 2, 3], "", 24);
				animation.addByIndices('hairFall', "GF Dancing Beat Hair Landing", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "", 24, false);
				animation.addByPrefix('scared', 'GF FEAR', 24);

				addOffset('cheer');
				addOffset('sad', -2, -2);
				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);

				addOffset("singUP", 0, 4);
				addOffset("singRIGHT", 0, -20);
				addOffset("singLEFT", 0, -19);
				addOffset("singDOWN", 0, -20);
				addOffset('hairBlow', 45, -8);
				addOffset('hairFall', 0, -9);

				addOffset('scared', -2, -17);

				playAnim('danceRight');
				
            case 'gf-no-speaker':
				tex = Paths.getSparrowAtlas('characters/gf_nospeaker');
				frames = tex;
				animation.addByPrefix('cheer', 'GF Cheer', 24, false);
				animation.addByPrefix('singLEFT', 'GF left note', 24, false);
				animation.addByPrefix('singRIGHT', 'GF Right Note', 24, false);
				animation.addByPrefix('singUP', 'GF Up Note', 24, false);
				animation.addByPrefix('singDOWN', 'GF Down Note', 24, false);
				animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				animation.addByIndices('hairBlow', "GF Dancing Beat Hair blowing", [0, 1, 2, 3], "", 24);
				animation.addByIndices('hairFall', "GF Dancing Beat Hair Landing", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "", 24, false);
				animation.addByPrefix('scared', 'GF FEAR', 24);

				addOffset('cheer');
				addOffset('sad', -2, -2);
				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);

				addOffset("singUP", 0, 4);
				addOffset("singRIGHT", 0, -20);
				addOffset("singLEFT", 0, -19);
				addOffset("singDOWN", 0, -20);
				addOffset('hairBlow', 45, -8);
				addOffset('hairFall', 0, -9);

				addOffset('scared', -2, -17);

				playAnim('danceRight');
			case 'gf-christmas':
				tex = Paths.getSparrowAtlas('characters/gfChristmas');
				frames = tex;
				animation.addByPrefix('cheer', 'GF Cheer', 24, false);
				animation.addByPrefix('singLEFT', 'GF left note', 24, false);
				animation.addByPrefix('singRIGHT', 'GF Right Note', 24, false);
				animation.addByPrefix('singUP', 'GF Up Note', 24, false);
				animation.addByPrefix('singDOWN', 'GF Down Note', 24, false);
				animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				animation.addByIndices('hairBlow', "GF Dancing Beat Hair blowing", [0, 1, 2, 3], "", 24);
				animation.addByIndices('hairFall', "GF Dancing Beat Hair Landing", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "", 24, false);
				animation.addByPrefix('scared', 'GF FEAR', 24);

				addOffset('cheer');
				addOffset('sad', -2, -2);
				addOffset('danceLeft', 0, -9);
				addOffset('danceRight', 0, -9);

				addOffset("singUP", 0, 4);
				addOffset("singRIGHT", 0, -20);
				addOffset("singLEFT", 0, -19);
				addOffset("singDOWN", 0, -20);
				addOffset('hairBlow', 45, -8);
				addOffset('hairFall', 0, -9);

				addOffset('scared', -2, -17);

				playAnim('danceRight');

			case 'gf-car':
				tex = Paths.getSparrowAtlas('characters/gfCar');
				frames = tex;
				animation.addByIndices('singUP', 'GF Dancing Beat Hair blowing CAR', [0], "", 24, false);
				animation.addByIndices('danceLeft', 'GF Dancing Beat Hair blowing CAR', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF Dancing Beat Hair blowing CAR', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24,
					false);

				addOffset('danceLeft', 0);
				addOffset('danceRight', 0);

				playAnim('danceRight');

			case 'gf-pixel':
				tex = Paths.getSparrowAtlas('characters/gfPixel');
				frames = tex;
				animation.addByIndices('singUP', 'GF IDLE', [2], "", 24, false);
				animation.addByIndices('danceLeft', 'GF IDLE', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				animation.addByIndices('danceRight', 'GF IDLE', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);

				addOffset('danceLeft', 0);
				addOffset('danceRight', 0);

				playAnim('danceRight');

				setGraphicSize(Std.int(width * PlayState.daPixelZoom));
				updateHitbox();
				antialiasing = false;

			case 'bf':
				var tex = Paths.getSparrowAtlas('characters/BOYFRIEND');
				frames = tex;
				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);
				animation.addByPrefix('hit', 'BF hit', 24, false);
				animation.addByPrefix('dodge', 'boyfriend dodge', 24, false);

				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);

				animation.addByPrefix('scared', 'BF idle shaking', 24);
				animation.addByPrefix('getALoad', 'get a load of this guy', 24, false);
				animation.addByPrefix('depressedBoy', 'why does this keep happening to me', 24, false);

				addOffset('idle', -5, 140);
				addOffset('dodge', -65, 150);
				addOffset('hit', -15, 150);
				addOffset('depressedBoy', -5, 140);
				addOffset('getALoad', 45, 200);
				addOffset("singUP", -29, 147);
				addOffset("singRIGHT", -38, 143);
				addOffset("singLEFT", -8, 144);
				addOffset("singDOWN", 40, 120);
				addOffset("singUPmiss", -39, 147);
				addOffset("singRIGHTmiss", -10, 171);
				addOffset("singLEFTmiss", 12, 164);
				addOffset("singDOWNmiss", -1, 151);
				addOffset('hey', 15, 160);
				addOffset('firstDeath', 37, 11);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
				addOffset('scared', -4);

				playAnim('idle');

				flipX = true;

			case 'bf-christmas':
				var tex = Paths.getSparrowAtlas('characters/bfChristmas');
				frames = tex;
				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hey', 'BF HEY', 24, false);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset("hey", 7, 4);

				playAnim('idle');

				flipX = true;
			case 'bf-car':
				var tex = Paths.getSparrowAtlas('characters/bfCar');
				frames = tex;
				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);

				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				playAnim('idle');

				flipX = true;
			case 'bf-pixel':
				frames = Paths.getSparrowAtlas('characters/bfPixel');
				animation.addByPrefix('idle', 'BF IDLE', 24, false);
				animation.addByPrefix('singUP', 'BF UP NOTE', 24, false);
				animation.addByPrefix('singLEFT', 'BF LEFT NOTE', 24, false);
				animation.addByPrefix('singRIGHT', 'BF RIGHT NOTE', 24, false);
				animation.addByPrefix('singDOWN', 'BF DOWN NOTE', 24, false);
				animation.addByPrefix('singUPmiss', 'BF UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF DOWN MISS', 24, false);

				addOffset('idle');
				addOffset("singUP");
				addOffset("singRIGHT");
				addOffset("singLEFT");
				addOffset("singDOWN");
				addOffset("singUPmiss");
				addOffset("singRIGHTmiss");
				addOffset("singLEFTmiss");
				addOffset("singDOWNmiss");

				setGraphicSize(Std.int(width * 6));
				updateHitbox();

				playAnim('idle');

				width -= 100;
				height -= 100;

				antialiasing = false;

				flipX = true;

			case 'bf-pixel-dead':
				frames = Paths.getSparrowAtlas('characters/bfPixelsDEAD');
				animation.addByPrefix('singUP', "BF Dies pixel", 24, false);
				animation.addByPrefix('firstDeath', "BF Dies pixel", 24, false);
				animation.addByPrefix('deathLoop', "Retry Loop", 24, true);
				animation.addByPrefix('deathConfirm', "RETRY CONFIRM", 24, false);
				animation.play('firstDeath');

				addOffset('firstDeath');
				addOffset('deathLoop', -37);
				addOffset('deathConfirm', -37);
				playAnim('firstDeath');
				// pixel bullshit
				setGraphicSize(Std.int(width * 6));
				updateHitbox();
				antialiasing = false;
				flipX = true;
				
              case 'fidget-spinner':

                  frames = Paths.getSparrowAtlas('characters/fidget_spinner_assets');
				  
				  animation.addByPrefix('idle', "fidget idle", 24, false);
				  animation.addByPrefix('singUP', "fidget up", 24, false);
				  animation.addByPrefix('singDOWN', "fidget down", 24, false);
				  animation.addByPrefix('singLEFT', "fidget left", 24, false);
				  animation.addByPrefix('singRIGHT', "fidget right", 24, false);
				  animation.addByPrefix('spin', "SPIN", 24, false);
				  
				  addOffset('idle', 0, -270);
				  addOffset("singUP", 42, -257);
				  addOffset("singRIGHT", 7, -263);
				  addOffset("singLEFT", 55, -261);
				  addOffset("singDOWN", -3, -278);
				  addOffset('spin', 56, -175);
				  
				  playAnim('idle');
				  
              case 'dime':

                  frames = Paths.getSparrowAtlas('characters/dime');
				  
				  animation.addByPrefix('idle', "fidget idle dance", 24, false);
				  animation.addByPrefix('singUP', "fidget up note", 24, false);
				  animation.addByPrefix('singDOWN', "fidget down note", 24, false);
				  animation.addByPrefix('singLEFT', "fidget left note", 24, false);
				  animation.addByPrefix('singRIGHT', "fidget right note", 24, false);
				  
				  addOffset('idle');
				  addOffset("singUP", -1, 3);
				  addOffset("singRIGHT", -13, 0);
				  addOffset("singLEFT", 14, 0);
				  addOffset("singDOWN", -3, -10);
				  
				  playAnim('idle');
				  
				  setGraphicSize(Std.int(width * 1.3));
				  updateHitbox();
				  
              case 'button':

                  frames = Paths.getSparrowAtlas('characters/button');
				  
				  animation.addByPrefix('idle', "fidget idle dance", 24, false);
				  animation.addByPrefix('singUP', "fidget up note", 24, false);
				  animation.addByPrefix('singDOWN', "fidget down note", 24, false);
				  animation.addByPrefix('singLEFT', "fidget left note", 24, false);
				  animation.addByPrefix('singRIGHT', "fidget right note", 24, false);
				  
				  addOffset('idle');
				  addOffset("singUP", -1, 3);
				  addOffset("singRIGHT", -13, 0);
				  addOffset("singLEFT", 14, 0);
				  addOffset("singDOWN", -3, -10);
				  
				  playAnim('idle');
				  
				  setGraphicSize(Std.int(width * 1.3));
				  updateHitbox();
				  
              case 'spike':

                  frames = Paths.getSparrowAtlas('characters/spike');
				  
				  animation.addByPrefix('idle', "fidget idle dance", 24, false);
				  animation.addByPrefix('singUP', "fidget up note", 24, false);
				  animation.addByPrefix('singDOWN', "fidget down note", 24, false);
				  animation.addByPrefix('singLEFT', "fidget left note", 24, false);
				  animation.addByPrefix('singRIGHT', "fidget right note", 24, false);
				  
				  addOffset('idle');
				  addOffset("singUP", -1, 3);
				  addOffset("singRIGHT", -13, 0);
				  addOffset("singLEFT", 14, 0);
				  addOffset("singDOWN", -3, -10);
				  
				  playAnim('idle');
				  
				  setGraphicSize(Std.int(width * 1.3));
				  updateHitbox();
				  
              case 'tangerine':

                  frames = Paths.getSparrowAtlas('characters/tangerine');
				  
				  animation.addByPrefix('idle', "fidget idle dance", 24, false);
				  animation.addByPrefix('singUP', "fidget up note", 24, false);
				  animation.addByPrefix('singDOWN', "fidget down note", 24, false);
				  animation.addByPrefix('singLEFT', "fidget left note", 24, false);
				  animation.addByPrefix('singRIGHT', "fidget right note", 24, false);
				  
				  addOffset('idle');
				  addOffset("singUP", -1, 3);
				  addOffset("singRIGHT", -13, 0);
				  addOffset("singLEFT", 14, 0);
				  addOffset("singDOWN", -3, -10);
				  
				  playAnim('idle');
				  
				  setGraphicSize(Std.int(width * 1.3));
				  updateHitbox();
				  
              case 'lamp':

                  frames = Paths.getSparrowAtlas('characters/lamp_assets');
				  
				  animation.addByPrefix('idle', "sky mad idle", 24, false);
				  animation.addByPrefix('singUP', "sky mad up", 24, false);
				  animation.addByPrefix('singDOWN', "sky mad down", 24, false);
				  animation.addByPrefix('singLEFT', "sky mad left", 24, false);
				  animation.addByPrefix('singRIGHT', "sky mad right", 24, false);
				  
				  addOffset('idle');
				  addOffset("singUP", 60, 20);
				  addOffset("singRIGHT", 17, 10);
				  addOffset("singLEFT", 30, 50);
				  addOffset("singDOWN", -17, 5);
				  
				  playAnim('idle');
				  
              case 'lamp-angry':

                  frames = Paths.getSparrowAtlas('characters/lamp_angry_assets');
				  
				  animation.addByPrefix('idle', "lamp idle angry", 24, false);
				  animation.addByPrefix('singUP', "lamp up angry", 24, false);
				  animation.addByPrefix('singDOWN', "lamp down angry", 24, false);
				  animation.addByPrefix('singLEFT', "lamp left angry", 24, false);
				  animation.addByPrefix('singRIGHT', "lamp right angry", 24, false);
				  animation.addByPrefix('script', "script", 24, false);
				  
				  addOffset('idle', 60, 80);
				  addOffset("singUP", 40, 100);
				  addOffset("singRIGHT", 80, 90);
				  addOffset("singLEFT", 101, 61);
				  addOffset("singDOWN", 70, 90);
				  addOffset('script', 50, 74);
				  
				  playAnim('idle');
				  
			case 'fidget-lamp':
				frames = Paths.getSparrowAtlas('characters/fidget_and_lamp_assets');
				animation.addByPrefix('idle', 'fidget and lamp idle', 24, false);
				animation.addByPrefix('singUP', 'fidget and lamp fidget up', 24, false);
				animation.addByPrefix('singDOWN', 'fidget and lamp fidget down', 24, false);
				animation.addByPrefix('singLEFT', 'fidget and lamp fidget left', 24, false);
				animation.addByPrefix('singRIGHT', 'fidget and lamp fidget right', 24, false);

				animation.addByPrefix('singUP-alt', 'fidget and lamp lamp up', 24, false);

				animation.addByPrefix('singDOWN-alt', 'fidget and lamp lamp down', 24, false);
				animation.addByPrefix('singLEFT-alt', 'fidget and lamp lamp left', 24, false);
				animation.addByPrefix('singRIGHT-alt', 'fidget and lamp lamp right', 24, false);
				
				animation.addByPrefix('slap', 'GUITAR SLAP', 24, false);

				addOffset('idle', 100, -160);
				addOffset('slap', 100, -160);
				addOffset("singUP", 90, -160);
				addOffset("singRIGHT", 159, -160);
				addOffset("singLEFT", 160, -160);
				addOffset("singDOWN", 100, -160);
				addOffset("singUP-alt", 100, -140);
				addOffset("singRIGHT-alt", 106, -153);
				addOffset("singLEFT-alt", 100, -160);
				addOffset("singDOWN-alt", 98, -163);

				playAnim('idle');
				  
			case 'fidget-lamp-angry':
				frames = Paths.getSparrowAtlas('characters/fidget_and_lamp_angry');
				animation.addByPrefix('idle', 'fidget and lamp idle', 24, false);
				animation.addByPrefix('singUP', 'fidget and lamp fidget up', 24, false);
				animation.addByPrefix('singDOWN', 'fidget and lamp fidget down', 24, false);
				animation.addByPrefix('singLEFT', 'fidget and lamp fidget left', 24, false);
				animation.addByPrefix('singRIGHT', 'fidget and lamp fidget right', 24, false);

				animation.addByPrefix('singUP-alt', 'fidget and lamp lamp up', 24, false);

				animation.addByPrefix('singDOWN-alt', 'fidget and lamp lamp down', 24, false);
				animation.addByPrefix('singLEFT-alt', 'fidget and lamp lamp left', 24, false);
				animation.addByPrefix('singRIGHT-alt', 'fidget and lamp lamp right', 24, false);
				
				animation.addByPrefix('ahhh', 'sus', 24, false);
				animation.addByPrefix('mad', 'lamp gets mad', 24, false);
				animation.addByPrefix('slap', 'GUITAR SLAP ANGRY', 24, false);

				addOffset('idle', 100, -160);
				addOffset('slap', 100, -160);
				addOffset('ahhh', 100, -160);
				addOffset("singUP", 90, -160);
				addOffset("singRIGHT", 159, -160);
				addOffset("singLEFT", 160, -160);
				addOffset("singDOWN", 100, -160);
				addOffset("singUP-alt", 100, -140);
				addOffset("singRIGHT-alt", 106, -153);
				addOffset("singLEFT-alt", 100, -160);
				addOffset("singDOWN-alt", 98, -163);
				addOffset('mad', 100, -160);
				
				playAnim('idle');
				
              case 'sus-boy':

                  frames = Paths.getSparrowAtlas('characters/sus_boy');
				  
				  animation.addByPrefix('idle', "sus man idle", 24, false);
				  animation.addByPrefix('singUP', "sus man up", 24, false);
				  animation.addByPrefix('singDOWN', "sus man down", 24, false);
				  animation.addByPrefix('singLEFT', "sus man left", 24, false);
				  animation.addByPrefix('singRIGHT', "sus man right", 24, false);
				  
				  addOffset('idle', 0, -70);
				  addOffset("singUP", 110, -30);
				  addOffset("singRIGHT", -30, -100);
				  addOffset("singLEFT", 230, -80);
				  addOffset("singDOWN", 0, -160);
				  
				  playAnim('idle');
			case 'sad-boy':
                frames = Paths.getSparrowAtlas('characters/sad_boy');
			     
			    animation.addByPrefix('idle', "sad man idle", 24, false);
				animation.addByPrefix('singUP', "sad man up", 24, false);
		        animation.addByPrefix('singDOWN', "sad man down", 24, false);
				animation.addByPrefix('singLEFT', "sad man left", 24, false);
				animation.addByPrefix('singRIGHT', "sad man right", 24, false);
			    animation.addByPrefix('sad', "i am so sad bro", 24, false);

				addOffset('sad', 0, -70);
				addOffset('idle', 0, -70);
		        addOffset("singUP", 110, -30);
				addOffset("singRIGHT", -30, -100);
			    addOffset("singLEFT", 230, -80);
			    addOffset("singDOWN", 0, -160);
				  
			    playAnim('idle');
			case 'him':
                frames = Paths.getSparrowAtlas('characters/him');
			     
			    animation.addByPrefix('idle', "idle", 24, false);
				animation.addByPrefix('singUP', "up", 24, false);
		        animation.addByPrefix('singDOWN', "down", 24, false);
				animation.addByPrefix('singLEFT', "left", 24, false);
				animation.addByPrefix('singRIGHT', "right", 24, false);

				addOffset('idle', 0, -70);
		        addOffset("singUP", 220, 50);
				addOffset("singRIGHT", 40, -50);
			    addOffset("singLEFT", 340, -80);
			    addOffset("singDOWN", 150, -340);
				  
			    playAnim('idle');
			case 'lamp-very-angry':
                frames = Paths.getSparrowAtlas('characters/lamp_very_angry');
			     
			    animation.addByPrefix('idle', "angry boi idle", 24, false);
				animation.addByPrefix('singUP', "angry boi up", 24, false);
		        animation.addByPrefix('singDOWN', "angry boi down", 24, false);
				animation.addByPrefix('singLEFT', "angry boi left", 24, false);
				animation.addByPrefix('singRIGHT', "angry boi right", 24, false);
				animation.addByPrefix('screech', "screm", 24, false);

				addOffset('idle', -37, 103);
		        addOffset("singUP", 50, 130);
				addOffset("singRIGHT", -70, 105);
			    addOffset("singLEFT", 70, 104);
			    addOffset("singDOWN", -26, 85);
				addOffset('screech', 10, 80);
				  
			    playAnim('idle');
		}

		dance();

		if (isPlayer)
		{
			flipX = !flipX;

			// Doesn't flip for BF, since his are already in the right place???
			if (!curCharacter.startsWith('bf'))
			{
				// var animArray
				var oldRight = animation.getByName('singRIGHT').frames;
				animation.getByName('singRIGHT').frames = animation.getByName('singLEFT').frames;
				animation.getByName('singLEFT').frames = oldRight;

				// IF THEY HAVE MISS ANIMATIONS??
				if (animation.getByName('singRIGHTmiss') != null)
				{
					var oldMiss = animation.getByName('singRIGHTmiss').frames;
					animation.getByName('singRIGHTmiss').frames = animation.getByName('singLEFTmiss').frames;
					animation.getByName('singLEFTmiss').frames = oldMiss;
				}
			}
		}
	}

	override function update(elapsed:Float)
	{
		if (!curCharacter.startsWith('bf'))
		{
			if (animation.curAnim.name.startsWith('sing'))
			{
				holdTimer += elapsed;
			}

			var dadVar:Float = 4;

			if (curCharacter == 'dad')
				dadVar = 6.1;
			if (holdTimer >= Conductor.stepCrochet * dadVar * 0.001)
			{
				trace('dance');
				dance();
				holdTimer = 0;
			}
		}

		switch (curCharacter)
		{
			case 'gf':
				if (animation.curAnim.name == 'hairFall' && animation.curAnim.finished)
					playAnim('danceRight');
		}

		super.update(elapsed);
	}

	private var danced:Bool = false;

	/**
	 * FOR GF DANCING SHIT
	 */
	public function dance()
	{
		if (!debugMode)
		{
			switch (curCharacter)
			{
				case 'gf':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}
					
				case 'bf':
                    if (animation.curAnim.name != 'hit' || animation.curAnim.finished)
					{
                        playAnim('idle');
				 	}
					
                    else if (animation.curAnim.name != 'dodge' || animation.curAnim.finished)
					{
                        playAnim('idle');
				 	}
					
                    else if (animation.curAnim.name != 'hey' || animation.curAnim.finished)
					{
                        playAnim('idle');
				 	}
					
                    else if (animation.curAnim.name != 'getALoad' || animation.curAnim.finished)
					{
                        playAnim('idle');
				 	}

				case 'gf-christmas':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}

				case 'gf-car':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}
				case 'gf-pixel':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}

				case 'spooky':
					danced = !danced;

					if (danced)
						playAnim('danceRight');
					else
						playAnim('danceLeft');
				default:
					playAnim('idle');
					
				case 'fidget-spinner':
                    if (animation.curAnim.name != 'spin' || animation.curAnim.finished)
                        playAnim('idle');

				case 'lamp-angry':
                    if (animation.curAnim.name != 'script' || animation.curAnim.finished)
                        playAnim('idle');

				case 'fidget-lamp-angry':
                    if (animation.curAnim.name != 'ahhh' || animation.curAnim.finished)
					{
                        playAnim('idle');
				 	}
				case 'lamp-very-angry':
                    if (animation.curAnim.name != 'screech' || animation.curAnim.finished)
                        playAnim('idle');
			}
		}
	}

	public function playAnim(AnimName:String, Force:Bool = false, Reversed:Bool = false, Frame:Int = 0):Void
	{
		animation.play(AnimName, Force, Reversed, Frame);

		var daOffset = animOffsets.get(AnimName);
		if (animOffsets.exists(AnimName))
		{
			offset.set(daOffset[0], daOffset[1]);
		}
		else
			offset.set(0, 0);

		if (curCharacter == 'gf')
		{
			if (AnimName == 'singLEFT')
			{
				danced = true;
			}
			else if (AnimName == 'singRIGHT')
			{
				danced = false;
			}

			if (AnimName == 'singUP' || AnimName == 'singDOWN')
			{
				danced = !danced;
			}
		}
	}

	public function addOffset(name:String, x:Float = 0, y:Float = 0)
	{
		animOffsets[name] = [x, y];
	}
}
