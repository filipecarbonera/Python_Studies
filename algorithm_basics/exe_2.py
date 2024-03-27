# 2.2.1. Dizer se a area do quadrado e maior que 100.
print('''
-----------------------------------------------------
 CARACTERIZAR A AREA DO QUADRADO
-----------------------------------------------------
''')

lado = float(input('Digite o tamanho do lado do quadrado:'))

area = lado * lado

print(f'\nA area do quadrado e {area}.')

if area > 100:
    print('A area do quadrado e MAIOR do que 100.')
else:
    print('A area do quadrado e MENOR OU IGUAL do que 100.')