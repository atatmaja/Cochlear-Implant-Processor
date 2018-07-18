function Hd = getKaiserWindowLPF()
%GETKAISERWINDOWLPF Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 8.5 and the DSP System Toolbox 9.0.
% Generated on: 07-Jul-2018 21:11:50

Fpass = 400;    % Passband Frequency
Fstop = 450;    % Stopband Frequency
Apass = 1;      % Passband Ripple (dB)
Astop = 60;     % Stopband Attenuation (dB)
Fs    = 16000;  % Sampling Frequency

h = fdesign.lowpass('fp,fst,ap,ast', Fpass, Fstop, Apass, Astop, Fs);

Hd = design(h, 'kaiserwin');



