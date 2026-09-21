import serial

print("learning pyserial")

ser = serial.Serial("COM5", 19200, timeout=10)
ser.open()
while not ser.is_open:
    print("Port is open")
    