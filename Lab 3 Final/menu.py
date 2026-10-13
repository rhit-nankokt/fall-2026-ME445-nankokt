import plateloader

def main(): 
    print("Serial Menu")
    loader = plateloader.PlateLoader(port="/dev/ttyUSB0")
    # loader = plateloader.PlateLoader()
    loader.connect()
    print("0. Exit")
    print("1. RESET")
    print("2. X-AXIS")
    print("3. GRIPPER")
    print("4. Z-AXIS")
    print("5. MOVE")
    print("6. STATUS")
    while True:
        selection = int(input("Selections: "))
        if selection == 0: 
            break
        elif selection == 1:
            response = loader.send_command("RESET")
            print(response)
        elif selection == 2:
            position = input("Select Position: [1,2,3,4,5] ")
            response = loader.send_command("X-AXIS " + str(position))
        elif selection == 3:
            state = input("OPEN or CLOSE: ")
            response = loader.send_command("GRIPPER " + str(state))
        elif selection == 4:
            state = input("EXTEND or RETRACT ")
            response = loader.send_command("Z-AXIS " + str(state))
        elif selection == 5:
            
            response = loader.send_command("RESET")
            print(response)
        elif selection == 6:
            response = loader.send_command("RESET")
            print(response)

    loader.disconnect()
    print("Goodbye!")
        


        

main()