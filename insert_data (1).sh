#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games, teams")


cat games.csv  | while IFS="," read YEAR ROUND WINNER OPPONENT W_GOALS O_GOALS
do

if [[ $WINNER != winner ]]
then

TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")

if [[ -z $TEAM_ID ]]
  then

    INSERT_TEAM_RESULTS=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_TEAM_RESULTS == "INSERT 0 1" ]]
        then
        echo $WINNER has been inserted into teams 
      fi
     
fi
fi
done


cat games.csv  | while IFS="," read YEAR ROUND WINNER OPPONENT W_GOALS O_GOALS
do

if [[ $OPPONENT != opponent ]]
  then

    TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")

  if [[ -z $TEAM_ID ]]
    then

      INSERT_TEAM_RESULTS=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_TEAM_RESULTS == "INSERT 0 1" ]]
        then
        echo $OPPONENT has been inserted into teams 
      fi
  
  fi
fi
done 



cat games.csv  | while IFS="," read YEAR ROUND WINNER OPPONENT W_GOALS O_GOALS
do

if [[ $YEAR != year ]]
  then

    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")

    INSERT_GAME_RESULTS=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES ($YEAR,'$ROUND', $WINNER_ID,$OPPONENT_ID,$W_GOALS,$O_GOALS)")
    if [[ $INSERT_GAME_RESULTS == "INSERT 0 1" ]]
        then
        echo $WINNER vs $OPPNENT game has been added
      fi
fi

done