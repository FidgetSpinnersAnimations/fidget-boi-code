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
			setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat + i*0)) + 350, i)
		end
		for i=4,7 do
			setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat + i*0)) - 275, i)
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
			setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin(currentBeat) + 350, i)
			setActorY(_G['defaultStrum'..i..'Y'] + 64 * math.cos((currentBeat + i*5) * math.pi) + 10,i)
		end
		for i=4,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin(currentBeat) - 275, i)
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
end