function rec_bit_seq = DecodeBitsFromSamples(rec_sample_seq,case_type,p,fs)
%
% Inputs:
%   rec_sample_seq: The input sample sequence to the channel
%   case_type:      The sampling frequency used to generate the sample sequence
%   fs:             The bit flipping probability
% Outputs:
%   rec_sample_seq: The sequence of sample sequence after passing through the channel
%
% This function takes the sample sequence after passing through the
% channel, and decodes from it the sequence of bits based on the considered
% case and the sampling frequence
if (nargin <= 3)
    fs = 1;
end
N_bits=10000;

switch case_type
    
    
  case 'part_1'
        %%% WRITE YOUR CODE FOR PART 1 HERE
        
        if ( p >= .5 )
            rec_bit_seq = ~(rec_sample_seq);
        else
            rec_bit_seq  = rec_sample_seq;
        end
        
        
   case 'part_2'
        %%% WRITE YOUR CODE FOR PART 2 HERE
        % fs=10;
        rec_bit_seq=zeros(1,N_bits);
        if ( p < .5 )
            
                for i = 1 :N_bits
                    rec_bit_seq(i)= sum(rec_sample_seq( -fs+1+fs*i :  i*fs   ))   >= round(fs/2);
                end
                
        elseif( p >= .5)
                
                for i = 1 :N_bits
                    rec_bit_seq(i)= ~ (  sum(rec_sample_seq( -fs+1+fs*i :  i*fs   ))   >= round(fs/2)   );
                end
                
        end
        %%%
        
   case 'part_3'
        
        %%% WRITE YOUR CODE FOR PART 3 HERE
        rec_bit_seq=zeros(1,N_bits);
        if( p < .5 )
            
            for i = 1 :N_bits
                rec_bit_seq(i)= rec_sample_seq(  (i*fs) -  round(fs/2)  ); % the last bit index - 5 ..... because fs= 10 and i choose to take the middle bit value to be my value
            end
            
        elseif( p >= .5)
            
            for i = 1 :N_bits
                rec_bit_seq(i)= ~ (  rec_sample_seq(  (i*fs) -  round(fs/2)  )) ; % the last bit index - 5 ..... because fs= 10 and i choose to take the middle bit value to be my value
            end  
        end
        %%%
end