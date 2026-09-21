import serial

print("learning pyserial")

ser = serial.Serial("/dev/ttyACM0", 19200, timeout=10)
while not ser.is_open:
    print("Port is open")



ser.close()