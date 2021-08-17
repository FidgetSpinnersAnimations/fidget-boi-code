local normal1 = false
local normal2 = false

local swayingbigger = false

local camerabeat = false

function update (elapsed)
	local currentBeat = (songPos / 1000)*(bpm/60)

	if lockzoom then
		setCamZoom(1)
	end
	
	if shakenote then
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 10 * math.sin((currentBeat * 10 + i*0.25) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 10 * math.cos((currentBeat * 10 + i*0.25) * math.pi) + 10, i)
		end
	end

	if swayingsmall then
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 32 * math.sin((currentBeat + i*0)), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 16,i)
		end
	end

	if swayingslightlybigger then
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat + i*0)), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 16,i)
		end
	end

        if shakegoweee then
		for i=0,7 do
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
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat + i*0) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*5) * math.pi) + 10 ,i)
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
        end
end