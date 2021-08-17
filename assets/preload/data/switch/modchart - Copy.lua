local normal = false

local weee = false

local bopping = false
local bopping2 = false


function update (elapsed)
local currentBeat = (songPos / 1000)*(bpm/60)
    if weee then
	for i=0,7 do
		setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat + i*0) * math.pi), i)
	        setActorY(_G['defaultStrum'..i..'Y'] + 32 * math.cos((currentBeat + i*5) * math.pi) + 10 ,i)
		end
	end
    if movingweee then 
        for i = 0, 3 do 
            setActorX(_G['defaultStrum'..i..'X'] + 320 * math.sin((currentBeat + i*0)), i)
            setActorY(_G['defaultStrum'..i..'Y'] + 48 * math.cos((currentBeat + i*32) * math.pi),i)
        end 
        for i = 4, 7 do 
            setActorX(_G['defaultStrum'..i..'X'] - 320 * math.sin((currentBeat + i*0)), i)
            setActorY(_G['defaultStrum'..i..'Y'] + 48 * math.cos((currentBeat + i*32) * math.pi),i)
        end 
    end
end



function beatHit (beat)
	if bopping then
		setCamZoom(1)
	end
    if bopping2 then
		setHudZoom(1.25)
	end
end





function stepHit (step)
	if step == 128 then
                bopping = true
                movingweee = true
        end
        if step == 672 then
                bopping = false
                movingweee = false
                weee = true
        end
    end
end