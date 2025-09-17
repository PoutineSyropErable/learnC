
int add(int a, int b) { return a + b; }

int main([[maybe_unused]] int argc, [[maybe_unused]] char *argv[]) {

    int add2(int a, int b) { return a + b; } // not allowed
    return add(5, 7);
}
