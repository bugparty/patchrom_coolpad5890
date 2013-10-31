.class public Lcom/android/server/ylWatchdog;
.super Ljava/lang/Object;
.source "ylWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;,
        Lcom/android/server/ylWatchdog$TerminateOrphanServicesStartReceiver;,
        Lcom/android/server/ylWatchdog$RebootLog;,
        Lcom/android/server/ylWatchdog$RebootByStealthReceiver;,
        Lcom/android/server/ylWatchdog$ScreenOnReceiver;,
        Lcom/android/server/ylWatchdog$ScreenOffReceiver;,
        Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;,
        Lcom/android/server/ylWatchdog$TimeChangedReceiver;,
        Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;,
        Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;
    }
.end annotation


# static fields
.field static final BACKUP_KEY_DATABASES_ACTION:Ljava/lang/String; = "com.yulong.android.service.Watchdog.BACKUPDB"

.field static final BOOT_REASON_LOW_MEMORY:Ljava/lang/String; = "lowmem"

.field static final DATABASE_BACKUP_HIBERNATION_DELAY:I = 0x83d60

.field static final DATABASE_BACKUP_START_TIME:I = 0xe4fc

.field private static final EVERY_MORNING_KILLPROCESS_THRESHOLD:I = 0xb400000

.field static final MORNING_WATCH_ELAPSED_TIME_LEAST:I = 0x5265c00

.field static final MORNING_WATCH_EVERYDAY_TIME:I = 0x33cc

.field static final MORNING_WATCH_HIBERNATION_DELAY:I = 0xa1220

.field static final MORNING_WATCH_MEMORY_LEAST:I = 0x3200000

.field static final MORNING_WATCH_MEMORY_LESS:I = 0x3700000

.field static final MORNING_WATCH_PERSISTENT_MEMORY_MAX:I = 0xb400000

.field static final MORNING_WATCH_START_ACTION:Ljava/lang/String; = "com.yulong.android.service.Watchdog.MWSTART"

.field static final MORNING_WATCH_START_TIME:I = 0x3534

.field static final REBOOT_ACTION:Ljava/lang/String; = "com.android.service.Watchdog.REBOOT"

.field static final REBOOT_BY_STEALTH_ACTION:Ljava/lang/String; = "com.yulong.android.service.Watchdog.REBOOT"

.field static final REBOOT_BY_STEALTH_DELAY:I = 0x6ec760

.field static final REBOOT_BY_STEALTH_MEMORY_LEAST:I = 0x2600000

.field static final REBOOT_BY_STEALTH_PERSISTENT_MEMORY_MAX:I = 0xc800000

.field private static final REBOOT_LOG:Ljava/lang/String; = "reboot.log"

.field private static final REBOOT_ON_LOWMEM_LOG_MAX_SIZE:J = 0x200L

.field static final TAG:Ljava/lang/String; = "ylWatchdog"

.field static final TERMINATE_ORPHAN_SERVICES_DELAY:I = 0x668a0

.field static final TERMINATE_ORPHAN_SERVICES_MEMORY_LEAST:I = 0x5400000

.field static final TERMINATE_ORPHAN_SERVICES_START_ACTION:Ljava/lang/String; = "com.yulong.android.service.Watchdog.TOSSTART"

.field private static final TIME_SINCE_BOOT:J = 0x57e40L

.field private static final YULONG_KILL_PROCESS_ACTION:Ljava/lang/String; = "com.yulong.android.watchdog.killprocess"

.field private static final YULONG_KILL_PROCESS_TIME_ACTION:Ljava/lang/String; = "com.yulong.android.killprocesstime"

#the value of this static final field might be set in the static constructor
.field static final bCtsEnabled:Z = false

.field static final ctsFlag:Ljava/lang/String; = null

.field static final localLOGV:Z = true

.field static final mKeyDatabaseBakDir:Ljava/lang/String; = "/data/data/keydbbak/"

.field static final mKeyDatabaseBakRootDir:Ljava/lang/String; = "/data/data/"

.field static final mKeyDatabaseBakTmpExt:Ljava/lang/String; = ".tmp"

.field static final mKeyDatabaseProviderDir:Ljava/lang/String; = "/data/data/"

.field static final mKeyDatabases:[Ljava/lang/String;

.field static final mKeyDatabasesBackupActions:[Ljava/lang/String;

.field static final mKeyDatabasesRelatedFileExt:[Ljava/lang/String;

.field private static mScreenoffTime:J

.field static sylWatchdog:Lcom/android/server/ylWatchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAlarm:Lcom/android/server/AlarmManagerService;

.field mBackupKeyDatabaseIntent:Landroid/app/PendingIntent;

.field mBattery:Lcom/android/server/BatteryService;

.field mContext:Landroid/content/Context;

.field mITelephony:Lcom/android/internal/telephony/ITelephony;

.field mMorningKillProcessIntent:Landroid/app/PendingIntent;

.field mMorningWatchStartIntent:Landroid/app/PendingIntent;

.field mPower:Lcom/android/server/PowerManagerService;

.field mRebootByStealthIntent:Landroid/app/PendingIntent;

.field mRunningServiceState:Lcom/android/server/RunningServiceState;

.field mTerminateOrphanServicesIntent:Landroid/app/PendingIntent;

.field mWDTimeChangedIntent:Landroid/app/PendingIntent;

.field mWDTimeZoneChangedIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "/data/data/com.android.providers.telephony/databases/telephony.db"

    aput-object v3, v0, v2

    const-string v3, "/data/data/com.android.providers.telephony/databases/mmssms.db"

    aput-object v3, v0, v1

    const-string v3, "/data/data/com.android.providers.contacts/databases/contacts2.db"

    aput-object v3, v0, v4

    const-string v3, "/data/data/com.android.providers.contacts/databases/profile.db"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/server/ylWatchdog;->mKeyDatabases:[Ljava/lang/String;

    .line 95
    const-string v0, "persist.yulong.ctstest"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ylWatchdog;->ctsFlag:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/android/server/ylWatchdog;->ctsFlag:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ylWatchdog;->ctsFlag:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/ylWatchdog;->bCtsEnabled:Z

    .line 100
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v0, v2

    const-string v3, ""

    aput-object v3, v0, v1

    const-string v3, "com.yulong.android.backup.action.BACKUPCONTACTSDB"

    aput-object v3, v0, v4

    const-string v3, "com.yulong.android.backup.action.BACKUPCONTACTSDB"

    aput-object v3, v0, v5

    sput-object v0, Lcom/android/server/ylWatchdog;->mKeyDatabasesBackupActions:[Ljava/lang/String;

    .line 107
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, ".db-journal"

    aput-object v3, v0, v2

    const-string v2, ".db-wal"

    aput-object v2, v0, v1

    const-string v1, ".db-shm"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/ylWatchdog;->mKeyDatabasesRelatedFileExt:[Ljava/lang/String;

    .line 154
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/ylWatchdog;->mScreenoffTime:J

    return-void

    :cond_0
    move v0, v2

    .line 96
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 867
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 869
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 73
    sget-wide v0, Lcom/android/server/ylWatchdog;->mScreenoffTime:J

    return-wide v0
.end method

.method static synthetic access$002(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-wide p0, Lcom/android/server/ylWatchdog;->mScreenoffTime:J

    return-wide p0
.end method

.method static synthetic access$100(Lcom/android/server/ylWatchdog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/ylWatchdog;->getTotalPssOfPersistentProcesses()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/ylWatchdog;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/ylWatchdog;->checkDatabase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/ylWatchdog;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/ylWatchdog;->renameKeyDatabaseOrRelatedFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/ylWatchdog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/ylWatchdog;->isDataServiceWorking()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/ylWatchdog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/ylWatchdog;->rebootOnLowMemory()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/ylWatchdog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/ylWatchdog;->isIccLockEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/ylWatchdog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/ylWatchdog;->getTotalPssOfProtectedProcesses()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/ylWatchdog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/ylWatchdog;->backupKeyDatabases()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/ylWatchdog;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/ylWatchdog;->getKeyDatabaseBackupDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/ylWatchdog;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/ylWatchdog;->copyKeyDatabaseOrRelatedFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/ylWatchdog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/ylWatchdog;->getDatabaseRelatedFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private backupKeyDatabases()V
    .locals 1

    .prologue
    .line 1179
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1272
    :goto_0
    return-void

    .line 1183
    :cond_0
    new-instance v0, Lcom/android/server/ylWatchdog$1;

    invoke-direct {v0, p0}, Lcom/android/server/ylWatchdog$1;-><init>(Lcom/android/server/ylWatchdog;)V

    invoke-virtual {v0}, Lcom/android/server/ylWatchdog$1;->start()V

    goto :goto_0
.end method

.method private checkDatabase(Ljava/lang/String;)Z
    .locals 8
    .parameter "provider_db"

    .prologue
    const/4 v4, 0x0

    .line 1420
    if-nez p1, :cond_1

    .line 1448
    :cond_0
    :goto_0
    return v4

    .line 1424
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/ylWatchdog;->getBakDatabaseOrRelatedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ylWatchdog;->getTmpFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1425
    .local v0, bak_db_tmp:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1429
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1430
    .local v1, bak_db_tmp_file:Ljava/io/File;
    if-nez v1, :cond_2

    .line 1431
    const-string v5, "ylWatchdog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New file exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1435
    :cond_2
    const/4 v2, 0x0

    .line 1437
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/16 v6, 0x11

    :try_start_0
    invoke-static {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1443
    if-eqz v2, :cond_3

    .line 1444
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1448
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 1439
    :catch_0
    move-exception v3

    .line 1440
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v5, "ylWatchdog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1443
    if-eqz v2, :cond_0

    .line 1444
    throw v2

    goto :goto_0

    .line 1443
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_4

    .line 1444
    throw v2

    .line 1443
    :cond_4
    throw v4
.end method

.method static computeCalendarTime(Ljava/util/Calendar;JJ)J
    .locals 6
    .parameter "c"
    .parameter "curTime"
    .parameter "secondsSinceMidnight"

    .prologue
    .line 1541
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1543
    long-to-int v3, p3

    div-int/lit16 v2, v3, 0xe10

    .line 1544
    .local v2, val:I
    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 1545
    mul-int/lit16 v3, v2, 0xe10

    int-to-long v3, v3

    sub-long/2addr p3, v3

    .line 1546
    long-to-int v3, p3

    div-int/lit8 v2, v3, 0x3c

    .line 1547
    const/16 v3, 0xc

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 1548
    const/16 v3, 0xd

    long-to-int v4, p3

    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1549
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1551
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1552
    .local v0, newTime:J
    cmp-long v3, v0, p1

    if-gez v3, :cond_0

    .line 1555
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 1556
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 1559
    :cond_0
    return-wide v0
.end method

.method private copyKeyDatabaseOrRelatedFile(Ljava/lang/String;)Z
    .locals 13
    .parameter "provider_db"

    .prologue
    const/16 v12, 0x1ff

    const/16 v11, 0x1fd

    const/4 v5, 0x0

    const/4 v10, -0x1

    .line 1277
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1278
    .local v4, provider_db_file:Ljava/io/File;
    if-nez v4, :cond_1

    .line 1279
    const-string v6, "ylWatchdog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New file exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_0
    :goto_0
    return v5

    .line 1283
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1284
    const-string v6, "ylWatchdog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File doesn\'t exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1289
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/ylWatchdog;->getBakDatabaseOrRelatedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ylWatchdog;->getTmpFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1290
    .local v0, bak_db_tmp:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1294
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1295
    .local v2, bak_db_tmp_file:Ljava/io/File;
    if-nez v2, :cond_3

    .line 1296
    const-string v6, "ylWatchdog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New file exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1302
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 1304
    .local v1, bak_db_tmp_dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1305
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1307
    :cond_4
    sget-boolean v6, Lcom/android/server/ylWatchdog;->bCtsEnabled:Z

    if-eqz v6, :cond_6

    .line 1308
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1fd

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1312
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1313
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1316
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1317
    sget-boolean v6, Lcom/android/server/ylWatchdog;->bCtsEnabled:Z

    if-eqz v6, :cond_7

    .line 1318
    const/16 v6, 0x1fd

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v0, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1329
    :goto_2
    const-string v6, "ylWatchdog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Copying "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    invoke-static {v4, v2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1331
    const-string v6, "ylWatchdog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to copy "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1310
    :cond_6
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1ff

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1323
    .end local v1           #bak_db_tmp_dir:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 1324
    .local v3, e:Ljava/io/IOException;
    const-string v6, "ylWatchdog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to create "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1320
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #bak_db_tmp_dir:Ljava/io/File;
    :cond_7
    const/16 v6, 0x1ff

    const/4 v7, -0x1

    const/4 v8, -0x1

    :try_start_2
    invoke-static {v0, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1334
    :cond_8
    sget-boolean v5, Lcom/android/server/ylWatchdog;->bCtsEnabled:Z

    if-eqz v5, :cond_9

    .line 1335
    invoke-static {v0, v11, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1340
    :goto_3
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1337
    :cond_9
    invoke-static {v0, v12, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_3
.end method

.method private createKeyDatabaseBackupDirectories()Z
    .locals 14

    .prologue
    .line 1384
    sget-object v10, Lcom/android/server/ylWatchdog;->mKeyDatabases:[Ljava/lang/String;

    monitor-enter v10

    .line 1385
    :try_start_0
    sget-object v0, Lcom/android/server/ylWatchdog;->mKeyDatabases:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_5

    aget-object v8, v0, v6

    .line 1387
    .local v8, provider_db:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/server/ylWatchdog;->getBakDatabaseOrRelatedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1388
    .local v1, bak_db:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1385
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1392
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1393
    .local v4, bak_db_file:Ljava/io/File;
    if-nez v4, :cond_2

    .line 1394
    const-string v9, "ylWatchdog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "New file exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    const/4 v9, 0x0

    monitor-exit v10

    .line 1416
    .end local v1           #bak_db:Ljava/lang/String;
    .end local v4           #bak_db_file:Ljava/io/File;
    .end local v8           #provider_db:Ljava/lang/String;
    :goto_1
    return v9

    .line 1399
    .restart local v1       #bak_db:Ljava/lang/String;
    .restart local v4       #bak_db_file:Ljava/io/File;
    .restart local v8       #provider_db:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v9, "/data/data/"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1400
    .local v2, bak_db_ancestor_dir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 1401
    .local v5, bak_db_parent_dir:Ljava/io/File;
    const/4 v3, 0x0

    .line 1402
    .local v3, bak_db_direct_descendant_dir:Ljava/io/File;
    :goto_2
    invoke-direct {p0, v5, v2}, Lcom/android/server/ylWatchdog;->getDirectDescendant(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1403
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1404
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1406
    :cond_3
    sget-boolean v9, Lcom/android/server/ylWatchdog;->bCtsEnabled:Z

    if-eqz v9, :cond_4

    .line 1407
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x1fd

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static {v9, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1411
    :goto_3
    move-object v2, v3

    goto :goto_2

    .line 1409
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x1ff

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static {v9, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_3

    .line 1414
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #bak_db:Ljava/lang/String;
    .end local v2           #bak_db_ancestor_dir:Ljava/io/File;
    .end local v3           #bak_db_direct_descendant_dir:Ljava/io/File;
    .end local v4           #bak_db_file:Ljava/io/File;
    .end local v5           #bak_db_parent_dir:Ljava/io/File;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #provider_db:Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_5
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1416
    const/4 v9, 0x1

    goto :goto_1
.end method

.method private createTombstone(Ljava/lang/String;)V
    .locals 18
    .parameter "procList"

    .prologue
    .line 1607
    const-string v1, "ps"

    .line 1608
    .local v1, cmd:Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1611
    .local v10, procList4Tombstones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1612
    .local v12, sb:Ljava/lang/StringBuffer;
    const-string v15, ","

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1613
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1614
    const-string v15, ","

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1615
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1618
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 1619
    .local v7, p:Ljava/lang/Process;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1621
    .local v4, input:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, line:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1622
    const-string v15, "\\s+"

    invoke-virtual {v6, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1623
    .local v14, tokens:[Ljava/lang/String;
    array-length v15, v14

    const/16 v16, 0x9

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1624
    const-string v2, "/"

    .line 1625
    .local v2, delimiter1:Ljava/lang/String;
    const/16 v15, 0x8

    aget-object v15, v14, v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1626
    .local v11, procname:[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 1627
    .local v13, sb1:Ljava/lang/StringBuffer;
    const-string v15, ","

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1628
    array-length v15, v11

    add-int/lit8 v15, v15, -0x1

    aget-object v15, v11, v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1629
    const-string v15, ","

    invoke-virtual {v13, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1630
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1631
    .local v9, pn:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_0

    .line 1632
    const/4 v15, 0x1

    aget-object v15, v14, v15

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1633
    array-length v15, v11

    add-int/lit8 v15, v15, -0x1

    aget-object v15, v11, v15

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1639
    .end local v2           #delimiter1:Ljava/lang/String;
    .end local v4           #input:Ljava/io/BufferedReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #p:Ljava/lang/Process;
    .end local v9           #pn:Ljava/lang/String;
    .end local v11           #procname:[Ljava/lang/String;
    .end local v13           #sb1:Ljava/lang/StringBuffer;
    .end local v14           #tokens:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1640
    .local v3, ex:Ljava/lang/Exception;
    const-string v15, "ylWatchdog"

    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1643
    .end local v3           #ex:Ljava/lang/Exception;
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1644
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1650
    const-string v15, "ylWatchdog"

    const-string v16, "Waiting for the debuggerd process..."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    :goto_3
    const-string v15, "debuggerd"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/ylWatchdog;->isProcessAlive(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 1652
    const-wide/16 v15, 0x1f4

    invoke-static/range {v15 .. v16}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_3

    .line 1637
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4       #input:Ljava/io/BufferedReader;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #p:Ljava/lang/Process;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1654
    .end local v4           #input:Ljava/io/BufferedReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #p:Ljava/lang/Process;
    .restart local v5       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1655
    .local v8, pid:Ljava/lang/String;
    const-string v16, "ylWatchdog"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Creating tombstone file for process["

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "]"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    const-wide/16 v15, 0x3e8

    invoke-static/range {v15 .. v16}, Landroid/os/SystemClock;->sleep(J)V

    .line 1657
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x6

    invoke-static/range {v15 .. v16}, Landroid/os/Process;->sendSignal(II)V

    .line 1658
    const-wide/16 v15, 0x3e8

    invoke-static/range {v15 .. v16}, Landroid/os/SystemClock;->sleep(J)V

    .line 1659
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x6

    invoke-static/range {v15 .. v16}, Landroid/os/Process;->sendSignal(II)V

    .line 1660
    const-wide/16 v15, 0x7d0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    .line 1662
    .end local v8           #pid:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private getBakDatabaseOrRelatedFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "provider_db"

    .prologue
    .line 1484
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1485
    .local v0, bak_db:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1486
    const/4 v1, 0x0

    .line 1491
    :goto_0
    return-object v1

    .line 1489
    :cond_0
    const-string v1, "/data/data/"

    const-string v2, "/data/data/keydbbak/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1491
    goto :goto_0
.end method

.method private getDatabaseRelatedFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "provider_db"
    .parameter "extension"

    .prologue
    const/4 v2, 0x0

    .line 1495
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1511
    :cond_0
    :goto_0
    return-object v2

    .line 1499
    :cond_1
    const-string v3, "/data/data/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1503
    const/4 v1, 0x0

    .line 1504
    .local v1, provider_db_main_name:Ljava/lang/String;
    const-string v2, ".db"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1505
    .local v0, ext_index:I
    if-lez v0, :cond_2

    .line 1506
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1511
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1508
    :cond_2
    move-object v1, p1

    goto :goto_1
.end method

.method private getDirectDescendant(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 7
    .parameter "descendant_file"
    .parameter "direct_ancestor_file"

    .prologue
    const/4 v4, 0x0

    .line 1453
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v3, v4

    .line 1480
    :cond_1
    :goto_0
    return-object v3

    .line 1457
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/data/data/keydbbak/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object v3, v4

    .line 1458
    goto :goto_0

    .line 1461
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    move-object v3, v4

    .line 1462
    goto :goto_0

    .line 1465
    :cond_4
    const/4 v2, 0x0

    .line 1466
    .local v2, parent_dir:Ljava/io/File;
    const/4 v3, 0x0

    .line 1468
    .local v3, parent_dir_bak:Ljava/io/File;
    move-object v2, p1

    .line 1469
    const/16 v1, 0x80

    .line 1470
    .local v1, max_depth:I
    const/4 v0, 0x0

    .line 1471
    .local v0, depth_count:I
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1472
    move-object v3, v2

    .line 1473
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 1475
    add-int/lit8 v0, v0, 0x1

    if-le v0, v1, :cond_5

    move-object v3, v4

    .line 1476
    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/ylWatchdog;
    .locals 1

    .prologue
    .line 860
    sget-object v0, Lcom/android/server/ylWatchdog;->sylWatchdog:Lcom/android/server/ylWatchdog;

    if-nez v0, :cond_0

    .line 861
    new-instance v0, Lcom/android/server/ylWatchdog;

    invoke-direct {v0}, Lcom/android/server/ylWatchdog;-><init>()V

    sput-object v0, Lcom/android/server/ylWatchdog;->sylWatchdog:Lcom/android/server/ylWatchdog;

    .line 864
    :cond_0
    sget-object v0, Lcom/android/server/ylWatchdog;->sylWatchdog:Lcom/android/server/ylWatchdog;

    return-object v0
.end method

.method private getKeyDatabaseBackupDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "provider_db"

    .prologue
    const/4 v2, 0x0

    .line 1515
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1516
    .local v0, bak_db:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1528
    :goto_0
    return-object v2

    .line 1520
    :cond_0
    const-string v3, "/data/data/"

    const-string v4, "/data/data/keydbbak/"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1522
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1523
    .local v1, bak_db_file:Ljava/io/File;
    if-nez v1, :cond_1

    .line 1524
    const-string v3, "ylWatchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New file exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1528
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getTmpFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 1532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTotalPssOfPersistentProcesses()J
    .locals 17

    .prologue
    .line 984
    const-wide/16 v12, 0x0

    .line 985
    .local v12, totalPersistentProcessMem:J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 986
    .local v4, persistentProcessNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 987
    .local v5, persistentProcessPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    const-string v15, "activity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 989
    .local v1, am:Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v11

    .line 992
    .local v11, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    .line 993
    .local v9, processCount:I
    :goto_0
    const/4 v10, 0x0

    .local v10, processIndex:I
    :goto_1
    if-ge v10, v9, :cond_2

    .line 994
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 996
    .local v7, pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v14, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_0

    .line 997
    iget-object v14, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    iget v14, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 992
    .end local v7           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v9           #processCount:I
    .end local v10           #processIndex:I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 1002
    .restart local v9       #processCount:I
    .restart local v10       #processIndex:I
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1003
    .local v6, persistentProcessPidsCount:I
    new-array v8, v6, [I

    .line 1005
    .local v8, pids:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v6, :cond_3

    .line 1006
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v8, v2

    .line 1005
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1009
    :cond_3
    const/4 v3, 0x0

    .line 1011
    .local v3, mem:[Landroid/os/Debug$MemoryInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v14

    invoke-interface {v14, v8}, Landroid/app/IActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1017
    :goto_3
    if-eqz v3, :cond_4

    .line 1018
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v6, :cond_4

    .line 1019
    const-string v15, "ylWatchdog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Pss used by"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " is "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v16, v3, v2

    invoke-virtual/range {v16 .. v16}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    aget-object v14, v3, v2

    invoke-virtual {v14}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    .line 1018
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1024
    :cond_4
    const-string v14, "ylWatchdog"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Pss used by persistent processes is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const-wide/16 v14, 0x400

    mul-long/2addr v14, v12

    return-wide v14

    .line 1013
    :catch_0
    move-exception v14

    goto :goto_3
.end method

.method private getTotalPssOfProtectedProcesses()V
    .locals 21

    .prologue
    .line 1687
    const-wide/16 v16, 0x0

    .line 1688
    .local v16, totalProtectedProcessMem:J
    const/16 v18, 0x7

    move/from16 v0, v18

    new-array v11, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "com.yulong.android.backup"

    aput-object v19, v11, v18

    const/16 v18, 0x1

    const-string v19, "com.yulong.logredirect"

    aput-object v19, v11, v18

    const/16 v18, 0x2

    const-string v19, "com.android.bluetooth"

    aput-object v19, v11, v18

    const/16 v18, 0x3

    const-string v19, "com.yulong.android.ota"

    aput-object v19, v11, v18

    const/16 v18, 0x4

    const-string v19, "com.yulong.android.weatherwidget"

    aput-object v19, v11, v18

    const/16 v18, 0x5

    const-string v19, "com.android.providers.contacts"

    aput-object v19, v11, v18

    const/16 v18, 0x6

    const-string v19, "com.yulong.android.dev.gcoption"

    aput-object v19, v11, v18

    .line 1698
    .local v11, protectedProcess:[Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1699
    .local v13, protectedProcessNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1701
    .local v14, protectedProcessPids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "activity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1704
    .local v3, am:Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v10

    .line 1707
    .local v10, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 1708
    .local v8, processCount:I
    :goto_0
    const/4 v9, 0x0

    .local v9, processIndex:I
    :goto_1
    if-ge v9, v8, :cond_3

    .line 1709
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1712
    .local v6, pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v12, 0x0

    .local v12, protectedProcessCount:I
    :goto_2
    array-length v0, v11

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_2

    .line 1713
    aget-object v18, v11, v12

    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1714
    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1715
    iget v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1707
    .end local v6           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v8           #processCount:I
    .end local v9           #processIndex:I
    .end local v12           #protectedProcessCount:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1708
    .restart local v6       #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v8       #processCount:I
    .restart local v9       #processIndex:I
    .restart local v12       #protectedProcessCount:I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1721
    .end local v6           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v12           #protectedProcessCount:I
    :cond_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1722
    .local v15, protectedProcessPidsCount:I
    new-array v7, v15, [I

    .line 1724
    .local v7, pids:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v15, :cond_4

    .line 1725
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aput v18, v7, v4

    .line 1724
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1728
    :cond_4
    const/4 v5, 0x0

    .line 1731
    .local v5, mem:[Landroid/os/Debug$MemoryInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Landroid/app/IActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1736
    :goto_4
    if-eqz v5, :cond_5

    .line 1737
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v15, :cond_5

    .line 1739
    const-string v19, "ylWatchdog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Pss used by "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " is "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v20, v5, v4

    invoke-virtual/range {v20 .. v20}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " KB"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    aget-object v18, v5, v4

    invoke-virtual/range {v18 .. v18}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    .line 1737
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1745
    :cond_5
    const-string v18, "ylWatchdog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Pss total used by protect processes is: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " KB"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    return-void

    .line 1732
    :catch_0
    move-exception v18

    goto/16 :goto_4
.end method

.method private final isDataServiceWorking()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 504
    const-string v2, "yulong.data.inorout"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 505
    .local v0, dataServiceState:I
    if-eqz v0, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 506
    const/4 v1, 0x1

    .line 524
    :cond_0
    return v1
.end method

.method private final isIccLockEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 532
    invoke-static {}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getDefault()Lcom/yulong/android/internal/telephony/PhoneModeManager;

    move-result-object v0

    .line 534
    .local v0, mPhonemodemanager:Lcom/yulong/android/internal/telephony/PhoneModeManager;
    if-nez v0, :cond_1

    .line 544
    :cond_0
    :goto_0
    return v1

    .line 539
    :cond_1
    invoke-virtual {v0, v2}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIccLockEnabled(I)I

    move-result v3

    if-eq v3, v2, :cond_2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/yulong/android/internal/telephony/PhoneModeManager;->getIccLockEnabled(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    :cond_2
    move v1, v2

    .line 541
    goto :goto_0
.end method

.method private isProcessAlive(Ljava/lang/String;)Z
    .locals 9
    .parameter "name"

    .prologue
    .line 1573
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1574
    .local v5, sb:Ljava/lang/StringBuffer;
    const-string v7, "ps "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1575
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1576
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1579
    .local v0, cmd:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 1580
    .local v4, p:Ljava/lang/Process;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1582
    .local v2, input:Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1583
    const-string v7, "\\s+"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1584
    .local v6, tokens:[Ljava/lang/String;
    const/4 v7, 0x7

    aget-object v7, v6, v7

    const-string v8, "S"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1585
    const/16 v7, 0x8

    aget-object v7, v6, v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_0

    .line 1586
    const-string v7, "ylWatchdog"

    invoke-static {v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    const/4 v7, 0x1

    .line 1597
    .end local v2           #input:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #p:Ljava/lang/Process;
    .end local v6           #tokens:[Ljava/lang/String;
    :goto_0
    return v7

    .line 1591
    .restart local v2       #input:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #p:Ljava/lang/Process;
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1597
    .end local v2           #input:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #p:Ljava/lang/Process;
    :goto_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1593
    :catch_0
    move-exception v1

    .line 1594
    .local v1, ex:Ljava/lang/Exception;
    const-string v7, "ylWatchdog"

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private rebootOnLowMemory()Z
    .locals 3

    .prologue
    .line 697
    const-string v1, "ylWatchdog"

    const-string v2, "Do not panic, Dear! :)"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-string v1, "ylWatchdog"

    const-string v2, "The device\'ll reboot on low memory, for better performance."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-instance v0, Lcom/android/server/ylWatchdog$RebootLog;

    invoke-direct {v0}, Lcom/android/server/ylWatchdog$RebootLog;-><init>()V

    .line 747
    .local v0, rebootLog:Lcom/android/server/ylWatchdog$RebootLog;
    if-eqz v0, :cond_0

    .line 748
    const-string v1, "Reboot on lowmem for better performance."

    invoke-virtual {v0, v1}, Lcom/android/server/ylWatchdog$RebootLog;->write(Ljava/lang/String;)V

    .line 752
    :cond_0
    const-string v1, "lowmem"

    invoke-virtual {p0, v1}, Lcom/android/server/ylWatchdog;->rebootSystem(Ljava/lang/String;)V

    .line 754
    const/4 v1, 0x1

    return v1
.end method

.method private renameKeyDatabaseOrRelatedFile(Ljava/lang/String;)Z
    .locals 8
    .parameter "provider_db"

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 1345
    invoke-direct {p0, p1}, Lcom/android/server/ylWatchdog;->getBakDatabaseOrRelatedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1346
    .local v0, bak_db:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1380
    :cond_0
    :goto_0
    return v4

    .line 1350
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1351
    .local v1, bak_db_file:Ljava/io/File;
    if-nez v1, :cond_2

    .line 1352
    const-string v5, "ylWatchdog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New file exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1356
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/ylWatchdog;->getBakDatabaseOrRelatedFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ylWatchdog;->getTmpFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1357
    .local v2, bak_db_tmp:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1361
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1362
    .local v3, bak_db_tmp_file:Ljava/io/File;
    if-nez v3, :cond_3

    .line 1363
    const-string v5, "ylWatchdog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New file exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1367
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1368
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1371
    :cond_4
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1372
    const-string v4, "ylWatchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to rename "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_5
    sget-boolean v4, Lcom/android/server/ylWatchdog;->bCtsEnabled:Z

    if-eqz v4, :cond_6

    .line 1375
    const/16 v4, 0x1fd

    invoke-static {v0, v4, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1380
    :goto_1
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1377
    :cond_6
    const/16 v4, 0x1ff

    invoke-static {v0, v4, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_1
.end method


# virtual methods
.method getNextWouldBeTime(JJ)J
    .locals 3
    .parameter "curTime"
    .parameter "secondsSinceMidnight"

    .prologue
    .line 1074
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1075
    .local v0, c:Ljava/util/Calendar;
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/ylWatchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v1

    .line 1076
    .local v1, nextWouldBeTime:J
    return-wide v1
.end method

.method public init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V
    .locals 6
    .parameter "context"
    .parameter "battery"
    .parameter "power"
    .parameter "alarm"
    .parameter "activity"

    .prologue
    const/4 v5, 0x0

    .line 875
    iput-object p2, p0, Lcom/android/server/ylWatchdog;->mBattery:Lcom/android/server/BatteryService;

    .line 876
    iput-object p3, p0, Lcom/android/server/ylWatchdog;->mPower:Lcom/android/server/PowerManagerService;

    .line 877
    iput-object p4, p0, Lcom/android/server/ylWatchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    .line 878
    iput-object p5, p0, Lcom/android/server/ylWatchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 882
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ylWatchdog;->mITelephony:Lcom/android/internal/telephony/ITelephony;

    .line 885
    new-instance v1, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/ylWatchdog$KillProcessTimeReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.yulong.android.killprocesstime"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 887
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.yulong.android.killprocesstime"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ylWatchdog;->mMorningKillProcessIntent:Landroid/app/PendingIntent;

    .line 900
    new-instance v1, Lcom/android/server/ylWatchdog$ScreenOffReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/ylWatchdog$ScreenOffReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 903
    new-instance v1, Lcom/android/server/ylWatchdog$ScreenOnReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/ylWatchdog$ScreenOnReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 906
    new-instance v1, Lcom/android/server/ylWatchdog$RebootByStealthReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/ylWatchdog$RebootByStealthReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.yulong.android.service.Watchdog.REBOOT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 910
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.yulong.android.service.Watchdog.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ylWatchdog;->mRebootByStealthIntent:Landroid/app/PendingIntent;

    .line 916
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.yulong.android.service.Watchdog.MWSTART"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ylWatchdog;->mMorningWatchStartIntent:Landroid/app/PendingIntent;

    .line 918
    new-instance v1, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/ylWatchdog$MorningWatchStartReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.yulong.android.service.Watchdog.MWSTART"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 926
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ylWatchdog;->mWDTimeChangedIntent:Landroid/app/PendingIntent;

    .line 928
    new-instance v1, Lcom/android/server/ylWatchdog$TimeChangedReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/ylWatchdog$TimeChangedReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_SET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 931
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ylWatchdog;->mWDTimeZoneChangedIntent:Landroid/app/PendingIntent;

    .line 933
    new-instance v1, Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/ylWatchdog$TimeZoneChangedReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 940
    iput-object p1, p0, Lcom/android/server/ylWatchdog;->mContext:Landroid/content/Context;

    .line 946
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.yulong.android.service.Watchdog.TOSSTART"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ylWatchdog;->mTerminateOrphanServicesIntent:Landroid/app/PendingIntent;

    .line 948
    new-instance v1, Lcom/android/server/ylWatchdog$TerminateOrphanServicesStartReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/ylWatchdog$TerminateOrphanServicesStartReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.yulong.android.service.Watchdog.TOSSTART"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 955
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.yulong.android.service.Watchdog.BACKUPDB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ylWatchdog;->mBackupKeyDatabaseIntent:Landroid/app/PendingIntent;

    .line 957
    new-instance v1, Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/ylWatchdog$DatabaseBackupStartReceiver;-><init>(Lcom/android/server/ylWatchdog;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.yulong.android.service.Watchdog.BACKUPDB"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 960
    invoke-direct {p0}, Lcom/android/server/ylWatchdog;->createKeyDatabaseBackupDirectories()Z

    .line 972
    const-string v1, "persist.yulong.debug.checkFS"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 973
    .local v0, checkFS:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 974
    invoke-static {}, Lcom/android/server/SystemDestroyWatchdog;->getInstance()Lcom/android/server/SystemDestroyWatchdog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/SystemDestroyWatchdog;->initWatchdog(Landroid/content/Context;)V

    .line 977
    :cond_0
    return-void
.end method

.method isNecessaryToRebootByStealth(JJ)Z
    .locals 4
    .parameter "availableMemory"
    .parameter "totalPssOfPersistentProcesses"

    .prologue
    const/4 v0, 0x1

    .line 1036
    const-wide/32 v1, 0x2600000

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 1037
    const-string v1, "ylWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "availableMemory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "less than"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/high16 v3, 0x260

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B , Ready to reboot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :goto_0
    return v0

    .line 1041
    :cond_0
    const-wide/32 v1, 0xc800000

    cmp-long v1, p3, v1

    if-lez v1, :cond_1

    .line 1042
    const-string v1, "ylWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "totalPssOfPersistentProcesses"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " more than"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/high16 v3, 0xc80

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B , Ready to reboot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1046
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNecessaryToRebootByStealthInTheMorning(JJ)Z
    .locals 5
    .parameter "availableMemory"
    .parameter "totalPssOfPersistentProcesses"

    .prologue
    const/4 v0, 0x1

    .line 1056
    const-wide/32 v1, 0x3200000

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    const-wide/32 v1, 0x3700000

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 1059
    :cond_0
    const-string v1, "ylWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "availableMemory is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B , Ready to reboot, this in the morning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :goto_0
    return v0

    .line 1063
    :cond_1
    const-wide/32 v1, 0xb400000

    cmp-long v1, p3, v1

    if-lez v1, :cond_2

    .line 1064
    const-string v1, "ylWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "totalPssOfPersistentProcesses"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B more than"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/high16 v3, 0xb40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B , Ready to reboot, this in the morning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1068
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNecessaryToTerminateOrphanServices(JJ)Z
    .locals 2
    .parameter "availableMemory"
    .parameter "totalPssOfPersistentProcesses"

    .prologue
    .line 1156
    const-wide/32 v0, 0x5400000

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1157
    const/4 v0, 0x1

    .line 1159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 1671
    new-instance v0, Lcom/android/server/ylWatchdog$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ylWatchdog$2;-><init>(Lcom/android/server/ylWatchdog;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/ylWatchdog$2;->start()V

    .line 1680
    return-void
.end method
