# Firejail profile for clamscan
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include /etc/firejail/clamscan.local
# Persistent global definitions
include /etc/firejail/globals.local


caps.drop all
ipc-namespace
net none
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
novideo
protocol unix
seccomp
shell none
tracelog
x11 none

private-dev
read-only ${HOME}

memory-deny-write-execute
noexec ${HOME}
noexec /tmp
