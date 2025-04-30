#include <gtest/gtest.h>

#include <omp.h>

// Demonstrate some basic assertions.
TEST(ParallelTest, HelloWorld)
{
    std::cout << "Hello from process: " << omp_get_thread_num() << "\n";
#pragma omp parallel
    {
        std::cout << "Hello from process: " << omp_get_thread_num() << "\n";
    }
    std::cout << "Hello from process: " << omp_get_thread_num() << "\n";
}

TEST(ParallelTest, CacheNuke)
{
}
