# Big Wigs

## [v7](https://github.com/BigWigsMods/BigWigs/tree/v7) (2016-08-02) [](#top)
[Full Changelog](https://github.com/BigWigsMods/BigWigs/compare/v6...v7)

-   bump version
-   Update travis details.
-   Options: move github description to locales.
-   pkgmeta: add travis file to ignore list
-   Loader: Fix date on achievement check
-   Fix the git hash version display.
-   TyrantVelhari: Don't show font removed soon message in P3
-   Add x-license to toc.
-   Enable packaging
-   Options: Fix lazyness
-   Loader: enable dev print
-   Options: First pass at adding some github info to the config.
-   README.md: add curse link
-   Update README.md and add it to ignore list.
-   Loader: Use the abbreviated hash for versioning.
-   Create README.md
-   - zhCN/zhTW update.
-   Constants: Few more texture id changes
-   Core: Remove bosskill option
-   Plugins: Allow monochrome only font flags, it no longer causes a client crash.
-   BossPrototype: Fix up the dispel list
    REMOVED:
    - Enrage: Tranq (Hunter), Soothe (Druid), Shiv (Rogue)
    - Curse: Remove Curse (Mage)
    ADDED:
    - Magic/Poison/Disease/Curse: Cleanse Spirit (DPS Shaman), Detox (DPS Monk), Cleanse Toxins (DPS Paladin), Purify Disease (DPS Priest)
-   BossPrototype: Cleanup the melee/ranged identification code compensating for the hunters new melee choice. Add the demon hunter and survival hunter interrupt spells.
-   Revert back to ACTIVE_TALENT_GROUP_CHANGED for role setting, compensate for multiple role setting messages and fix your role being removed at login/reload.
-   BossBlock: Revert GetPlayerMapAreaID usage. This will be nil for dungeons until they redo the map code.
