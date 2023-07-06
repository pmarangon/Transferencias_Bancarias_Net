from  random import  randint
itens= ('Pedra', 'Papel', 'Tesoura')
computador = randint(0,2)
print('''Suas opções:
[0]Pedra
[1]Papel
[2]Tesoura''')
jogador = int(input('Qual a sua jogada?'))
print('-='*10)
print('O computador jogou {}'.format(itens[computador]))
print('Jogador escolheu {}'.format(itens[jogador]))
print('-='*11)
if computador == 0: # computador jogou pedra
    if jogador ==0:
        print('Empatou')
    elif jogador == 1:
        print('Jogador Vence')
    elif jogador == 2:
        print('Computador Vence')
    else:
          print('Deu ruim')
elif computador == 1: # computador jogou papel
    if jogador == 0:
        print('Computador Vence')
    elif jogador ==1:
        print('EMPATE')
    elif jogador ==2:
        print('JOGADOR VENCE')
    else:
        print('JOGADA INVALIDA')
elif computador ==2: # computador jogou tesoura
    if jogador ==0:
        print('EMPATE')
    elif jogador ==1 :
        print('COMPUTADOR VENCE')
    elif jogador ==2:
        print('JOGADOR VENCE!')
    else:
        print('JOGADA INVALIDA')