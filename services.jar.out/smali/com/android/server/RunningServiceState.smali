.class public Lcom/android/server/RunningServiceState;
.super Ljava/lang/Object;
.source "RunningServiceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RunningServiceState$ServiceProcessComparator;,
        Lcom/android/server/RunningServiceState$MergedItem;,
        Lcom/android/server/RunningServiceState$ProcessItem;,
        Lcom/android/server/RunningServiceState$ServiceItem;,
        Lcom/android/server/RunningServiceState$BaseItem;,
        Lcom/android/server/RunningServiceState$AppProcessInfo;
    }
.end annotation


# static fields
.field static final CONTENTS_UPDATE_DELAY:J = 0x7d0L

.field static final MAX_SERVICES:I = 0x64

.field static final MSG_REFRESH_UI:I = 0x3

.field static final MSG_RESET_CONTENTS:I = 0x1

.field static final MSG_UPDATE_CONTENTS:I = 0x2

.field static final MSG_UPDATE_TIME:I = 0x4

.field static final TIME_UPDATE_DELAY:J = 0x3e8L

.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/android/server/RunningServiceState;


# instance fields
.field final mAm:Landroid/app/ActivityManager;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/RunningServiceState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/RunningServiceState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/RunningServiceState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/RunningServiceState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/RunningServiceState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/RunningServiceState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/android/server/RunningServiceState$ServiceProcessComparator;

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/RunningServiceState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/RunningServiceState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/RunningServiceState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUnstoppedDulyMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/RunningServiceState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/RunningServiceState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 583
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/RunningServiceState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/RunningServiceState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Lcom/android/server/RunningServiceState$ServiceProcessComparator;

    invoke-direct {v0}, Lcom/android/server/RunningServiceState$ServiceProcessComparator;-><init>()V

    iput-object v0, p0, Lcom/android/server/RunningServiceState;->mServiceProcessComparator:Lcom/android/server/RunningServiceState$ServiceProcessComparator;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/RunningServiceState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/RunningServiceState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/RunningServiceState;->mProcessItems:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/RunningServiceState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/RunningServiceState;->mSequence:I

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/RunningServiceState;->mItems:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/RunningServiceState;->mMergedItems:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/RunningServiceState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/RunningServiceState;->mUnstoppedDulyMergedItems:Ljava/util/ArrayList;

    .line 585
    iput-object p1, p0, Lcom/android/server/RunningServiceState;->mContext:Landroid/content/Context;

    .line 586
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/RunningServiceState;->mAm:Landroid/app/ActivityManager;

    .line 592
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/server/RunningServiceState;
    .locals 2
    .parameter "context"

    .prologue
    .line 575
    sget-object v1, Lcom/android/server/RunningServiceState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 576
    :try_start_0
    sget-object v0, Lcom/android/server/RunningServiceState;->sInstance:Lcom/android/server/RunningServiceState;

    if-nez v0, :cond_0

    .line 577
    new-instance v0, Lcom/android/server/RunningServiceState;

    invoke-direct {v0, p0}, Lcom/android/server/RunningServiceState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/RunningServiceState;->sInstance:Lcom/android/server/RunningServiceState;

    .line 579
    :cond_0
    sget-object v0, Lcom/android/server/RunningServiceState;->sInstance:Lcom/android/server/RunningServiceState;

    monitor-exit v1

    return-object v0

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    const/4 v0, 0x1

    .line 649
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 659
    :cond_0
    :goto_0
    return v0

    .line 652
    :cond_1
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0xaa

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-eqz v1, :cond_0

    .line 659
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "pm"
    .parameter "className"
    .parameter "item"

    .prologue
    .line 558
    if-eqz p2, :cond_2

    iget v2, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 560
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 561
    .local v0, label:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 571
    .end local v0           #label:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-object v0

    .line 566
    :cond_2
    move-object v0, p1

    .line 567
    .local v0, label:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 568
    .local v1, tail:I
    if-ltz v1, :cond_1

    .line 569
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/RunningServiceState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/server/RunningServiceState;->mBackgroundItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getCurrentItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/RunningServiceState$BaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/server/RunningServiceState;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/RunningServiceState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/server/RunningServiceState;->mMergedItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getCurrentUnstoppedDulyMergedItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/RunningServiceState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/server/RunningServiceState;->mUnstoppedDulyMergedItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 0
    .parameter "watching"

    .prologue
    .line 1175
    iput-boolean p1, p0, Lcom/android/server/RunningServiceState;->mWatchingBackgroundItems:Z

    .line 1177
    return-void
.end method

.method declared-synchronized update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 41
    .parameter "context"
    .parameter "am"

    .prologue
    .line 674
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    .line 676
    .local v26, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RunningServiceState;->mSequence:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/RunningServiceState;->mSequence:I

    .line 678
    const/4 v10, 0x0

    .line 682
    .local v10, changed:Z
    const/16 v37, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v30

    .line 684
    .local v30, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v30, :cond_1

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v8

    .line 685
    .local v8, NS:I
    :goto_0
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    if-ge v15, v8, :cond_3

    .line 686
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 690
    .local v31, si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v31

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v37, v0

    if-nez v37, :cond_2

    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v37, v0

    if-nez v37, :cond_2

    .line 691
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 692
    add-int/lit8 v15, v15, -0x1

    .line 693
    add-int/lit8 v8, v8, -0x1

    .line 685
    :cond_0
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 684
    .end local v8           #NS:I
    .end local v15           #i:I
    .end local v31           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 698
    .restart local v8       #NS:I
    .restart local v15       #i:I
    .restart local v31       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v37, v0

    and-int/lit8 v37, v37, 0x8

    if-eqz v37, :cond_0

    .line 700
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 701
    add-int/lit8 v15, v15, -0x1

    .line 702
    add-int/lit8 v8, v8, -0x1

    .line 703
    goto :goto_2

    .line 709
    .end local v31           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v28

    .line 711
    .local v28, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v28, :cond_4

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v6

    .line 712
    .local v6, NP:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/util/SparseArray;->clear()V

    .line 713
    const/4 v15, 0x0

    :goto_4
    if-ge v15, v6, :cond_5

    .line 714
    move-object/from16 v0, v28

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 715
    .local v23, pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v38, v0

    new-instance v39, Lcom/android/server/RunningServiceState$AppProcessInfo;

    move-object/from16 v0, v39

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/RunningServiceState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v37 .. v39}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 713
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 711
    .end local v6           #NP:I
    .end local v23           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 720
    .restart local v6       #NP:I
    :cond_5
    const/4 v15, 0x0

    :goto_5
    if-ge v15, v8, :cond_7

    .line 721
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 722
    .restart local v31       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v37, v0

    const-wide/16 v39, 0x0

    cmp-long v37, v37, v39

    if-nez v37, :cond_6

    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v37, v0

    if-lez v37, :cond_6

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/RunningServiceState$AppProcessInfo;

    .line 724
    .local v9, ainfo:Lcom/android/server/RunningServiceState$AppProcessInfo;
    if-eqz v9, :cond_6

    .line 725
    const/16 v37, 0x1

    move/from16 v0, v37

    iput-boolean v0, v9, Lcom/android/server/RunningServiceState$AppProcessInfo;->hasServices:Z

    .line 726
    move-object/from16 v0, v31

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v37, v0

    if-eqz v37, :cond_6

    .line 727
    const/16 v37, 0x1

    move/from16 v0, v37

    iput-boolean v0, v9, Lcom/android/server/RunningServiceState$AppProcessInfo;->hasForegroundServices:Z

    .line 720
    .end local v9           #ainfo:Lcom/android/server/RunningServiceState$AppProcessInfo;
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 734
    .end local v31           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_7
    const/4 v15, 0x0

    :goto_6
    if-ge v15, v8, :cond_13

    .line 735
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 742
    .restart local v31       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v37, v0

    const-wide/16 v39, 0x0

    cmp-long v37, v37, v39

    if-nez v37, :cond_b

    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v37, v0

    if-lez v37, :cond_b

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/RunningServiceState$AppProcessInfo;

    .line 744
    .restart local v9       #ainfo:Lcom/android/server/RunningServiceState$AppProcessInfo;
    if-eqz v9, :cond_b

    iget-boolean v0, v9, Lcom/android/server/RunningServiceState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v37, v0

    if-nez v37, :cond_b

    .line 750
    iget-object v0, v9, Lcom/android/server/RunningServiceState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v37, v0

    const/16 v38, 0x12c

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_b

    .line 754
    const/16 v33, 0x0

    .line 755
    .local v33, skip:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    iget-object v0, v9, Lcom/android/server/RunningServiceState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #ainfo:Lcom/android/server/RunningServiceState$AppProcessInfo;
    check-cast v9, Lcom/android/server/RunningServiceState$AppProcessInfo;

    .line 756
    .restart local v9       #ainfo:Lcom/android/server/RunningServiceState$AppProcessInfo;
    :goto_7
    if-eqz v9, :cond_9

    .line 757
    iget-boolean v0, v9, Lcom/android/server/RunningServiceState$AppProcessInfo;->hasServices:Z

    move/from16 v37, v0

    if-nez v37, :cond_8

    iget-object v0, v9, Lcom/android/server/RunningServiceState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/RunningServiceState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v37

    if-eqz v37, :cond_a

    .line 758
    :cond_8
    const/16 v33, 0x1

    .line 763
    :cond_9
    if-eqz v33, :cond_b

    .line 734
    .end local v9           #ainfo:Lcom/android/server/RunningServiceState$AppProcessInfo;
    .end local v33           #skip:Z
    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 761
    .restart local v9       #ainfo:Lcom/android/server/RunningServiceState$AppProcessInfo;
    .restart local v33       #skip:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    iget-object v0, v9, Lcom/android/server/RunningServiceState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #ainfo:Lcom/android/server/RunningServiceState$AppProcessInfo;
    check-cast v9, Lcom/android/server/RunningServiceState$AppProcessInfo;

    .restart local v9       #ainfo:Lcom/android/server/RunningServiceState$AppProcessInfo;
    goto :goto_7

    .line 770
    .end local v9           #ainfo:Lcom/android/server/RunningServiceState$AppProcessInfo;
    .end local v33           #skip:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/HashMap;

    .line 771
    .local v29, procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/RunningServiceState$ProcessItem;>;"
    if-nez v29, :cond_c

    .line 772
    new-instance v29, Ljava/util/HashMap;

    .end local v29           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/RunningServiceState$ProcessItem;>;"
    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    .line 773
    .restart local v29       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/RunningServiceState$ProcessItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v38, v0

    move-object/from16 v0, v37

    move/from16 v1, v38

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 775
    :cond_c
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/RunningServiceState$ProcessItem;

    .line 776
    .local v27, proc:Lcom/android/server/RunningServiceState$ProcessItem;
    if-nez v27, :cond_d

    .line 777
    const/4 v10, 0x1

    .line 778
    new-instance v27, Lcom/android/server/RunningServiceState$ProcessItem;

    .end local v27           #proc:Lcom/android/server/RunningServiceState$ProcessItem;
    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v37, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/RunningServiceState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 779
    .restart local v27       #proc:Lcom/android/server/RunningServiceState$ProcessItem;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    :cond_d
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/RunningServiceState$BaseItem;->mCurSeq:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RunningServiceState;->mSequence:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_11

    .line 783
    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v37, v0

    const-wide/16 v39, 0x0

    cmp-long v37, v37, v39

    if-nez v37, :cond_12

    move-object/from16 v0, v31

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v24, v0

    .line 784
    .local v24, pid:I
    :goto_9
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mPid:I

    move/from16 v37, v0

    move/from16 v0, v24

    move/from16 v1, v37

    if-eq v0, v1, :cond_10

    .line 785
    const/4 v10, 0x1

    .line 786
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mPid:I

    move/from16 v37, v0

    move/from16 v0, v37

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    .line 787
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mPid:I

    move/from16 v37, v0

    if-eqz v37, :cond_e

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mPid:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/util/SparseArray;->remove(I)V

    .line 790
    :cond_e
    if-eqz v24, :cond_f

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v24

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 793
    :cond_f
    move/from16 v0, v24

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/RunningServiceState$ProcessItem;->mPid:I

    .line 796
    :cond_10
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/util/SparseArray;->clear()V

    .line 797
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RunningServiceState;->mSequence:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/RunningServiceState$BaseItem;->mCurSeq:I

    .line 799
    .end local v24           #pid:I
    :cond_11
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/RunningServiceState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v37

    or-int v10, v10, v37

    goto/16 :goto_8

    .line 783
    :cond_12
    const/16 v24, 0x0

    goto :goto_9

    .line 804
    .end local v27           #proc:Lcom/android/server/RunningServiceState$ProcessItem;
    .end local v29           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/RunningServiceState$ProcessItem;>;"
    .end local v31           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_13
    const/4 v15, 0x0

    :goto_a
    if-ge v15, v6, :cond_18

    .line 805
    move-object/from16 v0, v28

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 806
    .restart local v23       #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/RunningServiceState$ProcessItem;

    .line 807
    .restart local v27       #proc:Lcom/android/server/RunningServiceState$ProcessItem;
    if-nez v27, :cond_15

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #proc:Lcom/android/server/RunningServiceState$ProcessItem;
    check-cast v27, Lcom/android/server/RunningServiceState$ProcessItem;

    .line 812
    .restart local v27       #proc:Lcom/android/server/RunningServiceState$ProcessItem;
    if-nez v27, :cond_14

    .line 813
    const/4 v10, 0x1

    .line 814
    new-instance v27, Lcom/android/server/RunningServiceState$ProcessItem;

    .end local v27           #proc:Lcom/android/server/RunningServiceState$ProcessItem;
    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v37, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/RunningServiceState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 815
    .restart local v27       #proc:Lcom/android/server/RunningServiceState$ProcessItem;
    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/RunningServiceState$ProcessItem;->mPid:I

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v38, v0

    move-object/from16 v0, v37

    move/from16 v1, v38

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 818
    :cond_14
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/util/SparseArray;->clear()V

    .line 821
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/RunningServiceState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v37

    if-eqz v37, :cond_17

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_16

    .line 823
    const/4 v10, 0x1

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RunningServiceState;->mSequence:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/RunningServiceState$BaseItem;->mCurSeq:I

    .line 827
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/RunningServiceState$ProcessItem;->mInteresting:Z

    .line 828
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/RunningServiceState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 833
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RunningServiceState;->mSequence:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/RunningServiceState$ProcessItem;->mRunningSeq:I

    .line 834
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/RunningServiceState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 804
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_a

    .line 830
    :cond_17
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/RunningServiceState$ProcessItem;->mInteresting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_b

    .line 674
    .end local v6           #NP:I
    .end local v8           #NS:I
    .end local v10           #changed:Z
    .end local v15           #i:I
    .end local v23           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v26           #pm:Landroid/content/pm/PackageManager;
    .end local v27           #proc:Lcom/android/server/RunningServiceState$ProcessItem;
    .end local v28           #processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v30           #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :catchall_0
    move-exception v37

    monitor-exit p0

    throw v37

    .line 839
    .restart local v6       #NP:I
    .restart local v8       #NS:I
    .restart local v10       #changed:Z
    .restart local v15       #i:I
    .restart local v26       #pm:Landroid/content/pm/PackageManager;
    .restart local v28       #processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v30       #services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_18
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 840
    .local v7, NRP:I
    const/4 v15, 0x0

    :goto_c
    if-ge v15, v7, :cond_1d

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/RunningServiceState$ProcessItem;

    .line 842
    .restart local v27       #proc:Lcom/android/server/RunningServiceState$ProcessItem;
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mRunningSeq:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RunningServiceState;->mSequence:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1c

    .line 843
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v12, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 844
    .local v12, clientPid:I
    if-eqz v12, :cond_1b

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/RunningServiceState$ProcessItem;

    .line 846
    .local v11, client:Lcom/android/server/RunningServiceState$ProcessItem;
    if-nez v11, :cond_19

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #client:Lcom/android/server/RunningServiceState$ProcessItem;
    check-cast v11, Lcom/android/server/RunningServiceState$ProcessItem;

    .line 849
    .restart local v11       #client:Lcom/android/server/RunningServiceState$ProcessItem;
    :cond_19
    if-eqz v11, :cond_1a

    .line 850
    iget-object v0, v11, Lcom/android/server/RunningServiceState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mPid:I

    move/from16 v38, v0

    move-object/from16 v0, v37

    move/from16 v1, v38

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 858
    .end local v11           #client:Lcom/android/server/RunningServiceState$ProcessItem;
    :cond_1a
    :goto_d
    add-int/lit8 v15, v15, 0x1

    .line 859
    goto :goto_c

    .line 856
    :cond_1b
    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/RunningServiceState$ProcessItem;->mClient:Lcom/android/server/RunningServiceState$ProcessItem;

    goto :goto_d

    .line 860
    .end local v12           #clientPid:I
    :cond_1c
    const/4 v10, 0x1

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Landroid/util/SparseArray;->remove(I)V

    .line 862
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_c

    .line 867
    .end local v27           #proc:Lcom/android/server/RunningServiceState$ProcessItem;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 868
    .local v5, NHP:I
    const/4 v15, 0x0

    :goto_e
    if-ge v15, v5, :cond_20

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/RunningServiceState$ProcessItem;

    .line 870
    .restart local v27       #proc:Lcom/android/server/RunningServiceState$ProcessItem;
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mInteresting:Z

    move/from16 v37, v0

    if-eqz v37, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mPid:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v37

    if-nez v37, :cond_1f

    .line 871
    :cond_1e
    const/4 v10, 0x1

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 873
    add-int/lit8 v15, v15, -0x1

    .line 874
    add-int/lit8 v5, v5, -0x1

    .line 868
    :cond_1f
    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    .line 881
    .end local v27           #proc:Lcom/android/server/RunningServiceState$ProcessItem;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 882
    .local v4, NAP:I
    const/4 v15, 0x0

    :goto_f
    if-ge v15, v4, :cond_22

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/RunningServiceState$ProcessItem;

    .line 884
    .restart local v27       #proc:Lcom/android/server/RunningServiceState$ProcessItem;
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/RunningServiceState$BaseItem;->mCurSeq:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RunningServiceState;->mSequence:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_21

    .line 885
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RunningServiceState;->mSequence:I

    move/from16 v37, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/RunningServiceState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v37

    or-int v10, v10, v37

    .line 882
    :cond_21
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 890
    .end local v27           #proc:Lcom/android/server/RunningServiceState$ProcessItem;
    :cond_22
    const/16 v36, 0x0

    .line 891
    .local v36, uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v15, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/util/SparseArray;->size()I

    move-result v37

    move/from16 v0, v37

    if-ge v15, v0, :cond_2a

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/HashMap;

    .line 893
    .restart local v29       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/RunningServiceState$ProcessItem;>;"
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 894
    .local v25, pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/RunningServiceState$ProcessItem;>;"
    :cond_23
    :goto_11
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_29

    .line 895
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/RunningServiceState$ProcessItem;

    .line 896
    .local v23, pi:Lcom/android/server/RunningServiceState$ProcessItem;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/RunningServiceState$BaseItem;->mCurSeq:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RunningServiceState;->mSequence:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_26

    .line 897
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/RunningServiceState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 898
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mPid:I

    move/from16 v37, v0

    if-nez v37, :cond_24

    .line 901
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/util/SparseArray;->clear()V

    .line 917
    :cond_24
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .line 918
    .local v32, sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/RunningServiceState$ServiceItem;>;"
    :cond_25
    :goto_12
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_23

    .line 919
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/RunningServiceState$ServiceItem;

    .line 920
    .local v31, si:Lcom/android/server/RunningServiceState$ServiceItem;
    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/RunningServiceState$BaseItem;->mCurSeq:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RunningServiceState;->mSequence:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_25

    .line 921
    const/4 v10, 0x1

    .line 922
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 904
    .end local v31           #si:Lcom/android/server/RunningServiceState$ServiceItem;
    .end local v32           #sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/RunningServiceState$ServiceItem;>;"
    :cond_26
    const/4 v10, 0x1

    .line 905
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->remove()V

    .line 906
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->size()I

    move-result v37

    if-nez v37, :cond_28

    .line 907
    if-nez v36, :cond_27

    .line 908
    new-instance v36, Ljava/util/ArrayList;

    .end local v36           #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 910
    .restart local v36       #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    :cond_28
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mPid:I

    move/from16 v37, v0

    if-eqz v37, :cond_23

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mPid:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_11

    .line 891
    .end local v23           #pi:Lcom/android/server/RunningServiceState$ProcessItem;
    :cond_29
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_10

    .line 928
    .end local v25           #pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/RunningServiceState$ProcessItem;>;"
    .end local v29           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/RunningServiceState$ProcessItem;>;"
    :cond_2a
    if-eqz v36, :cond_2b

    .line 929
    const/4 v15, 0x0

    :goto_13
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-ge v15, v0, :cond_2b

    .line 930
    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v35

    .line 931
    .local v35, uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 929
    add-int/lit8 v15, v15, 0x1

    goto :goto_13

    .line 935
    .end local v35           #uid:I
    :cond_2b
    if-eqz v10, :cond_3c

    .line 937
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .local v34, sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/RunningServiceState$ProcessItem;>;"
    const/4 v15, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/util/SparseArray;->size()I

    move-result v37

    move/from16 v0, v37

    if-ge v15, v0, :cond_30

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/HashMap;

    invoke-virtual/range {v37 .. v37}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_15
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_2f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/RunningServiceState$ProcessItem;

    .line 940
    .restart local v23       #pi:Lcom/android/server/RunningServiceState$ProcessItem;
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/RunningServiceState$ProcessItem;->mIsSystem:Z

    .line 941
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/RunningServiceState$ProcessItem;->mIsStarted:Z

    .line 942
    const-wide v37, 0x7fffffffffffffffL

    move-wide/from16 v0, v37

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/RunningServiceState$ProcessItem;->mActiveSince:J

    .line 943
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_2c
    :goto_16
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_2e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/RunningServiceState$ServiceItem;

    .line 944
    .restart local v31       #si:Lcom/android/server/RunningServiceState$ServiceItem;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v37, v0

    if-eqz v37, :cond_2d

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v37, v0

    and-int/lit8 v37, v37, 0x1

    if-eqz v37, :cond_2d

    .line 947
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/RunningServiceState$ProcessItem;->mIsSystem:Z

    .line 949
    :cond_2d
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v37, v0

    if-eqz v37, :cond_2c

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v37, v0

    if-eqz v37, :cond_2c

    .line 951
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/RunningServiceState$ProcessItem;->mIsStarted:Z

    .line 952
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mActiveSince:J

    move-wide/from16 v37, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v39, v0

    cmp-long v37, v37, v39

    if-lez v37, :cond_2c

    .line 953
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v37, v0

    move-wide/from16 v0, v37

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/RunningServiceState$ProcessItem;->mActiveSince:J

    goto :goto_16

    .line 957
    .end local v31           #si:Lcom/android/server/RunningServiceState$ServiceItem;
    :cond_2e
    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 938
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v23           #pi:Lcom/android/server/RunningServiceState$ProcessItem;
    :cond_2f
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_14

    .line 961
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mServiceProcessComparator:Lcom/android/server/RunningServiceState$ServiceProcessComparator;

    move-object/from16 v37, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 963
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 964
    .local v21, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/RunningServiceState$BaseItem;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 965
    .local v22, newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/RunningServiceState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 966
    const/4 v15, 0x0

    :goto_17
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-ge v15, v0, :cond_38

    .line 967
    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/RunningServiceState$ProcessItem;

    .line 970
    .restart local v23       #pi:Lcom/android/server/RunningServiceState$ProcessItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 972
    .local v13, firstProc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/server/RunningServiceState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 974
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mPid:I

    move/from16 v37, v0

    if-lez v37, :cond_31

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    :cond_31
    const/16 v18, 0x0

    .line 981
    .local v18, mergedItem:Lcom/android/server/RunningServiceState$MergedItem;
    const/4 v14, 0x0

    .line 983
    .local v14, haveAllMerged:Z
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_34

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/RunningServiceState$ServiceItem;

    .line 986
    .restart local v31       #si:Lcom/android/server/RunningServiceState$ServiceItem;
    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ServiceItem;->mMergedItem:Lcom/android/server/RunningServiceState$MergedItem;

    move-object/from16 v37, v0

    if-eqz v37, :cond_33

    .line 988
    if-eqz v18, :cond_32

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ServiceItem;->mMergedItem:Lcom/android/server/RunningServiceState$MergedItem;

    move-object/from16 v37, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_32

    .line 989
    const/4 v14, 0x0

    .line 991
    :cond_32
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ServiceItem;->mMergedItem:Lcom/android/server/RunningServiceState$MergedItem;

    move-object/from16 v18, v0

    goto :goto_18

    .line 993
    :cond_33
    const/4 v14, 0x0

    goto :goto_18

    .line 997
    .end local v31           #si:Lcom/android/server/RunningServiceState$ServiceItem;
    :cond_34
    if-eqz v14, :cond_35

    if-eqz v18, :cond_35

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/RunningServiceState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->size()I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_37

    .line 1000
    :cond_35
    new-instance v18, Lcom/android/server/RunningServiceState$MergedItem;

    .end local v18           #mergedItem:Lcom/android/server/RunningServiceState$MergedItem;
    invoke-direct/range {v18 .. v18}, Lcom/android/server/RunningServiceState$MergedItem;-><init>()V

    .line 1001
    .restart local v18       #mergedItem:Lcom/android/server/RunningServiceState$MergedItem;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_19
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_36

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/RunningServiceState$ServiceItem;

    .line 1002
    .restart local v31       #si:Lcom/android/server/RunningServiceState$ServiceItem;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/RunningServiceState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/server/RunningServiceState$ServiceItem;->mMergedItem:Lcom/android/server/RunningServiceState$MergedItem;

    goto :goto_19

    .line 1005
    .end local v31           #si:Lcom/android/server/RunningServiceState$ServiceItem;
    :cond_36
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/RunningServiceState$MergedItem;->mProcess:Lcom/android/server/RunningServiceState$ProcessItem;

    .line 1006
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/RunningServiceState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 1007
    move/from16 v20, v13

    .local v20, mpi:I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    add-int/lit8 v37, v37, -0x1

    move/from16 v0, v20

    move/from16 v1, v37

    if-ge v0, v1, :cond_37

    .line 1008
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/RunningServiceState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    add-int/lit8 v20, v20, 0x1

    goto :goto_1a

    .line 1012
    .end local v20           #mpi:I
    :cond_37
    const/16 v37, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/server/RunningServiceState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1013
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_17

    .line 1018
    .end local v13           #firstProc:I
    .end local v14           #haveAllMerged:Z
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #mergedItem:Lcom/android/server/RunningServiceState$MergedItem;
    .end local v23           #pi:Lcom/android/server/RunningServiceState$ProcessItem;
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1019
    const/4 v15, 0x0

    :goto_1b
    if-ge v15, v5, :cond_3b

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/RunningServiceState$ProcessItem;

    .line 1021
    .restart local v27       #proc:Lcom/android/server/RunningServiceState$ProcessItem;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mClient:Lcom/android/server/RunningServiceState$ProcessItem;

    move-object/from16 v37, v0

    if-nez v37, :cond_3a

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/HashMap;->size()I

    move-result v37

    if-gtz v37, :cond_3a

    .line 1022
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mMergedItem:Lcom/android/server/RunningServiceState$MergedItem;

    move-object/from16 v37, v0

    if-nez v37, :cond_39

    .line 1023
    new-instance v37, Lcom/android/server/RunningServiceState$MergedItem;

    invoke-direct/range {v37 .. v37}, Lcom/android/server/RunningServiceState$MergedItem;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/RunningServiceState$ProcessItem;->mMergedItem:Lcom/android/server/RunningServiceState$MergedItem;

    .line 1024
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mMergedItem:Lcom/android/server/RunningServiceState$MergedItem;

    move-object/from16 v37, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/server/RunningServiceState$MergedItem;->mProcess:Lcom/android/server/RunningServiceState$ProcessItem;

    .line 1026
    :cond_39
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mMergedItem:Lcom/android/server/RunningServiceState$MergedItem;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/RunningServiceState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1027
    const/16 v37, 0x0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/RunningServiceState$ProcessItem;->mMergedItem:Lcom/android/server/RunningServiceState$MergedItem;

    move-object/from16 v38, v0

    move-object/from16 v0, v22

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    :cond_3a
    add-int/lit8 v15, v15, 0x1

    goto :goto_1b

    .line 1033
    .end local v27           #proc:Lcom/android/server/RunningServiceState$ProcessItem;
    :cond_3b
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/RunningServiceState;->mItems:Ljava/util/ArrayList;

    .line 1034
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/RunningServiceState;->mMergedItems:Ljava/util/ArrayList;

    .line 1156
    .end local v21           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/RunningServiceState$BaseItem;>;"
    .end local v22           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/RunningServiceState$MergedItem;>;"
    .end local v34           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/RunningServiceState$ProcessItem;>;"
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mUnstoppedDulyMergedItems:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 1157
    const/4 v15, 0x0

    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-ge v15, v0, :cond_3e

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/RunningServiceState$MergedItem;

    .line 1159
    .local v19, mi:Lcom/android/server/RunningServiceState$MergedItem;
    #getter for: Lcom/android/server/RunningServiceState$MergedItem;->mLastNumProcesses:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/RunningServiceState$MergedItem;->access$000(Lcom/android/server/RunningServiceState$MergedItem;)I

    move-result v37

    if-nez v37, :cond_3d

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RunningServiceState;->mUnstoppedDulyMergedItems:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1157
    :cond_3d
    add-int/lit8 v15, v15, 0x1

    goto :goto_1c

    .line 1164
    .end local v19           #mi:Lcom/android/server/RunningServiceState$MergedItem;
    :cond_3e
    monitor-exit p0

    return v10
.end method
