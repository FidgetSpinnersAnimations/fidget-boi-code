local normal1 = false
local normal2 = false

local swayingbigger = false

local camerabeat = false

function start (song)
        BlackFade = makeSprite('BlackFade','BlackFade', true)

        setActorX(200,'BlackFade')
	setActorY(500,'BlackFade')
	setActorAlpha(0,'BlackFade')
	setActorScale(2,'BlackFade')
end

function update (elapsed)
    local currentBeat = (songPos / 1000)*(bpm/60)
        for i=0,3 do
        tweenPosXAngle(i, _G['defaultStrum'..i..'X'],getActorAngle(i) + 360, 0.6, 'setDefault')
        end
        for i=4,7 do
        tweenPosXAngle(i, _G['defaultStrum'..i..'X'],getActorAngle(i) + 360, 0.6, 'setDefault')
        end

	if lockzoom then
		setCamZoom(1)
	end
	
	if shakenote then
		for i=0,3 do
			setActorX(_G['defaultStrum'..i..'X'] + 10 * math.sin((currentBeat * 10 + i*0.25) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 10 * math.cos((currentBeat * 10 + i*0.25) * math.pi) + 10, i)
		end
		for i=4,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 10 * math.sin((currentBeat * 10 + i*0.25) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 10 * math.cos((currentBeat * 10 + i*0.25) * math.pi) + 10, i)
		end
	end

	if swayingsmall then
		for i=0,3 do
			setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0)), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 16,i)
		end
		for i=4,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0)), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 16,i)
		end
	end

	if swayingslightlybigger then
		for i=0,3 do
			setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat + i*0)), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 16,i)
		end
		for i=4,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat + i*0)), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 16,i)
		end
	end

        if shakegoweee then
		for i=0,3 do
			setActorX(_G['defaultStrum'..i..'X'] + 30 * math.sin((currentBeat * 10 + i*0.25) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 30 * math.cos((currentBeat * 10 + i*0.25) * math.pi) + 10, i)
		end
		for i=4,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 30 * math.sin((currentBeat * 10 + i*0.25) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 30 * math.cos((currentBeat * 10 + i*0.25) * math.pi) + 10, i)
		end
        end

	if shakehud then
		for i=0,7 do
			setHudPosition(50 * math.sin((currentBeat * 15 + i*0.25) * math.pi), 50 * math.cos((currentBeat * 15 + i*0.25) * math.pi))
			setCamPosition(-50 * math.sin((currentBeat * 15 + i*0.25) * math.pi), -50 * math.cos((currentBeat * 15 + i*0.25) * math.pi))
		end
	end

	if swayingbigger then
		for i=0,3 do
			setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat + i*0) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*5) * math.pi) + 10 ,i)
		end
		for i=4,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat + i*0) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*5) * math.pi) + 10 ,i)
		end
	end

	if movingaround then
		for i=0,3 do
			tweenPosX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat + i*0)) + 350, i)
		end
		for i=4,7 do
			tweenPosX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat + i*0)) - 275, i)
		end
	end

	if shakeandmove then
		for i=0,3 do
			setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat + i*0)) + 350, i)
                        setActorY(_G['defaultStrum'..i..'Y'] + 10 * math.cos((currentBeat * 10 + i*0.25) * math.pi) + 10, i)
		end
		for i=4,7 do
			setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat + i*0)) - 275, i)
			setActorY(_G['defaultStrum'..i..'Y'] + 10 * math.cos((currentBeat * 10 + i*0.25) * math.pi) + 10, i)
		end
	end

	if swayingbiggest then
		for i=0,3 do
			setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat + i*0)) + 350, i)
			setActorY(_G['defaultStrum'..i..'Y'] + 64 * math.cos((currentBeat + i*5) * math.pi) + 10,i)
		end
		for i=4,7 do
			setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat + i*0)) - 275, i)
			setActorY(_G['defaultStrum'..i..'Y'] - 64 * math.cos((currentBeat + i*5) * math.pi) + 10,i)
		end
	end

	if finalshake then
		for i=0,7 do
			setHudPosition(8 * math.sin((currentBeat * 15 + i*0.25) * math.pi), 8 * math.cos((currentBeat * 15 + i*0.25) * math.pi))
			setCamPosition(8 * math.sin((currentBeat * 15 + i*0.25) * math.pi), 8 * math.cos((currentBeat * 15 + i*0.25) * math.pi))
		end
	end
end


function beatHit (beat)
	if camerabeat then
		setCamZoom(1)
	end
	if bopping then
		setCamZoom(1)
	end
end

function stepHit (step)
	if step == 128 then
		swayingsmall = true
                bopping = true
	end
        if step == 384 then
                swayinglarge = true
                swayingsmall = false
        end
        if step == 544 then
                swayingslightlybigger = true
                swayinglarge = false
        end
        if step == 623 then
                changeDadCharacter('fidget-lamp-angry')
        end
	if step == 1184 then
                swayingbigger = true
                swayingslightlybigger = false
        end
        if step == 1312 then
		shakenote = true
                swayingbigger = false
        end
        if step == 1504 then
                shakegoweee = true
                shakenote = false
        end
        if step == 1631 then
                shakegoweee = false
		for i=0,7 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'], 0, 0.6, 'setDefault')
			setActorY(_G['defaultStrum'..i..'Y'],i)
		end
        end
        if step == 1639 then
		tweenFadeIn(BlackFade,1,0.6)
        end
        if step == 1678 then
                changeDadCharacter('lamp-very-angry')
        end
        if step == 1695 then
		tweenFadeOut(BlackFade,0,0.1)
        end
        if step == 2400 then
                finalshake = true
        end
        if step == 2559 then
                finalshake = false
		for i=0,7 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'], 0, 0.6, 'setDefault')
			tweenPosYAngle(i, _G['defaultStrum'..i..'Y'], 0, 0.6, 'setDefault')
		end
        end
end