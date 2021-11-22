import fileinput
a = 0
for nome in fileinput.input('D:\CTD\BIMESTRE2\INFRA\aula10\lista_nomes.txt'):
    if nome.strip() == "Paula":
        print ("Encontrei a Paula")
    else:
        a += 1
        
print ("Encontrei outros ", a, "nomes")

