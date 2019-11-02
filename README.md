# Apache-Spark-for-Data-Engineers
This is a code base that serves as acompanying content for Spark Training lectured and prepared by David Vrba.

## Training Description
This training is oriented on three areas of Spark SQL. The first area are Spark internals with detailed description of what is happening under the cover when a query is sent for execution. The second area are optimizations based on proper understanding of the query plan. And finaly the last one is related to the data layout in the file system or how to prepare data using Spark for analytical queries.

## Training Format
* 6 hours
* 50% theory, 50% hands on

## Objectives of the training
* Learn how Spark SQL module works under the hood
* Learn how the optimization engine works in Spark
* Understand what is happening under the cover when you send a query for execution
* Understand query plans and use that information to optimize queries
* Learn advanced optimization techniques to achieve high performance
* Learn how to prepare data for analytical queries

## Training Outline
1. Spark SQL internals - Query Execution
    * Logical Planning
        * Catalyst API
        * Analyzer
        * Cache Manager
        * Optimizer
        * Rules
        * Extending the optimizer
        * Limiting the optimizer
    * Physical Planning
        * Spark Plan (Query Planner, Strategies)
        * Executed Plan (Preparation rules)
        * Understanding operators in Physical Plan
    * Cost Based Optimization
        * How CBO works
        * Statistics Collection
        * Statistics Usage
2. Lab I
3. Query Optimization
    * Shuffle elimination
        * Bucketing
        * Data repartition (when and how)
    * Optimizing joins
        * One-side shuffle-free join
        * Brodcast join vs Sort-Merge join
    * Data Reuse
4. Lab II
5. Shuffle Partitions
6. Data Layout
    * Different File Formats
    * Partitioning
    * Bucketing
7. Lab III

For more information or you can contact directly the lecturer via <a href="http://www.linkedin.com/in/vrba-david" target="_blank"> LinkedIn</a>.
