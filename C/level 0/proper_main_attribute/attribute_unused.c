

int main(int argc, [[maybe_unused]] char *argv[]) {

    int x __attribute__((unused)); // old c
    [[maybe_unused]] int y;        // c23

    // do something
    return 0;
}
