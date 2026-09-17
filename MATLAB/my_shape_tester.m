clear all
clc

close all
xlim([0 10])
ylim([0 10])

tri = MyShape([1,3,5],[1,4,1],'y');

rect = MyShape([6 9 9 6],[1 1 3 3], 'r');

for k = 1:100
pause(0.05);
tri.move(0,0.01);
pause(0.05 );
rect.move(-.01,.01);
end