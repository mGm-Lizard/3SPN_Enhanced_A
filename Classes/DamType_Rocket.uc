class DamType_Rocket extends DamTypeRocket;

var int AwardLevel;

//also called for secondary dam type for this weapon
static function IncrementKills(Controller Killer)
{
    local Misc_PRI xPRI;

    xPRI = Misc_PRI(Killer.PlayerReplicationInfo);
    if(xPRI != None)
    {
      xPRI.RoxCount++;
      if((xPRI.RoxCount == default.AwardLevel) && (Misc_Player(Killer) != None))
        Misc_Player(Killer).BroadcastAnnouncement(class'Message_RocketMan');
    }
}

defaultproperties
{
    AwardLevel = 8
}

