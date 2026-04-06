#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main() {
    ifstream memFile("/proc/meminfo");
    string line;
    
    cout << "--- System Monitor ---" << endl;
    if (memFile.is_open()) {
        // Read the first line, which shows Total Memory
        getline(memFile, line);
        cout << line << endl;
        memFile.close();
    } else {
        cout << "Error: Unable to read system data." << endl;
    }
    cout << "----------------------" << endl;
    return 0;
}
