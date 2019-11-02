# Apache-Spark-for-Data-Engineers
Apache Spark training

This is a code base that serves as acompanying content for Spark Training lectured and prepared by David Vrba.

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
