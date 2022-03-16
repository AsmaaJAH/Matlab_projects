function BER = ComputeBER(bit_seq,rec_bit_seq)
%
% Inputs:
%   bit_seq:     The input bit sequence
%   rec_bit_seq: The output bit sequence
% Outputs:
%   BER:         Computed BER
%
% This function takes the input and output bit sequences and computes the
% BER

%%% WRITE YOUR CODE HERE
E=0
N = length ( bit_seq )
for ( i = 1:1: N )
   if  bit_seq (i) ~= rec_bit_seq (i) 
       E=E+1;
   end 
end
BER = E / N ;

%%
%another simple solution
%N_bits = 10000;
%BER = biterr(bit_seq,rec_bit_seq) / N_bits ;
%%%
