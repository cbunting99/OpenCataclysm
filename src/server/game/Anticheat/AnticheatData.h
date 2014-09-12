/*
 * Copyright (C) 2013-2014 OpenCataclysm <http://wow.boi-infinity.com>
 * Copyright (C) 2010-2012 ProjectSkyfire <http://www.projectskyfire.org/>
 * Copyright (C) 2011-2012 ArkCORE <http://www.arkania.net/>
 * Copyright (C) 2008-2012 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 * Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef SC_ACDATA_H
#define SC_ACDATA_H

#include "AnticheatMgr.h"

#define MAX_REPORT_TYPES 6

class AnticheatData
{
public:
    AnticheatData();
    ~AnticheatData();

    void SetLastOpcode(uint32 opcode);
    uint32 GetLastOpcode() const;

    const MovementInfo& GetLastMovementInfo() const;
    void SetLastMovementInfo(MovementInfo& moveInfo);

    void SetPosition(float x, float y, float z, float o);

    /*
    bool GetDisableACCheck() const;
    void SetDisableACCheck(bool check);

    uint32 GetDisableACTimer() const;
    void SetDisableACTimer(uint32 timer);*/

    uint32 GetTotalReports() const;
    void SetTotalReports(uint32 _totalReports);

    uint32 GetTypeReports(uint32 type) const;
    void SetTypeReports(uint32 type, uint32 amount);

    float GetAverage() const;
    void SetAverage(float _average);

    uint32 GetCreationTime() const;
    void SetCreationTime(uint32 creationTime);

    void SetTempReports(uint32 amount, uint8 type);
    uint32 GetTempReports(uint8 type);

    void SetTempReportsTimer(uint32 time, uint8 type);
    uint32 GetTempReportsTimer(uint8 type);

    void SetDailyReportState(bool b);
    bool GetDailyReportState();
private:
    uint32 lastOpcode;
    MovementInfo lastMovementInfo;
    //bool disableACCheck;
    //uint32 disableACCheckTimer;
    uint32 totalReports;
    uint32 typeReports[MAX_REPORT_TYPES];
    float average;
    uint32 creationTime;
    uint32 tempReports[MAX_REPORT_TYPES];
    uint32 tempReportsTimer[MAX_REPORT_TYPES];
    bool hasDailyReport;
};

#endif