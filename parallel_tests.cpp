#include <gtest/gtest.h>

#include <omp.h>
#include "parallel_utils.hpp"
#include <chrono>

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
    // Time code stolen from CPPReference
    auto small = GetTiming([&]() {
        CacheNukePrepare(10);
        CacheNuke();
    });
    std::cout << "Difference 1" << small << "\n";

    auto big = GetTiming([&](){
        CacheNukePrepare(64*1024*1024);
        CacheNuke();
    });

    std::cout << "Difference 2" << big << "\n";

}
