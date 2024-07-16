#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
echo -e "\nEnter your username:"
read USERNAME_INPUT

#Getting Game Stats for User
USERNAME=$($PSQL "SELECT DISTINCT username FROM history WHERE username='$USERNAME_INPUT' LIMIT 1")
GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM history WHERE username='$USERNAME_INPUT'")
BEST_GAME=$($PSQL "SELECT MIN(guess_num) FROM history WHERE username='$USERNAME_INPUT'")

if [[ -z $USERNAME ]]
then
  echo "Welcome, $USERNAME_INPUT! It looks like this is your first time here."
  $PSQL "INSERT INTO history(username) VALUES('$USERNAME_INPUT')"
  GAMES_PLAYED=0
  BEST_GAME=0
  echo "Guess the secret number between 1 and 1000:"
else
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  echo "Guess the secret number between 1 and 1000:"
fi

#Generate a random number between 1 and 1000
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
GUESS_COUNT=0

while true; do
  read GUESS
  ((GUESS_COUNT++))

  #Check if the input is an integer
  if ! [[ "$GUESS" =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    continue
  fi
#Play the Game
  if [ "$GUESS" -lt "$SECRET_NUMBER" ]; then
    echo "It's higher than that, guess again:"
  elif [ "$GUESS" -gt "$SECRET_NUMBER" ]; then
    echo "It's lower than that, guess again:"
  else
    echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
    break
  fi
done

# Update the database after the game ends
$PSQL "INSERT INTO history(username, guess_num, sec_num) VALUES('$USERNAME_INPUT', $GUESS_COUNT, $SECRET_NUMBER)"
