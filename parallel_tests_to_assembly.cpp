
#include <omp.h>
#include "parallel_utils.hpp"
#include <chrono>
#include "matrix.hpp"

void foo(){
    size_t s = 16;
    // Enough to nuke L1 but not L2/L3
    // But critically leaves both runs in basically the 
    // same position
    for(size_t i = 0; i < 6; ++i) {
        s = s << 1;
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

    }
}

