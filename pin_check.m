%Use pins_s array and mat array
global pins_s;
global mat;
for r=1:3
    for c=1:3
        %checking push buttons
        if digitalRead(a,pins_s(r,c))==1
            %identify the player
            if rem(player,2)==1
                mat(r,c)=1;
            else
                mat(r,c)=0;
            end
        end
    end
end

        
                
            
    