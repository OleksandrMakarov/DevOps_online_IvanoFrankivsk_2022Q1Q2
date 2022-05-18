def print_html_title(file_name):
    file_data = open(file_name, "r")
    list = file_data.readlines()
    text = ' '.join(list)
    title = text[text.find('<title>') + 7 : text.find('</title>')]
    print(title)  
    file_data.close

file_name = input('Please write html file name: ')
print_html_title(file_name)
