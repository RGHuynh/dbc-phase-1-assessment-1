# Part 4: SQL
Record your queries and any resulting output below.

## Release 0:  Query the Database
1.  What are all the player names?
    
    Query:
  
    ```sql
    SELECT name FROM players;
    ```
    
    Result: 
  
    ```sql
        Abby Wambach
        Dez Bryant  
        Hope Solo   
        Jonathan Toe
        Julie Johnst
        Kerri Walsh 
        Kyrie Irving
        Lebron James
        Misty May-Tr
        Patrick Kane
        Shannon Boxx
        Tony Romo
    ```
  
2.  Which team names include the word "Chicago"?
    
    Query:
  
    ```sql
    SELECT name FROM teams WHERE name LIKE '%Chicago%';
    ```
    
    Result:
  
    ```sql
    Chicago Blackhawks
    Chicago Red Stars 
    ```
  
3.  What are the titles of the positions on the team named "Chicago Blackhawks"?
    
    Query:
  
    ```sql
    SELECT title, name FROM positions INNER JOIN teams ON teams.id = positions.team_id WHERE name = "Chicago Blackhawks";
    ```
    
    Result:
  
    ```sql
        title       name              
    ----------  ------------------
    Right Wing  Chicago Blackhawks
    Center      Chicago Blackhawks
    ```
  
4.  What are the names of the teams Shannon Boxx plays for?
    
    Query:
  
    ```sql
    SELECT teams.name, players.name FROM positions INNER JOIN teams ON teams.id = positions.team_id INNER JOIN players ON players.id = positions.player_id WHERE players.name = 'Shannon Boxx';
    ```
    
    Result:
  
    ```sql
        name                           name        
    -----------------------------  ------------
    United States National Soccer  Shannon Boxx
    Chicago Red Stars              Shannon Boxx
    ```
  
5.  What are the names of the players who play soccer? (Each name should be listed once; no repeats.)
    
    Query:
  
    ```sql
    SELECT DISTINCT
    players.name,
    teams.sport
    FROM
    positions
    INNER JOIN
    teams ON teams.id = positions.team_id
    INNER JOIN
    players ON players.id = positions.player_id
    WHERE
    teams.sport = 'Soccer';
    ```
    
    Result:
  
    ```sql
    name          sport     
    ------------  ----------
    Shannon Boxx  Soccer    
    Hope Solo     Soccer    
    Abby Wambach  Soccer    
    Julie Johnst  Soccer   
    ```
  
6.  What is the name of the team with the most players, and how many players does it have?
    
    Query:
  
    ```sql
    SELECT
    teams.name,
    count(player_id)
    FROM positions
    INNER JOIN
    teams ON teams.id = positions.team_id
    GROUP BY
    teams.name
    ORDER BY
    count(player_id) desc
    LIMIT 1;


    ```
    
    Result:
  
    ```sql
        name                           count(player_id)
    -----------------------------  ----------------
    United States National Soccer  4              
    ```
  

### Release 1: Modify the Database  
1.  The Chicago Blackhawks, one of the teams in the database, signed a player to play "Center" and wear jersey number 99.  The player's name is "Kevin Solorio".  Update the database to reflect this.
  
    Statements run:
  
    ```sql
    UPDATE positions
    SET jersey_number = 99,
    title = "Center"
    WHERE
    positions.id = (SELECT players.id FROM players WHERE name = "Kevin Solorio");

    ```

2.  The team named "Oakland Raiders" is moving to a new city.  It's new name is "Las Vegas Raiders".  Update the database to reflect this.
  
    Statements run:
  
    ```sql
    UPDATE teams
    SET name = "Las Vegas Raiders"
    WHERE 
    name = "Oakland Raiders";
    ```

3.  The player named "Tony Romo" has retired.  Remove this player and their positions from the database.
  
    Statements run:
  
    ```sql
    DELETE 
    FROM 
    positions
    WHERE
    positions.id = (SELECT players.id FROM players WHERE name = "Tony Romo" );

    DELETE 
    FROM
    players
    WHERE
    name = "Tony Romo"; 
    ```
