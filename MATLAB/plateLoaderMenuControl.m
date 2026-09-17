function plateLoaderMenuControl(s)
while(1)
    switch(menu('Choose command','Reset','X-Axis',...
            'Z-Axis','Gripper','Move','Status','Stacker','Exit'))
        case 1
            writeline(s,'RESET');
        case 2
            movePos = num2str(menu('Choose location to move to','1','2','3','4','5'));
            writeline(s,['X-AXIS ', movePos]);

        case 3
            switch(menu('Z-AXIS:','EXTEND','RETRACT'))
                case 1
                    writeline(s,'Z-AXIS EXTEND');
                case 2
                    writeline(s,'Z-AXIS RETRACT');
            end
        case 4
            switch(menu('Gripper:','OPEN','CLOSE'))
                case 1
                    writeline(s,'GRIPPER OPEN');
                case 2
                    writeline(s,'GRIPPER CLOSE');
            end
        case 5 %Move
            loadPos = num2str(menu('Choose location to move from','1','2','3','4','5'));
            unloadPos = num2str(menu('Choose location to move to','1','2','3','4','5'));
            writeline(s,['MOVE ', loadPos,' ', unloadPos]);
            %writeline(s, ['MOVE ', '1 ', '2'])
        case 6
            writeline(s, 'LOADER_STATUS')
        case 7
            uiwait(helpdlg('Please place plates at all locations except 5'));
            writeline(s,'Z-AXIS RETRACT');
            for i = 1:4
                j = num2str(i);
                writeline(s,['X-AXIS ', j]);
                readline(s);
                writeline(s,'GRIPPER OPEN');
                readline(s);
                writeline(s,'Z-AXIS EXTEND');
                readline(s);
                writeline(s,'GRIPPER CLOSE');
                readline(s);
                writeline(s,'Z-AXIS RETRACT');
                readline(s);
                writeline(s,'X-AXIS 5');
                readline(s);
                writeline(s,'GRIPPER OPEN');
                readline(s);
            end

        case 8
            fprintf("Goodbye!\n");
            break
    end
    
    readline(s)
end
