import serial
import time

print("Learning PySerial")

ser = serial.Serial('/dev/ttyAMA10', 19200, timeout=15)

time.sleep(2)

ser.reset_input_buffer()
message = "RESET"
print(message)
message_bytes = (message + "\n").encode()
print(message_bytes)
ser.write(message_bytes)

response_bytes = ser.readline()
print(response_bytes)
response = response_bytes.decode().strip()
print(response)


ser.close()