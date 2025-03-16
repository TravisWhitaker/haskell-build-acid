#include <HsFFI.h>
#include <Rts.h>

#include <acid.h>

int acid_init()
{
    RtsConfig conf = defaultRtsConfig;
    conf.rts_opts_enabled = RtsOptsAll;
    int argc = 3;
    char *argv[] = { "libacid"
                   , "+RTS"
                   , "--install-signal-handlers=no"
                   , 0
                   };
    char **rargv = argv;
    hs_init_ghc(&argc, &rargv, conf);
    return 0;
}

void acid_cleanup()
{
    hs_exit();
}
