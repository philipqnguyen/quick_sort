# Quick sort

A recursive implementation of quick sort in ruby.

By [Philip Q Nguyen](https://github.com/philipqnguyen)

## Description

Quick sort uses a random pivot that gets placed anyware in the array. From that point, larger numbers are moved to the right of the pivot, and smaller numbers are moved to the left of the pivot. The pivot freezes when it is done, and a new pivot is selected and the process begins again, but this time it excludes the frozen pivot.

## Tests and Benchmarks

Tests are available! Run `rake` to see it pass.

Benchmarks are included! Just run `rake benchmark` to see the results of the benchmarks. Currently, it is benchmarked against a random array, a nearly sorted array, and an array with few uniques.

## License

MIT

## References

- [Rosettacode](http://rosettacode.org/)
- [Sorting-Algorithms](http://www.sorting-algorithms.com/quick-sort)
