module Tarefa3_2022li1g013_Spec where

import LI12223
import Tarefa3_2022li1g013
import Test.HUnit

testsT3 :: Test
testsT3 = test ["animaJogo" ~:  Jogo (Jogador (0,0)) (Mapa 4 [(Rio (-2),[Nenhum,Tronco,Tronco,Tronco]),(Relva,[Nenhum,Nenhum,Arvore,Arvore]),(Estrada (-3),[Nenhum,Nenhum,Carro,Carro])]) ~=? animaJogo (Jogo (Jogador (0,0)) (Mapa 4 [(Rio (-2), [Tronco,Tronco,Nenhum,Tronco]),(Relva, [Nenhum,Nenhum,Arvore,Arvore]),(Estrada (-3), [Nenhum,Carro,Carro,Nenhum])])) (Move Cima),
                "animaJogo" ~:  Jogo (Jogador (0,1)) (Mapa 4 [(Rio (-2),[Nenhum,Tronco,Tronco,Tronco]),(Relva,[Nenhum,Nenhum,Arvore,Arvore]),(Estrada (-3),[Nenhum,Nenhum,Carro,Carro])]) ~=? animaJogo (Jogo (Jogador (0,0)) (Mapa 4 [(Rio (-2), [Tronco,Tronco,Nenhum,Tronco]),(Relva, [Nenhum,Nenhum,Arvore,Arvore]),(Estrada (-3), [Nenhum,Carro,Carro,Nenhum])])) (Move Baixo),
                "animaObstaculos" ~: Jogo (Jogador (1,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada 1, [Carro,Nenhum,Nenhum,Carro])]) ~=? animaObstaculos (Jogo (Jogador (1,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada 1, [Nenhum,Nenhum,Carro,Carro])])),
                "atropelamento" ~: Jogo (Jogador (1,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada (-2), [Nenhum,Carro,Carro,Nenhum])]) ~=? animaObstaculos (Jogo (Jogador (1,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada (-2), [Nenhum,Nenhum,Carro,Carro])])),
                "animaObstaculos" ~: Jogo (Jogador (0,0)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Rio 2, [Nenhum,Tronco,Tronco,Nenhum]),(Rio (-1), [Tronco,Nenhum,Tronco,Tronco])]) ~=? animaObstaculos (Jogo (Jogador (0,0)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Rio 2, [Tronco,Nenhum,Nenhum,Tronco]),(Rio (-1), [Tronco,Tronco,Nenhum,Tronco])])),
                "animaObstaculos" ~: Jogo (Jogador (2,1)) (Mapa 4  [(Rio 3,[Nenhum,Tronco,Nenhum,Tronco]),(Relva,[Arvore,Arvore,Nenhum,Nenhum]),(Estrada 2,[Carro,Nenhum,Carro,Nenhum])]) ~=? animaObstaculos (Jogo (Jogador (2,1)) (Mapa 4 [(Rio 3, [Tronco,Nenhum,Tronco,Nenhum]), (Relva, [Arvore,Arvore,Nenhum,Nenhum]), (Estrada 2, [Carro,Nenhum,Carro,Nenhum])])),
                "animaJogador" ~: Jogo (Jogador (1,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada 1, [Nenhum,Nenhum,Carro,Carro])]) ~=? animaJogador (Jogo (Jogador (1,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada 1, [Nenhum,Nenhum,Carro,Carro])])) (Move Cima),
                "animaJogador" ~: Jogo (Jogador (0,0)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada 1, [Nenhum,Nenhum,Carro,Carro])]) ~=? animaJogador (Jogo (Jogador (0,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada 1, [Nenhum,Nenhum,Carro,Carro])])) (Move Cima),
                "animaJogador" ~: Jogo (Jogador (0,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada 1, [Nenhum,Nenhum,Carro,Carro])]) ~=? animaJogador (Jogo (Jogador (0,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada 1, [Nenhum,Nenhum,Carro,Carro])])) (Move Esquerda),
                "animaJogador" ~: Jogo (Jogador (0,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada 1, [Nenhum,Nenhum,Carro,Carro])]) ~=? animaJogador (Jogo (Jogador (1,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada 1, [Nenhum,Nenhum,Carro,Carro])])) (Move Esquerda),
                "animaJogador" ~: Jogo (Jogador (1,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada 1, [Nenhum,Nenhum,Carro,Carro])]) ~=? animaJogador (Jogo (Jogador (0,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada (-2), [Nenhum,Nenhum,Carro,Carro])])) (Move Direita),
                "animaJogador" ~: Jogo (Jogador (3,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada 1, [Nenhum,Carro,Carro,Nenhum])]) ~=? animaJogador (Jogo (Jogador (3,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada (-2), [Nenhum,Carro,Carro,Nenhum])])) (Move Direita),
                "animaJogador"  ~: Jogo (Jogador (1,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada (-2), [Nenhum,Nenhum,Carro,Carro]),(Relva, [Nenhum,Arvore,Arvore,Nenhum])]) ~=? animaJogador (Jogo (Jogador (1,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada (-2), [Nenhum,Nenhum,Carro,Carro]), (Relva, [Nenhum,Arvore,Arvore,Nenhum])])) (Move Baixo),
                "animaJogador" ~: Jogo (Jogador (0,2)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada (-2), [Nenhum,Nenhum,Carro,Carro]),(Relva, [Nenhum,Arvore,Arvore,Nenhum])]) ~=? animaJogador (Jogo (Jogador (0,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Estrada (-2), [Nenhum,Nenhum,Carro,Carro]),(Relva, [Nenhum,Arvore,Arvore,Nenhum])])) (Move Baixo),
                "animaJogador" ~: Jogo (Jogador (2,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Rio 1, [Tronco,Tronco,Nenhum,Nenhum])]) ~=? animaJogador (Jogo (Jogador (1,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Rio 1, [Tronco,Tronco,Nenhum,Nenhum])])) (Move Cima),
                "animaJogador" ~: Jogo (Jogador (0,0)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Rio 1, [Tronco,Tronco,Nenhum,Nenhum])]) ~=? animaJogador (Jogo (Jogador (0,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Rio 1, [Tronco,Tronco,Nenhum,Nenhum])])) (Move Cima),
                "animaJogador" ~: Jogo (Jogador (0,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Rio 1, [Tronco,Tronco,Nenhum,Nenhum])]) ~=? animaJogador (Jogo (Jogador (0,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Rio 1, [Tronco,Tronco,Nenhum,Nenhum])])) (Move Esquerda),
                "animaJogador" ~: Jogo (Jogador (1,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Rio 1, [Tronco,Tronco,Nenhum,Nenhum])]) ~=? animaJogador (Jogo (Jogador (1,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Rio 1, [Tronco,Tronco,Nenhum,Nenhum])])) (Move Esquerda),
                "animaJogador" ~: Jogo (Jogador (1,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Rio 1, [Tronco,Tronco,Nenhum,Nenhum])]) ~=? animaJogador (Jogo (Jogador (0,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Rio 1, [Tronco,Tronco,Nenhum,Nenhum])])) (Move Direita),
                "animaJogador" ~: Jogo (Jogador (3,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Rio 1, [Tronco,Tronco,Nenhum,Nenhum])]) ~=? animaJogador (Jogo (Jogador (3,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Rio 1, [Tronco,Tronco,Nenhum,Tronco])])) (Move Direita),
                "animaJogador" ~: Jogo (Jogador (1,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Rio 1, [Tronco,Tronco,Nenhum,Nenhum]),(Relva, [Nenhum,Arvore,Arvore,Nenhum])]) ~=? animaJogador (Jogo (Jogador (1,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Rio 1, [Tronco,Tronco,Nenhum,Nenhum]), (Relva, [Nenhum,Arvore,Arvore,Nenhum])])) (Move Baixo),
                "animaJogador" ~: Jogo (Jogador (0,2)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Rio 1, [Tronco,Tronco,Nenhum,Nenhum]),(Relva, [Nenhum,Arvore,Arvore,Nenhum])]) ~=? animaJogador (Jogo (Jogador (0,1)) (Mapa 4 [(Relva, [Nenhum,Arvore,Arvore,Nenhum]),(Rio 1, [Tronco,Tronco,Nenhum,Nenhum]),(Relva, [Nenhum,Arvore,Arvore,Nenhum])])) (Move Baixo)
               ]
