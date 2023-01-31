clear all 
clc

%%%%%%%%%%%%%%%%%%%%%%%%Parity bits%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pb(1) = 0;
pb(2) = 0;
pb(4) = 0;
pb(8) = 0;
pb(16) = 0;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
parity_array = [];
diff_bits = [];
corrected_code = [];

%%%%%%%%%%%%%%%%%%%%%%%%%%Taking Input%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
message = input('Insert a Binary String of max 16 bits between square Brackets [] :');
msg_length = length(message);

if (msg_length > 16)
    disp('Invalid no. of Bits! Enter max 16 bits')
    
elseif (msg_length==0)
        num_pbits = 0;
        disp('No input given')
else
    %ENCODING
    
    % calculating the no. of parity bits to be inserted
        
    if (msg_length==1)
        num_pbits = 1;
        disp('Number of parity bits for the given input code = ')
        disp(num_pbits)
        
        q = 1;
        w = 1;
        
        for s = 1:(msg_length+num_pbits)
            if ismember(q,[1])
                parity_array(q) = pb(q);
                q = q+1;
            else
                parity_array(q) = message(w);
                w = w+1;
                q = q+1;
            end
        end
        
        %disp('parity_array :')
        %disp(parity_array)
        
        %finding the parity bits
        par1 = parity_array(3:2:end);
        par1 = sum(par1(1,:)==1);
        par1 = mod(par1,2);
        fprintf(['Parity bit 1 = %i \n'],par1)
        parity_array(1) = par1;
        
    elseif (msg_length<=3)
        num_pbits = 2;
        disp('Number of parity bits for the given input code = ')
        disp(num_pbits)
        
        q = 1;
        w = 1;
        
        for s = 1:(msg_length+num_pbits)
            if ismember(q,[1,2])
                parity_array(q) = pb(q);
                q = q+1;
            else
                parity_array(q) = message(w);
                w = w+1;
                q = q+1;
            end
        end
        
        %disp('parity_array :')
        %disp(parity_array)
                
        %finding the parity bit 1
        par1 = parity_array(3:2:end);
        par1 = sum(par1(1,:)==1);
        par1 = mod(par1,2);
        fprintf(['Parity bit 1 = %i \n'],par1)
        parity_array(1) = par1;
        
        %finding the parity bit 2
        parity_2 = [3 6 7 10 11 14 15 18 19];
        x = 1;
        for i = 1:length(parity_array)
            if ismember(i,parity_2(:))
                par2(x) = cumsum(parity_array(i));
                x = x+1;
            else
                par2(x) = 0;
                x = x+1;
            end
        end
        par2 = sum(par2(1,:)==1);
        par2 = mod(par2,2);
        fprintf(['Parity bit 2 = %i \n'],par2)
        parity_array(2) = par2;
        
    elseif (msg_length<=7)
        num_pbits = 3;
        disp('Number of parity bits for the given input code = ')
        disp(num_pbits)
        
        q = 1;
        w = 1;
        
        for s = 1:(msg_length+num_pbits)
            if ismember(q,[1,2,4])
                parity_array(q) = pb(q);
                q = q+1;
            else
                parity_array(q) = message(w);
                w = w+1;
                q = q+1;
            end
        end
        
        %disp('parity_array :')
        %disp(parity_array)
                
        %finding the parity bit 1
        par1 = parity_array(3:2:end);
        par1 = sum(par1(1,:)==1);
        par1 = mod(par1,2);
        fprintf(['Parity bit 1 = %i \n'],par1)
        parity_array(1) = par1;
        
        %finding the parity bit 2
        parity_2 = [3 6 7 10 11 14 15 18 19];
        x = 1;
        for i = 1:length(parity_array)
            if ismember(i,parity_2(:))
                par2(x) = cumsum(parity_array(i));
                x = x+1;
            else
                par2(x) = 0;
                x = x+1;
            end
        end
        par2 = sum(par2(1,:)==1);
        par2 = mod(par2,2);
        fprintf(['Parity bit 2 = %i \n'],par2)
        parity_array(2) = par2;
        
        %finding parity bit 3
        parity_3 = [5 6 7 12 13 14 15 20 21];
        y = 1;
        for j = 1:length(parity_array)
            if ismember(j,parity_3(:))
                par3(y) = cumsum(parity_array(j));
                y = y+1;
                
            else
                par3(y) = 0;
                y = y+1;
            end
        end
        par3 = sum(par3(1,:)==1);
        par3 = mod(par3,2);
        fprintf(['Parity bit 3 = %i \n'],par3)
        parity_array(4) = par3;
        
    elseif (msg_length<=15)
        num_pbits = 4;
        disp('Number of parity bits for the given input code = ')
        disp(num_pbits)
        
        q = 1;
        w = 1;
        
        for s = 1:(msg_length+num_pbits)
            if ismember(q,[1,2,4,8])
                parity_array(q) = pb(q);
                q = q+1;
            else
                parity_array(q) = message(w);
                w = w+1;
                q = q+1;
            end
        end
        
        %disp('parity_array :')
        %disp(parity_array)
                
        %finding the parity bit 1
        par1 = parity_array(3:2:end);
        par1 = sum(par1(1,:)==1);
        par1 = mod(par1,2);
        fprintf(['Parity bit 1 = %i \n'],par1)
        parity_array(1) = par1;
        
        %finding the parity bit 2
        parity_2 = [3 6 7 10 11 14 15 18 19];
        x = 1;
        for i = 1:length(parity_array)
            if ismember(i,parity_2(:))
                par2(x) = cumsum(parity_array(i));
                x = x+1;
            else
                par2(x) = 0;
                x = x+1;
            end
        end
        par2 = sum(par2(1,:)==1);
        par2 = mod(par2,2);
        fprintf(['Parity bit 2 = %i \n'],par2)
        parity_array(2) = par2;
        
        %finding parity bit 3
        parity_3 = [5 6 7 12 13 14 15 20 21];
        y = 1;
        for j = 1:length(parity_array)
            if ismember(j,parity_3(:))
                par3(y) = cumsum(parity_array(j));
                y = y+1;
                
            else
                par3(y) = 0;
                y = y+1;
            end
        end
        par3 = sum(par3(1,:)==1);
        par3 = mod(par3,2);
        fprintf(['Parity bit 3 = %i \n'],par3)
        parity_array(4) = par3;
        
        %finding parity bit 4
        parity_4 = [9 10 11 12 13 14 15];
        z = 1;
        for k = 1:length(parity_array)
            if ismember(k,parity_4(:))
                par4(z) = cumsum(parity_array(k));
                z = z+1;
                
            else
                par4(z) = 0;
                z = z+1;
            end
        end
        par4 = sum(par4(1,:)==1);
        par4 = mod(par4,2);
        fprintf(['Parity bit 4 = %i \n'],par4)
        parity_array(8) = par4;
        
    elseif (msg_length==16)
        num_pbits = 5;
        disp('Number of parity bits for the given input code = ')
        disp(num_pbits)
        
        q = 1;
        w = 1;
        
        for s = 1:(msg_length+num_pbits)
            if ismember(q,[1,2,4,8,16])
                parity_array(q) = pb(q);
                q = q+1;
            else
                parity_array(q) = message(w);
                w = w+1;
                q = q+1;
            end
        end
        
        %disp('parity_array :')
        %disp(parity_array)
                
        %finding the parity bit 1
        par1 = parity_array(3:2:end);
        par1 = sum(par1(1,:)==1);
        par1 = mod(par1,2);
        fprintf(['Parity bit 1 = %i \n'],par1)
        parity_array(1) = par1;
        
        %finding the parity bit 2
        parity_2 = [3 6 7 10 11 14 15 18 19];
        x = 1;
        for i = 1:length(parity_array)
            if ismember(i,parity_2(:))
                par2(x) = cumsum(parity_array(i));
                x = x+1;
            else
                par2(x) = 0;
                x = x+1;
            end
        end
        par2 = sum(par2(1,:)==1);
        par2 = mod(par2,2);
        fprintf(['Parity bit 2 = %i \n'],par2)
        parity_array(2) = par2;
        
        %finding parity bit 3
        parity_3 = [5 6 7 12 13 14 15 20 21];
        y = 1;
        for j = 1:length(parity_array)
            if ismember(j,parity_3(:))
                par3(y) = cumsum(parity_array(j));
                y = y+1;
                
            else
                par3(y) = 0;
                y = y+1;
            end
        end
        par3 = sum(par3(1,:)==1);
        par3 = mod(par3,2);
        fprintf(['Parity bit 3 = %i \n'],par3)
        parity_array(4) = par3;
        
        %finding parity bit 4
        parity_4 = [9 10 11 12 13 14 15];
        z = 1;
        for k = 1:length(parity_array)
            if ismember(k,parity_4(:))
                par4(z) = cumsum(parity_array(k));
                z = z+1;
                
            else
                par4(z) = 0;
                z = z+1;
            end
        end
        par4 = sum(par4(1,:)==1);
        par4 = mod(par4,2);
        fprintf(['Parity bit 4 = %i \n'],par4)
        parity_array(8) = par4;
        
        %finding the parity bit 5
        parity_5 = [17 18 19 20 21];
        h = 1;
        for v = 1:length(parity_array)
            if ismember(v,parity_5(:))
                par5(h) = cumsum(parity_array(v));
                h = h+1;
                
            else
                par5(h) = 0;
                h = h+1;
            end
        end
        par5 = sum(par5(1,:)==1);
        par5 = mod(par5,2);
        fprintf(['Parity bit 5 = %i \n'],par5)
        parity_array(16) = par5;
                
    end  
    disp('After inserting Parity bits we got the following code : ')
    disp(parity_array)
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ADDING NOISE%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    %generating random position for adding noise
    if msg_length>=1
        rand_pos = randi((length(parity_array)-num_pbits),1);
        %disp('Random position ')
        %disp(rand_pos)

        %generating random 0 or 1 to be added as noise

        parity_array_noise = parity_array;
        parity_array_noise(rand_pos) = ~parity_array_noise(rand_pos);
        disp('Code with noise')
        disp(parity_array_noise)
    end
    
    %%%%%%%%%%%%%%%%%%%%%%DECODING%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    if num_pbits == 1
        %finding the parity bit 1
        p1 = parity_array_noise(3:2:end);
        p1 = sum(p1(1,:)==1);
        p1 = mod(p1,2);
        fprintf(['Parity bit 1 = %i \n'],p1)
        
        %comparing the encoded/received and decoded parity bits
    
        if parity_array_noise(1) ~= p1
            diff_bits(1) = 1;
        else
            diff_bits(1) = 0;        
        end
        
    elseif num_pbits == 2
        %finding the parity bit 1
        p1 = parity_array_noise(3:2:end);
        p1 = sum(p1(1,:)==1);
        p1 = mod(p1,2);
        fprintf(['Parity bit 1 = %i \n'],p1)
        
        %finding the parity bit 2
        p_2 = [3 6 7 10 11 14 15 18 19];
        x1 = 1;
        for ii = 1:length(parity_array_noise)
            if ismember(ii,p_2(:))
                p2(x1) = cumsum(parity_array_noise(ii));
                x1 = x1+1;
            else
                p2(x1) = 0;
                x1 = x1+1;
            end
        end
        p2 = sum(p2(1,:)==1);
        p2 = mod(p2,2);
        fprintf(['Parity bit 2 = %i \n'],p2)
        
        %comparing the encoded and decoded parity bits
    
        if parity_array_noise(1) ~= p1
            diff_bits(1) = 1;
        else
            diff_bits(1) = 0;        
        end

        if parity_array_noise(2) ~= p2
            diff_bits(2) = 2;
        else
            diff_bits(2) = 0;        
        end
        
    elseif num_pbits == 3
        %finding the parity bit 1
        p1 = parity_array_noise(3:2:end);
        p1 = sum(p1(1,:)==1);
        p1 = mod(p1,2);
        fprintf(['Parity bit 1 = %i \n'],p1)
        
        %finding the parity bit 2
        p_2 = [3 6 7 10 11 14 15 18 19];
        x1 = 1;
        for ii = 1:length(parity_array_noise)
            if ismember(ii,p_2(:))
                p2(x1) = cumsum(parity_array_noise(ii));
                x1 = x1+1;
            else
                p2(x1) = 0;
                x1 = x1+1;
            end
        end
        p2 = sum(p2(1,:)==1);
        p2 = mod(p2,2);
        fprintf(['Parity bit 2 = %i \n'],p2)
        
        %finding parity bit 3
        p_3 = [5 6 7 12 13 14 15 20 21];
        y1 = 1;
        for jj = 1:length(parity_array_noise)
            if ismember(jj,p_3(:))
                p3(y1) = cumsum(parity_array_noise(jj));
                y1 = y1+1;
                
            else
                p3(y1) = 0;
                y1 = y1+1;
            end
        end
        p3 = sum(p3(1,:)==1);
        p3 = mod(p3,2);
        fprintf(['Parity bit 3 = %i \n'],p3)
        
        %comparing the encoded and decoded parity bits
    
        if parity_array_noise(1) ~= p1
            diff_bits(1) = 1;
        else
            diff_bits(1) = 0;        
        end

        if parity_array_noise(2) ~= p2
            diff_bits(2) = 2;
        else
            diff_bits(2) = 0;        
        end

        if parity_array_noise(4) ~= p3
            diff_bits(3) = 4;
        else
            diff_bits(3) = 0;        
        end
        
    elseif num_pbits == 4
        %finding the parity bit 1
        p1 = parity_array_noise(3:2:end);
        p1 = sum(p1(1,:)==1);
        p1 = mod(p1,2);
        fprintf(['Parity bit 1 = %i \n'],p1)
        
        %finding the parity bit 2
        p_2 = [3 6 7 10 11 14 15 18 19];
        x1 = 1;
        for ii = 1:length(parity_array_noise)
            if ismember(ii,p_2(:))
                p2(x1) = cumsum(parity_array_noise(ii));
                x1 = x1+1;
            else
                p2(x1) = 0;
                x1 = x1+1;
            end
        end
        p2 = sum(p2(1,:)==1);
        p2 = mod(p2,2);
        fprintf(['Parity bit 2 = %i \n'],p2)
        
        %finding parity bit 3
        p_3 = [5 6 7 12 13 14 15 20 21];
        y1 = 1;
        for jj = 1:length(parity_array_noise)
            if ismember(jj,p_3(:))
                p3(y1) = cumsum(parity_array_noise(jj));
                y1 = y1+1;
                
            else
                p3(y1) = 0;
                y1 = y1+1;
            end
        end
        p3 = sum(p3(1,:)==1);
        p3 = mod(p3,2);
        fprintf(['Parity bit 3 = %i \n'],p3)
        
        %finding parity bit 4
        p_4 = [9 10 11 12 13 14 15];
        z1 = 1;
        for kk = 1:length(parity_array_noise)
            if ismember(kk,p_4(:))
                p4(z1) = cumsum(parity_array_noise(kk));
                z1 = z1+1;
                
            else
                p4(z1) = 0;
                z1 = z1+1;
            end
        end
        p4 = sum(p4(1,:)==1);
        p4 = mod(p4,2);
        fprintf(['Parity bit 4 = %i \n'],p4)
        
        %comparing the encoded and decoded parity bits
    
        if parity_array_noise(1) ~= p1
            diff_bits(1) = 1;
        else
            diff_bits(1) = 0;        
        end

        if parity_array_noise(2) ~= p2
            diff_bits(2) = 2;
        else
            diff_bits(2) = 0;        
        end

        if parity_array_noise(4) ~= p3
            diff_bits(3) = 4;
        else
            diff_bits(3) = 0;        
        end

        if parity_array_noise(8) ~= p4
            diff_bits(4) = 8;
        else
            diff_bits(4) = 0;        
        end
        
    elseif num_pbits == 5
        %finding the parity bit 1
        p1 = parity_array_noise(3:2:end);
        p1 = sum(p1(1,:)==1);
        p1 = mod(p1,2);
        fprintf(['Parity bit 1 = %i \n'],p1)
        
        %finding the parity bit 2
        p_2 = [3 6 7 10 11 14 15 18 19];
        x1 = 1;
        for ii = 1:length(parity_array_noise)
            if ismember(ii,p_2(:))
                p2(x1) = cumsum(parity_array_noise(ii));
                x1 = x1+1;
            else
                p2(x1) = 0;
                x1 = x1+1;
            end
        end
        p2 = sum(p2(1,:)==1);
        p2 = mod(p2,2);
        fprintf(['Parity bit 2 = %i \n'],p2)
        
        %finding parity bit 3
        p_3 = [5 6 7 12 13 14 15 20 21];
        y1 = 1;
        for jj = 1:length(parity_array_noise)
            if ismember(jj,p_3(:))
                p3(y1) = cumsum(parity_array_noise(jj));
                y1 = y1+1;
                
            else
                p3(y1) = 0;
                y1 = y1+1;
            end
        end
        p3 = sum(p3(1,:)==1);
        p3 = mod(p3,2);
        fprintf(['Parity bit 3 = %i \n'],p3)
        
        %finding parity bit 4
        p_4 = [9 10 11 12 13 14 15];
        z1 = 1;
        for kk = 1:length(parity_array_noise)
            if ismember(kk,p_4(:))
                p4(z1) = cumsum(parity_array_noise(kk));
                z1 = z1+1;
                
            else
                p4(z1) = 0;
                z1 = z1+1;
            end
        end
        p4 = sum(p4(1,:)==1);
        p4 = mod(p4,2);
        fprintf(['Parity bit 4 = %i \n'],p4)
        
        %finding the parity bit 5
        p_5 = [17 18 19 20 21];
        h1 = 1;
        for vv = 1:length(parity_array_noise)
            if ismember(vv,p_5(:))
                p5(h1) = cumsum(parity_array_noise(vv));
                h1 = h1+1;
                
            else
                p5(h1) = 0;
                h1 = h1+1;
            end
        end
        p5 = sum(p5(1,:)==1);
        p5 = mod(p5,2);
        fprintf(['Parity bit 5 = %i \n'],p5)
        
        %comparing the encoded and decoded parity bits
    
        if parity_array_noise(1) ~= p1
            diff_bits(1) = 1;
        else
            diff_bits(1) = 0;        
        end

        if parity_array_noise(2) ~= p2
            diff_bits(2) = 2;
        else
            diff_bits(2) = 0;        
        end

        if parity_array_noise(4) ~= p3
            diff_bits(3) = 4;
        else
            diff_bits(3) = 0;        
        end

        if parity_array_noise(8) ~= p4
            diff_bits(4) = 8;
        else
            diff_bits(4) = 0;        
        end

        if parity_array_noise(16) ~= p5
            diff_bits(5) = 16;
        else
            diff_bits(5) = 0;        
        end
    end
    
    %fprintf(['diff_bits = %i \n'],diff_bits)
    
    %%%%%%%%%%%%%%%%%%%%%%%%%% Finding which bit has Error%%%%%%%%%%%%%%%%%%%% 
    error_bit = sum(diff_bits);
    if error_bit == 0
        disp('There is no Error in the code')
    else
        disp('Error found on the following bit no. :')
        disp(error_bit)
        
        parity_array_noise(error_bit) = ~parity_array_noise(error_bit);  %inverting the error bit to correct the error
        disp('Code after error removal :')
        disp(parity_array)
        disp('Detected Error has been corrected')
    end
    
    %%%%%%%%%%removing the parity bits to get the final code %%%%%%%%%%%%%%
    
    if num_pbits==1
        parity_array_noise(1)=[];
        
    elseif num_pbits==2
        parity_array_noise(1)=[];
        parity_array_noise(1)=[];
        
    elseif num_pbits==3
        parity_array_noise(1)=[];
        parity_array_noise(1)=[];
        parity_array_noise(2)=[];
        
    elseif num_pbits==4
        parity_array_noise(1)=[];
        parity_array_noise(1)=[];
        parity_array_noise(2)=[];
        parity_array_noise(5)=[];
                
    elseif num_pbits==5
        parity_array_noise(1)=[];
        parity_array_noise(1)=[];
        parity_array_noise(2)=[];
        parity_array_noise(5)=[];
        parity_array_noise(12)=[];
    end

%%%%%%%%%%% Finally Displaying then Sent and Received Code%%%%%%%%%%%%%%%%%
    if message == parity_array_noise
        disp('Code corrected sucessfully')
        disp('The code given by User :')
        disp(message)
        disp('The Final received code is :')
        disp(parity_array_noise)
    else 
        disp('The Code is still incorrect.')
    end
end