# NBA Contract Value Analysis
Front-Office Analytics Business Case: Impact on Winning vs Cost
(Python, SQL, Supabase, Tableau)

## Business Context

NBA teams operate under a hard salary cap, requiring front offices to continuously balance payroll allocation against on-court impact. Every contract decision represents a tradeoff between cost and contribution to winning, where inefficient spending can limit roster depth, flexibility, and championship competitiveness.

This project simulates a front-office analytics use case focused on evaluating how effectively salary dollars translate into on-court impact, and how teams can optimize roster construction to maximize wins under salary cap constraints.

## Business Objective

The objective is to support salary cap management and roster decision-making by evaluating contracts through the lens of impact on winning relative to cost. Key questions include:

- Which players generate the greatest on-court impact per dollar spent?
- Where do salary inefficiencies reduce a team’s ability to win games?
- When is paying a premium for elite talent justified by its impact on winning?
- How does balanced roster construction influence overall team effectiveness?

## Analytical and Technical Execution

### Data Engineering and Integration

- Ingested and cleaned player salary and performance data using Python (pandas)
- Integrated advanced performance metrics including Win Shares (WS) and Player Efficiency Rating (PER) as proxies for on-court impact
- Stored structured datasets in a Supabase-hosted Postgres database for scalable querying and validation

### Impact-to-Cost Contract Analysis

- Compared salary levels against performance metrics to evaluate value contribution to winning per dollar
- Assessed efficiency trends across players, positions, and teams
- Identified contracts where cost exceeds on-court impact and contracts where impact significantly outweighs cost

### SQL-Based Validation

- Queried player- and team-level aggregations using SQL
- Validated efficiency rankings, positional trends, and team-level salary distributions directly from the database
- Ensured analytical consistency across Python, SQL, and visualization layers

### Visualization and Decision Support (Tableau)

- Built interactive dashboards to support front-office decision-making:
  - Contract Efficiency Overview (impact on winning relative to salary)
  - Value vs Performance Impact Analysis (cost versus contribution to wins)
- Dashboards enable comparison across players, teams, and positions to evaluate strategic tradeoffs

## Front-Office Takeaways

- Many mid-salary players deliver strong on-court impact relative to cost, supporting roster depth and lineup flexibility
- Supermax contracts are justified when tied to elite, win-driving performance, but introduce significant opportunity costs
- Teams that distribute salary across multiple high-impact contributors often achieve stronger overall efficiency
- Inefficient contracts reduce flexibility and indirectly limit a team’s ability to convert payroll into wins

## Business Impact

- Highlights where salary dollars are most effectively converted into on-court impact
- Demonstrates how analytical evaluation of contracts supports smarter cap allocation
- Reinforces the importance of balancing star power with cost-efficient contributors to maximize winning potential

## Front-Office Dashboards

- [Tableau Contract Efficiency Overview](https://github.com/Hundo17/NBA_Contract_Value_Analysis/blob/main/dashboards/NBA%20Contract%20Efficiency%20Overview.pdf)

- [Tableau Impact on Winning vs Cost Dashboard](https://github.com/Hundo17/NBA_Contract_Value_Analysis/blob/main/dashboards/Value%20vs%20Performance%20Impact%20Analysis.pdf)

## Technical Stack Summary

Python (pandas, matplotlib)  
SQL (Postgres via Supabase)  
Tableau  
Git and GitHub

## What This Project Demonstrates

- Applied sports analytics under real salary cap constraints
- Evaluation of contracts through impact-on-winning versus cost lenses
- SQL-backed analytical validation
- Executive-level visualization and storytelling
- Translation of performance metrics into roster and salary allocation decisions