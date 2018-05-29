%define an arra for pins as pins_s.These pins are connected to the switches
%in the arduino board.

%make the pins_l array a global var
global pins_s;
pins_s= [2,3,4;5,6,7;8,9,10];

%define an array for pins as pins_l.These pins are connected to the LED's
%in the arduino board.
pins_l= [11,12,13;14,15,16;17,18,19];
%Assign output pins
pinMode(a,2,'OUTPUT');
pinMode(a,3,'OUTPUT');
pinMode(a,4,'OUTPUT');
pinMode(a,5,'OUTPUT');
pinMode(a,6,'OUTPUT');
pinMode(a,7,'OUTPUT');
pinMode(a,8,'OUTPUT');
pinMode(a,9,'OUTPUT');
pinMode(a,10,'OUTPUT');
pinMode(a,11,'OUTPUT');
pinMode(a,12,'OUTPUT');
pinMode(a,13,'OUTPUT');
pinMode(a,14,'OUTPUT');
pinMode(a,15,'OUTPUT');
pinMode(a,16,'OUTPUT');
pinMode(a,17,'OUTPUT');
pinMode(a,18,'OUTPUT');
pinMode(a,19,'OUTPUT');

%Define a random matrix.(here every entry is 8).Make it to a global
%variable.
global mat;

mat = [8,8,8;8,8,8;8,8,8];
%call the gui function
untitled();

%set the player number
player = 1;

%start infinite loop
while 1>0
    %call the pin checking function
    pin_check()
    
    %Reading the matix and lighting the LED's
    %Reading the rows
    for r=1:3
        %Reading the columns
        for c=1:3
           if mat(r,c)==1
                
                %blinking for player 1
                digitalWrite(a,pins_l(r,c),0);
                pause(0.5);
                digitalWrite(a,pins_l(r,c),1);
                
                
            elseif mat(r,c)==0
                %stedy glow for player 2
                
                digitalWrite(a,pins_l(r,c),1);
            
            end
        end
    end
    %check winner
    check_winner();
    if stat==1
        %current player is the winner
        break
    end
    %switch the player
    player = player+1;
    
    pause(0.5);
end
