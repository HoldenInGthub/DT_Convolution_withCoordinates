clc 
clear all
close all

%CT

%% This is your input signal
[~,input_x_] = unit_step_signal(-1,4,100,0,0);
[input_coordinates,input_x__] = unit_step_signal(-1,4,100,-3,0);
input_x=input_x_-input_x__;

%% This is your system response
[~,system_x_] = unit_step_signal(-5,2,100,4,0);
[system_coordinates,system_x__] = unit_step_signal(-5,2,100,-1,0);
system_x=system_x_-system_x__;

%% calculate the convolution
[output_coordinates,output_x]=convolution_withcoordinates(input_coordinates,input_x,system_coordinates,system_x);

%% plot pic
figure(1);
subplot(311);
plot(input_coordinates,input_x);
grid on;
grid minor;
ylim([-.2 1.2]);
title('input signal');


figure(1);
subplot(312);
plot(system_coordinates,system_x);
grid on;
grid minor;
ylim([-.2 1.2]);
title('system response');


figure(1);
subplot(313);
plot(output_coordinates,output_x);
grid on;
grid minor;
title('output signal');
