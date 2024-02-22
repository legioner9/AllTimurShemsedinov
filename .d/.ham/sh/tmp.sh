#!/bin/bash
dir_plt_proc_ham=${PLT_PATH}/.d/.proc/.ham
dir_pd_proc_ham=${PD_PATH}/.d/.proc/.ham

flag_dexec2err__=0

if ! dexec2err__ "${dir_plt_proc_ham}"; then
    plt_info "in nm_opi_() : FAIL_EXEC : 'dexec2err__ ${dir_plt_proc_ham}' : flag_dexec2err__=1"
    flag_dexec2err__=1
fi

if ! dexec2err__ "${dir_pd_proc_ham}"; then
    plt_info "in nm_opi_() : FAIL_EXEC : 'dexec2err__ ${dir_pd_proc_ham}' : flag_dexec2err__=1"
    flag_dexec2err__=1
fi

if [ ${flag_dexec2err__} -eq 1 ]; then
    plt_info "in nm_opi_() : FAIL_EXEC : in any 'dexec2err__()' : return 1"
    return 1
fi
name_repo="AllTimurShemsedinov"
. /home/st/REPOBARE/_repo/AllTimurShemsedinov/.d/.ham/main/main.ham
