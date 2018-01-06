# Part 2: Work with a Collection
## Summary
In this part of the assessment, we are going to be working with a collection of objects.  We've been provided three classes and tests that describe the behaviors of the classes.  Take a look at the provided code before moving on to completing this part of the assessment.

### 'Team' and 'PointsCalculator'
The `Team` and `PointsCalculator` classes have been written for us.  Furthermore, tests have been provided that describe the behaviors of these classes.  Read the code for these classes and the test code because we'll be working with these objects later

### `League`
A league is a collection of teams. We can initialize a league with a collection of teams and a points calculator. Your task is to add functionality to the `League` class to allow it to answer the following questions:

- What is the current ranking of the teams? (Highest to Lowest)
- What teams will make the playoffs? (Top half of the teams)
- What place is a team current holding

## Running the Tests
If you have questions on how to run the tests, please check the [rspec-help](../rspec-help.md) document.

## Releases
### Release 0: `League#standings`
`Team` objects know their record, and the `PointsCalculator` knows how to convert this data into a single comparable value. To determine the current standing of the league, we'll need to leverage these objects to find out how the teams stack up.

A group of tests is provided to describe how an instance of `League` behaves when told to supply the current standings.  This group of tests is [tagged](https://www.relishapp.com/rspec/rspec-core/v/2-4/docs/command-line/tag-option) `standings`.  To run the tests specific to the `#standings` method, from the root directory run:

```
rspec --tag standings
```

The tests in the example group should be failing.  Update the `League` class in `league.rb` to make the tests pass.

*Do not modify the tests.*

### Release 1:  `League#playoff_teams`
Now pretend the season is over, and only the top teams make the cut. We'll now add the functionality to select the teams that are allowed to enter the post season.

Tests have been provided to describe how an instance of `League` behaves when told to select the playoff teams.  The tests are [tagged](https://www.relishapp.com/rspec/rspec-core/v/2-4/docs/command-line/tag-option) `playoff_teams`.  To run the tests specific to the `#playoff_teams` method, from the root directory run:

```
rspec --tag playoff_teams
```

Update the `League` class in `league.rb` to make the tests pass.

*Do not modify the tests.*

### Release 2: 'League#position_for'
If you wanted to know the position for a specific team you can ask the league what place a team is in using the team name.

Tests have been provided to describe how an instance of 'League' behaves when told to supply the position for a given team. This test has been [tagged](https://www.relishapp.com/rspec/rspec-core/v/2-4/docs/command-line/tag-option) `position_for'. To run the tests specific to the `#position_for` method, from the root directory run:

```
rspec --tag position_for
```

Update the `League` class in `league.rb` to make the tests pass.

*Do not modify the tests.*

## Conclusion
Once all the tests have passed, you have completed Part 2 of the assessment.  If you haven't done so already, commit your changes and move on to Part 3.
