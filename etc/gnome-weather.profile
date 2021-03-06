# Firejail profile for gnome-weather
# Description: Access current conditions and forecasts
# This file is overwritten after every install/update
# Persistent local customizations
include gnome-weather.local
# Persistent global definitions
include globals.local

# when gjs apps are started via gnome-shell, firejail is not applied because systemd will start them

noblacklist ${HOME}/.cache/libgweather

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

include whitelist-var-common.inc

caps.drop all
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix,inet,inet6
seccomp
shell none
tracelog

disable-mnt
# private-bin gjs gnome-weather
private-dev
# private-etc alternatives,fonts,ca-certificates,ssl,pki,crypto-policies
private-tmp

