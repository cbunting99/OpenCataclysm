## OpenCataclysm Project 4.3.4 (15595)
OpenCataclysm is a little bit outdated, but I am working on cleaning up the code, 
and adding a lot of missing features. I have a ton of fixes but most of these 
haven't been added just yet.. The project is too much for just one person! I hope
that by offering what I have been working on, that others will submit bugs, and/or
help with fixing quests, SmartAI ETC.. Please Contribute back to the Project!

## OpenCataclysm Features
- Most Battlegrounds are working.. (Not fully tested)
- Majority of Instances / Dungeons are working.. (Not fully tested)
- Warden Anti-Cheat
- Hack Detection System (Climb, Jump, Water, Fly, Speed Hacks)
- Anti-Spam Features; Mail, PM's
- Working Path Finding (MMAPS)
- Pet LOS - Line of Sight (vmaps)
- Various other additions.. See worldserver.conf

## Included Features / Untested
- Working Spells / Spellbooks, Talents, Specializations, Mastery
- Tradeskills: Alchemy, Jewelcrafting, Blacksmithing ETC
- Other Skills: Archaeology and Reforging

Most of my ideas or direction comes from http://www.wowhead.com/guide=cataclysm

----------------------------------------------------------------------------

## OpenCataclysm Repack (Pre-Configured)
- Includes [UwAmp Server](http://www.uwamp.com/en/) + MySQL
- All Latest Maps, dbc/maps/mmaps/vmaps (Maps are only provided in the Repack)
- Full Database is included. Will add updated when time permits.
- https://mega.co.nz/#!oVRVjKDD!4iRJyhjFIjIFXg8vtu1qB9FKxIPS40TJ76WLmtweAUA

----------------------------------------------------------------------------

I have used some code from different emulators to replace old or outdated
code in the OpenCataclysm source. [You can find a ton of source codes released that I have forked on my github](https://github.com/cbunting99?tab=repositories),

## Emulator Code Bases Used;
- [SkyfireCore](https://github.com/cbunting99/SkyFire_5xx).
- [TrinityCore](https://github.com/cbunting99/TrinityCore).
- [ArkCore](https://github.com/Arkania/ArkCORE).
- [WowSource](https://github.com/aikonlee/WoWSource434).
- [JadeCore](https://github.com/cbunting99/JadeCore).
- [MOP 5.0.5 Dev](https://github.com/naraa/MOP-Dev).
- [Pandaren5.3.0](https://github.com/Raknar/Pandaren5.3.0).
- [OpenWow](https://github.com/OpenEmulator/OpenWoW).

----------------------------------------------------------------------------

## Building / Compiling the Source

Visual Studio Express 2013 for Desktop;
- http://www.microsoft.com/en-us/download/details.aspx?id=40787

MySQL 5.6.20 (The included headers/libs were removed) (Supports uWamp included with repack)
- https://mega.co.nz/#!cA4GCQJB!Hr5suYtRIT0syQ5Y4J5X2w0zIyWn4ICbrV52NxBTWqo

Boost C++ Libraries
- http://sourceforge.net/projects/boost/files/boost/1.56.0/

cmake-3.0.1-win32-x86.exe
- https://mega.co.nz/#!4B4FVCbS!xEAiA3hveVwqRR71XgGsLeYd9CB3c93ldJV2WJKZg4Q

Win32OpenSSL-1_0_1h.exe 17.6 MB
- https://mega.co.nz/#!9FAGxRwQ!Cpc2hyRxD4fFuL46sAmZAy89EF8KohRu1wGpidZdNGE

OpenCataclysm 4.3.4 (15595) Streaming Download Client: (8MB Download)
- https://mega.co.nz/#!ZRZ1VDCB!ptmVNFXLoGkMXbWcumvTVbKhBN9O5lLH9PxQHZVOZcA

Various Addons for Cataclysm Client 4.3.4
- https://mega.co.nz/#!4VZnAKKS!NJ6mV6lojmAvISycjG0fzeFf6F1MFLo0GzBqdZtMxkc

OpenCataclysm Source Code:
- https://github.com/cbunting99/OpenCataclysm

Please Submit Bugs!
- https://github.com/cbunting99/OpenCataclysm/issues

----------------------------------------------------------------------------

## Introduction

OpenCataclysm is based on TrinityCore, which is an *MMORPG* Framework based mostly in C++.

It is derived from *MaNGOS*, the *Massive Network Game Object Server*, and is
based on the code of that project with extensive changes over time to optimize,
improve and cleanup the codebase at the same time as improving the in-game
mechanics and functionality.

It is completely open source; community involvement is highly encouraged.

If you wish to contribute ideas or code please visit our site linked below or
make pull requests to our [Github repository](https://github.com/cbunting99/OpenCataclysm/pulls).

For further information on the TrinityCore project, please visit our project
website at [TrinityCore.org](http://www.trinitycore.org).


## Requirements (All used libraries linked above!)

+ Platform: Windows
+ Processor with SSE2 support
+ Boost ≥ 1.49
+ CMake ≥ 2.8.11.2 / 2.8.9 (Windows)
+ OpenSSL ≥ 1.0.0
+ MS Visual Studio ≥ 12 (2013) (Windows only)


## Install

Detailed installation guides are available in the wiki for
[Windows](http://collab.kpsn.org/display/tc/Win),
[Linux](http://collab.kpsn.org/display/tc/Linux) and
[Mac OSX](http://collab.kpsn.org/display/tc/Mac).


## Copyright

License: GPL 2.0

Read file [COPYING](COPYING)


## Authors &amp; Contributors

Read file [THANKS](THANKS)

