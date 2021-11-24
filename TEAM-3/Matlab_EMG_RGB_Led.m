close all;
clc;
y=zeros(1,100000);
a = arduino('COM11','Uno'); %connect to the arduino
cm=1;
while cm<=100000
y = readVoltage(a, 'A0'); %read the analog signal from arduino

    if y >= 0.20 &&  y <= 0.49
    writeDigitalPin(a,'D11',0);
    writeDigitalPin(a,'D12',1);
    writeDigitalPin(a,'D13',1);
    
    else if y >= 0.50 &&  y <= 0.79
    writeDigitalPin(a,'D11',1);
    writeDigitalPin(a,'D12',0);
    writeDigitalPin(a,'D13',1);
    
    else if y >= 0.80 &&  y <= 1.19
    writeDigitalPin(a,'D11',1);
    writeDigitalPin(a,'D12',1);
    writeDigitalPin(a,'D13',0);
    
    else if y >= 1.2 &&  y <= 1.49
    writeDigitalPin(a,'D11',0);
    writeDigitalPin(a,'D12',0);
    writeDigitalPin(a,'D13',0);
    
    else if y >= 1.50 &&  y <= 2
    writeDigitalPin(a,'D11',0);
    writeDigitalPin(a,'D12',1);
    writeDigitalPin(a,'D13',0);
        else
            writeDigitalPin(a,'D11',1);
            writeDigitalPin(a,'D12',1);
            writeDigitalPin(a,'D13',1);
        end
        end
        end
        end
    end
cm=cm+1;
end
