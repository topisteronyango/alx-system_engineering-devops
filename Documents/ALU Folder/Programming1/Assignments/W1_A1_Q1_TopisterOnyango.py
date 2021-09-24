# Write a program that prints your initials in big letters: Topister Onyango (TO)
# str = "TO"
# create two full nested list
print_T = [[" " for i in range(10)] for j in range(10)]
print_O = [[" " for i in range(10)] for j in range(10)]

# Code for two initials separately and finally combine the two
# Use a for loop
# Code for initial T
for row in range(10):
    for col in range(9):
        if col == 4 or (row == 0 and col != 4):
           print_T[row][col] = "T"

# code for O
for row in range(10):
    for col in range(10):
        if ((row == 0 or row == 9) and (col != 0 and col != 9)) or (col == 0 or col == 9) and (row != 0 and row != 9):
            print_O[row][col] = "O"
# combine code for T and O and print
for i in range(10):
    for j in range(10):
        print(print_T[i][j], end=" ")
    print(end="  ")
    for j in range(10):
        print(print_O[i][j], end=" ")
    print()
