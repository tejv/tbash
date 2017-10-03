echo "Acme commands
@ Get particular EFR
    acme nw -lineup xr-dev.lu%<EFR-#> -plat asr9k-px
    E.g acme nw -lineup xr-dev.lu%EFR-00000352866 -plat asr9k-px
@ cleaning build
    jam clean
    calvados/build/make-lib/xrmk clean cleanall
    /users/drex/bin/checkjam
@ update workspace
    acme update -devline xr-dev.lu%latest
@ Know efr run this at root of workspace
    /auto/iox/bin/xr_my_ws_efr
@ Determine which component your changes are in 
    acme lsc
@ Commit to mainline
    /auto/iox/bin/xr_commit -d <ddts_no>
@ See last changes
    acme log <path to file>
@ Use PIMS tool to see changes
@ Use topic.cisco.com to search anything
@ Check diff from one version to another
    acme diff -from_ver main/128 -to_ver main/129
@ Find symbol of a process, this will give location of <process>.sym
    util/bin/find_proc.plx -A ppc -e <process name>
@ gdb debug 
    /auto/thirdparty-sdk/target_bin/xrng_gdb -p <path to sym file> -c <path to core>
    E.g. Here core is in same folder as sym file
    /auto/thirdparty-sdk/target_bin/xrng_gdb -p exec.sym -c core
@ Go to older change
    acme diff -from_ver main/128 -to_ver main/129 > /nobackup/tsheoran/diff
    acme patch -reverse -i /nobackup/tsheoran/diff
    acme patch -i /path/to/diff
@ static analysis - run at workspace root
    /auto/ses/bin/run_sa
@ See diff
    acme diff
@ Revert a file
  acme revert /path/to/file
"
