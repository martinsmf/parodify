Feature: Reproduzir Paródia

             Sendo um usuário cadastrado
             Quero reproduzir muisicas no player do Parodify
             Para q eu possa ouvir as musicas da minha banda favorita

        Background: Login
            * Login com "maistheus@gmail.com" e "abc123"
        @happy
        Scenario: Ouvir musica

            Given que eu gosto muito de "Rock"
             When toco a seguinte canção:
                  | parodia | Sprints de Luta Sprints de Gloria |
                  | banda   | Charlie Brown Bug                 |
             Then essa paródia deve ficar em modo de reprodução
