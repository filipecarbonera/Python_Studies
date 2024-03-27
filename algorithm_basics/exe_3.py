# 2.3.1. Escrever os numeros pares entre 0 e N. N e fornecido pelo usuario. 
import numpy as np

print('''
-----------------------------------------------------
 NUMEROS PARES ENTRE '0' E 'N'
-----------------------------------------------------
''')

numero = int(input('Digite o numero ate o qual quer contar os pares:'))

for i in range(0,numero+1):
    if i % 2 == 0:
        print(i)