#include <iostream>
#include <vector>
#include <string>
#include <fstream>

using namespace std;

void run_command(string cmd) {
    system(cmd.c_str());
}

int main(int argc, char* argv[]) {
    if (argc < 2) {
        cout << "GNU AO Engine v1.0 - MurilooPr" << endl;
        return 0;
    }

    string mode = argv[1];

    if (mode == "--low-level") {
        cout << "[Core] Executando fstrim e limpeza de logs..." << endl;
        run_command("sm fstrim dotrim > /dev/null 2>&1");
        run_command("logcat -c");
        run_command("dumpsys batterystats --reset > /dev/null 2>&1");
        cout << "[Core] Limpeza de baixo nível concluída." << endl;
    } 
    
    if (mode == "--art-opt") {
        cout << "[Core] Otimizando compilação de pacotes (DEX)..." << endl;
        run_command("cmd package bg-dexopt-job > /dev/null 2>&1");
        cout << "[Core] Otimização de apps finalizada." << endl;
    }

    return 0;
}
