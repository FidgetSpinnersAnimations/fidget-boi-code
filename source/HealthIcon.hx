package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('fidget-spinner', [2, 3], 0, false, isPlayer);
		animation.add('lamp', [4, 5], 0, false, isPlayer);
		animation.add('lamp-angry', [6, 7], 0, false, isPlayer);
		animation.add('fidget-lamp', [8, 9], 0, false, isPlayer);
		animation.add('fidget-lamp-angry', [10, 11], 0, false, isPlayer);
		animation.add('sus-boy', [12, 13], 0, false, isPlayer);
        animation.add('sad-boy', [14, 14], 0, false, isPlayer);
        animation.add('him', [15, 15], 0, false, isPlayer);
		animation.add('lamp-very-angry', [6, 7], 0, false, isPlayer);
		animation.add('dime', [16, 17], 0, false, isPlayer);
		animation.add('button', [16, 17], 0, false, isPlayer);
		animation.add('spike', [16, 17], 0, false, isPlayer);
		animation.add('tangerine', [16, 17], 0, false, isPlayer);
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
