import openpyxl

wb=openpyxl.Workbook()
ws=wb.active

file = open("sample_text.txt","r")

count=1
while True:
    line = file.readline()
    if len(line)==0:
        break
    
    temp = list(line.split(","))
    for word in temp:
        ws.cell(row=count,column=1,value=word)
        count+=1

wb.save("sample_text.xlsx")

wb.close