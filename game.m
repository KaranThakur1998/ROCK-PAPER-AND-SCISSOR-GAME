clc;
clear all;
n=1;
pw=0;
cw=0;
[a fs]=audioread('choose.wav');
[b fs]=audioread('playw.wav');
[c fs]=audioread('compw.wav');
[d fs]=audioread('tie.wav');
[e fs]=audioread('playc.wav');
[f fs]=audioread('compc.wav');
[g fs]=audioread('bothc.wav');

    pause(2);
   sound(a,fs);
 while n<6
    fprintf('GAME NUMBER %d\n',n);
  
    player=questdlg('CHOOSE ANY OF YOUR CHOICE','RPS','ROCK','PAPER','SCISSOR','rock');
   
     
    switch player
        case 'ROCK'
            play=imread('rock.png');
            subplot(121);
            imshow(play);
            title('YOU INPUT ROCK');
    end
    
      switch player
        case 'PAPER'
            play=imread('paper.png');
            subplot(121);
            imshow(play);
            title('YOU INPUT PAPER');
      end
    
      switch player
        case 'SCISSOR'
            play=imread('scissor.png');
            subplot(121);
            imshow(play);
            title('YOU INPUT SCISSOR');
      end
      pause(0.5);
      comp=randi(3);
      if comp==1
       
            play1=imread('rock.png');
            subplot(122);
            imshow(play1);
            title('COMPUTER CHOOSE ROCK');
      end
    
        if comp==2
       
            play1=imread('paper.png');
            subplot(122);
            imshow(play1);
            title('COMPUTER CHOOSE PAPER');
    end
      
        if comp==3
       
            play1=imread('scissor.png');
            subplot(122);
            imshow(play1);
            title('COMPUTER CHOOSE SCISSOR');
        end
    pause(1);
    if strcmp(player,'ROCK') && comp==2
        msgbox('COMPUTER WINS','YOU LOST','custom',play1);
            sound(c,fs);
        cw=cw+1;
    end
    
    if strcmp(player,'ROCK') && comp==3
        msgbox('PLAYER WINS','COMPUTER LOST','custom',play);
        sound(b,fs);
         pw=pw+1;
    end
    
    if strcmp(player,'ROCK') && comp==1
        msgbox('TIE');
        sound(d,fs);
    end
      
        
        if strcmp(player,'PAPER') && comp==1
            msgbox('PLAYER WINS','YOU WIN','custom',play);
            sound(b,fs);
             pw=pw+1;
        end
        
        if strcmp(player,'PAPER') && comp==3
            msgbox('COMPUTER WINS','YOU LOST','custom',play1);
            sound(c,fs);
        cw=cw+1;
        end
        
        if strcmp(player,'PAPER') && comp==2
            msgbox('TIE');
              sound(d,fs);
        end
        
        
        if strcmp(player,'SCISSOR') && comp==1
            msgbox('COMPUTER WINS','YOU LOST','custom',play1);
                sound(c,fs);
        cw=cw+1;
        end
        
        if strcmp(player,'SCISSOR') && comp==2
            msgbox('PLAYER WINS','COMPUTER LOST','custom',play);
            sound(b,fs);
            pw=pw+1;
        end
        
        if strcmp(player,'SCISSOR') && comp==3
            msgbox('TIE');
              sound(d,fs);
        end
      pause(5); 
    n=n+1;
    if (n==6)
        fprintf('GAME FINISHED');
        if cw>pw
         msgbox('COMPUTER IS CHAMPION ','YOU LOST','custom',play1);
         sound(f,fs);
        end
        if cw<pw
         msgbox('PLAYER IS CHAMPION','YOU WIN','custom',play);
            sound(e,fs);
        end
        if cw==pw
         msgbox('BOTH ARE CHAMPIONS');
         sound(g,fs);
        end
    end
 end