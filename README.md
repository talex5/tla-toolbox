First use:

Build the docker image with `make`.
Then run `./tla` to run the toolbox (a window should appear).

In `File->Preferences`:
- In `TLA+ Preferences`, add `/opt/tlapm/lib/tlapm/stdlib/` to the paths list.
- In `TLA+ Preferences/TLAPS`, set `/opt/tlapm/bin/tlapm` as the location of tlapm.

You should then be able to open a spec file and press Ctrl-G,Ctrl-G to check it.
