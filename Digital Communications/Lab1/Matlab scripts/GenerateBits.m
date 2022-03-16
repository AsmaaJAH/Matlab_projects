function bit_seq = GenerateBits(N_bits)
%
% Inputs:
%   N_bits:     Number of bits in the sequence
% Outputs:
%   bit_seq:    The sequence of generated bits
%
% This function generates a sequence of bits with length equal to N_bits

bit_seq = zeros(1,N_bits);
%%% WRITE YOUR CODE HERE

bit_seq=rand(1,N_bits)>.4; % Increase number for less ones, decrease for more
        
%%%
%bit_seq=randi([0 1 ] , 1 , N_bits);