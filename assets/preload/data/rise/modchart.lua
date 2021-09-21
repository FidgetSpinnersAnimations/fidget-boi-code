local normal1 = false
local normal2 = false

local swayingbigger = false

local camerabeat = false

function start (song)

end

function update (elapsed)
    local currentBeat = (songPos / 1000)*(bpm/60)

	if lockzoom then
		setCamZoom(1)
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
        if curStep == 128 then
	        changeDadCharacter('button')
        end
        if curStep == 256 then
	        changeDadCharacter('tangerine')
        end
end 