// This Source Code Form is subject to the terms of
// the Mozilla Public License, v. 2.0. If a copy of
// the MPL was not distributed with this file, You can
// obtain one at https://mozilla.org/MPL/2.0/.

int func(int a, int b, int c, int d, int e) {
    int i = a + b - c + d - e;
    return i;
}

int main() { return func(0x11, 0x22, 0x33, 0x44, 0x55); }
