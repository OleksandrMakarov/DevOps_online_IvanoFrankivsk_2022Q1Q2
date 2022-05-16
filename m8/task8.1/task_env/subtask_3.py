def print_even_lines(name):
    file_data = open(file_name, "r")
    list = file_data.readlines()
    
    index = 0
    for line in list:
        if index % 2 != 0:
            print(line.strip())
        index += 1  
    
    file_data.close

file_name = input('Please write file name: ')
print_even_lines(file_name)