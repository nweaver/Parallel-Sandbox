#include <gtest/gtest.h>

#include <omp.h>
#include "parallel_utils.hpp"
#include <chrono>
#include "matrix.hpp"

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

TEST(ParallelTest, SimpleMatrix){
    Matrix<float> a(2);
    Matrix<float> b(2, true);
    a(0,0)  = 1;
    a(0,1) = 2;
    a(1,0) = 1;
    a(1,1) = 2;
    b(0,0) = 1;
    b(0,1) = 1;
    b(1,0) = 1;
    b(1,1) = 1;
    auto d = a * b;

    EXPECT_EQ(a(0,0), 1);
    EXPECT_EQ(a(0,1), 2);
    EXPECT_EQ(d(0,0), 3);
    auto d2 = parallel_multiply(a, b);
    EXPECT_EQ(d2(0,0), 3);
}

void parallelNuke(){
#pragma omp parallel 
{
    CacheNuke();
}
}


TEST(ParallelTest, ParallelSpeedup) {
    size_t s = 16;
    // Enough to nuke L1 but not L2/L3
    // But critically leaves both runs in basically the 
    // same position
    CacheNukePrepare(64*1024);
    for(size_t i = 0; i < 6; ++i) {
        s = s << 1;
        std::cout << "Timing Matrix size " << s << "\n";
        Matrix<float> a(s, true);
        Matrix<float> b(s, true);
        // parallelNuke();
        auto sequential = GetTiming([&]() {
            auto d = a * b;
            (void) d;
        });
        // parallelNuke();
        auto parallel = GetTiming([&]() {
            auto d = parallel_multiply(a, b);
            (void) d;
        });

        auto parallel2 = GetTiming([&]() {
            auto d = parallel_multiply2(a, b);
            (void) d;
        });
        std::cout << "Sequential timing: " << sequential << "\n";
        std::cout << "Parallel timing:   " << parallel << "\n";
        std::cout << "Parallel timing2:  " << parallel2 << "\n";


    }
}

