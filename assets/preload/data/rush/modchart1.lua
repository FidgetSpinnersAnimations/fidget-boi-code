local normal1 = false
local normal2 = false

local camerabeat = false

function start (song)
end

function update (elapsed)
    local currentBeat = (songPos / 1000)*(bpm/60)

	if lockzoom then
		setCamZoom(1)
	end
        
        if spinning then
               for i=0,3 do
                      tweenPosXAngle(i, _G['defaultStrum'..i..'X'],getActorAngle(i) + 360, 0.6, 'setDefault')
               end
               for i=4,7 do
                      tweenPosXAngle(i, _G['defaultStrum'..i..'X'],getActorAngle(i) + 360, 0.6, 'setDefault')
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
        if step == 560 then
                spinning = true
        end
end