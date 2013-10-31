.class Lcom/android/server/RunningServiceState$ProcessItem;
.super Lcom/android/server/RunningServiceState$BaseItem;
.source "RunningServiceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RunningServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessItem"
.end annotation


# instance fields
.field mActiveSince:J

.field mClient:Lcom/android/server/RunningServiceState$ProcessItem;

.field final mDependentProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/RunningServiceState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mInteresting:Z

.field mIsStarted:Z

.field mIsSystem:Z

.field mLastNumDependentProcesses:I

.field mMergedItem:Lcom/android/server/RunningServiceState$MergedItem;

.field mPid:I

.field final mProcessName:Ljava/lang/String;

.field mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field mRunningSeq:I

.field final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/RunningServiceState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "uid"
    .parameter "processName"

    .prologue
    .line 281
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/RunningServiceState$BaseItem;-><init>(Z)V

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/RunningServiceState$ProcessItem;->mServices:Ljava/util/HashMap;

    .line 258
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/RunningServiceState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    .line 282
    iput-object p3, p0, Lcom/android/server/RunningServiceState$BaseItem;->mDescription:Ljava/lang/String;

    .line 284
    iput p2, p0, Lcom/android/server/RunningServiceState$ProcessItem;->mUid:I

    .line 285
    iput-object p3, p0, Lcom/android/server/RunningServiceState$ProcessItem;->mProcessName:Ljava/lang/String;

    .line 286
    return-void
.end method


# virtual methods
.method addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/RunningServiceState$BaseItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/RunningServiceState$ProcessItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p1, dest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/RunningServiceState$BaseItem;>;"
    .local p2, destProc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/RunningServiceState$ProcessItem;>;"
    iget-object v3, p0, Lcom/android/server/RunningServiceState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 455
    .local v0, NP:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 456
    iget-object v3, p0, Lcom/android/server/RunningServiceState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/RunningServiceState$ProcessItem;

    .line 457
    .local v2, proc:Lcom/android/server/RunningServiceState$ProcessItem;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/RunningServiceState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 458
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    iget v3, v2, Lcom/android/server/RunningServiceState$ProcessItem;->mPid:I

    if-lez v3, :cond_0

    .line 460
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    .end local v2           #proc:Lcom/android/server/RunningServiceState$ProcessItem;
    :cond_1
    return-void
.end method

.method buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z
    .locals 6
    .parameter "context"
    .parameter "pm"
    .parameter "curSeq"

    .prologue
    .line 431
    iget-object v4, p0, Lcom/android/server/RunningServiceState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 432
    .local v0, NP:I
    const/4 v1, 0x0

    .line 433
    .local v1, changed:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 434
    iget-object v4, p0, Lcom/android/server/RunningServiceState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/RunningServiceState$ProcessItem;

    .line 435
    .local v3, proc:Lcom/android/server/RunningServiceState$ProcessItem;
    iget-object v4, v3, Lcom/android/server/RunningServiceState$ProcessItem;->mClient:Lcom/android/server/RunningServiceState$ProcessItem;

    if-eq v4, p0, :cond_0

    .line 436
    const/4 v1, 0x1

    .line 437
    iput-object p0, v3, Lcom/android/server/RunningServiceState$ProcessItem;->mClient:Lcom/android/server/RunningServiceState$ProcessItem;

    .line 439
    :cond_0
    iput p3, v3, Lcom/android/server/RunningServiceState$BaseItem;->mCurSeq:I

    .line 440
    invoke-virtual {v3, p2}, Lcom/android/server/RunningServiceState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 441
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/RunningServiceState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 433
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 444
    .end local v3           #proc:Lcom/android/server/RunningServiceState$ProcessItem;
    :cond_1
    iget v4, p0, Lcom/android/server/RunningServiceState$ProcessItem;->mLastNumDependentProcesses:I

    iget-object v5, p0, Lcom/android/server/RunningServiceState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 445
    const/4 v1, 0x1

    .line 446
    iget-object v4, p0, Lcom/android/server/RunningServiceState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    iput v4, p0, Lcom/android/server/RunningServiceState$ProcessItem;->mLastNumDependentProcesses:I

    .line 449
    :cond_2
    return v1
.end method

.method ensureLabel(Landroid/content/pm/PackageManager;)V
    .locals 10
    .parameter "pm"

    .prologue
    .line 289
    iget-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mLabel:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 358
    :goto_0
    return-void

    .line 294
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/RunningServiceState$ProcessItem;->mProcessName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 295
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, p0, Lcom/android/server/RunningServiceState$ProcessItem;->mUid:I

    if-ne v8, v9, :cond_1

    .line 296
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 297
    iget-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mLabel:Ljava/lang/String;

    .line 298
    iput-object v0, p0, Lcom/android/server/RunningServiceState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v8

    .line 306
    :cond_1
    iget v8, p0, Lcom/android/server/RunningServiceState$ProcessItem;->mUid:I

    invoke-virtual {p1, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 309
    .local v7, pkgs:[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 311
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v7, v8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 312
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 313
    iget-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mLabel:Ljava/lang/String;

    .line 314
    iput-object v0, p0, Lcom/android/server/RunningServiceState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 316
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v8

    .line 322
    :cond_2
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v1, v2

    .line 324
    .local v4, name:Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {p1, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 325
    .local v6, pi:Landroid/content/pm/PackageInfo;
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v8, :cond_3

    .line 326
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v4, v8, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 328
    .local v5, nm:Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    .line 329
    iput-object v5, p0, Lcom/android/server/RunningServiceState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 330
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mLabel:Ljava/lang/String;

    .line 331
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 335
    .end local v5           #nm:Ljava/lang/CharSequence;
    .end local v6           #pi:Landroid/content/pm/PackageInfo;
    :catch_2
    move-exception v8

    .line 322
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 341
    .end local v4           #name:Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/server/RunningServiceState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 342
    iget-object v8, p0, Lcom/android/server/RunningServiceState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/RunningServiceState$ServiceItem;

    iget-object v8, v8, Lcom/android/server/RunningServiceState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 344
    iget-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 345
    iget-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 351
    :cond_5
    const/4 v8, 0x0

    :try_start_3
    aget-object v8, v7, v8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 352
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 353
    iget-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mLabel:Ljava/lang/String;

    .line 354
    iput-object v0, p0, Lcom/android/server/RunningServiceState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 356
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_3
    move-exception v8

    goto/16 :goto_0
.end method

.method updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z
    .locals 12
    .parameter "context"
    .parameter "service"

    .prologue
    .line 362
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 364
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 365
    .local v2, changed:Z
    iget-object v8, p0, Lcom/android/server/RunningServiceState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/RunningServiceState$ServiceItem;

    .line 366
    .local v7, si:Lcom/android/server/RunningServiceState$ServiceItem;
    if-nez v7, :cond_0

    .line 367
    const/4 v2, 0x1

    .line 368
    new-instance v7, Lcom/android/server/RunningServiceState$ServiceItem;

    .end local v7           #si:Lcom/android/server/RunningServiceState$ServiceItem;
    invoke-direct {v7}, Lcom/android/server/RunningServiceState$ServiceItem;-><init>()V

    .line 369
    .restart local v7       #si:Lcom/android/server/RunningServiceState$ServiceItem;
    iput-object p2, v7, Lcom/android/server/RunningServiceState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 371
    :try_start_0
    iget-object v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/RunningServiceState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 374
    :goto_0
    iget-object v8, v7, Lcom/android/server/RunningServiceState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v7, Lcom/android/server/RunningServiceState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v6, v8, v9}, Lcom/android/server/RunningServiceState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/RunningServiceState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 376
    iget-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    iput-object v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mLabel:Ljava/lang/String;

    .line 377
    iget-object v8, v7, Lcom/android/server/RunningServiceState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, v7, Lcom/android/server/RunningServiceState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 378
    iget-object v8, p0, Lcom/android/server/RunningServiceState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_0
    iget v8, p0, Lcom/android/server/RunningServiceState$BaseItem;->mCurSeq:I

    iput v8, v7, Lcom/android/server/RunningServiceState$BaseItem;->mCurSeq:I

    .line 381
    iput-object p2, v7, Lcom/android/server/RunningServiceState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 382
    iget-wide v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    iget-wide v0, p2, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 383
    .local v0, activeSince:J
    :goto_2
    iget-wide v8, v7, Lcom/android/server/RunningServiceState$BaseItem;->mActiveSince:J

    cmp-long v8, v8, v0

    if-eqz v8, :cond_1

    .line 384
    iput-wide v0, v7, Lcom/android/server/RunningServiceState$BaseItem;->mActiveSince:J

    .line 385
    const/4 v2, 0x1

    .line 387
    :cond_1
    iget-object v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    if-eqz v8, :cond_5

    iget v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v8, :cond_5

    .line 388
    iget-boolean v8, v7, Lcom/android/server/RunningServiceState$ServiceItem;->mShownAsStarted:Z

    if-eqz v8, :cond_2

    .line 389
    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/server/RunningServiceState$ServiceItem;->mShownAsStarted:Z

    .line 390
    const/4 v2, 0x1

    .line 393
    :cond_2
    :try_start_1
    iget-object v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 394
    .local v3, clientr:Landroid/content/res/Resources;
    iget v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, label:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Service client name description "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/server/RunningServiceState$BaseItem;->mDescription:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 409
    .end local v3           #clientr:Landroid/content/res/Resources;
    .end local v5           #label:Ljava/lang/String;
    :goto_3
    return v2

    .line 376
    .end local v0           #activeSince:J
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 382
    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_2

    .line 397
    .restart local v0       #activeSince:J
    :catch_0
    move-exception v4

    .line 398
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/server/RunningServiceState$BaseItem;->mDescription:Ljava/lang/String;

    goto :goto_3

    .line 401
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    iget-boolean v8, v7, Lcom/android/server/RunningServiceState$ServiceItem;->mShownAsStarted:Z

    if-nez v8, :cond_6

    .line 402
    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/RunningServiceState$ServiceItem;->mShownAsStarted:Z

    .line 403
    const/4 v2, 0x1

    .line 405
    :cond_6
    const-string v8, "Service started by app ?"

    iput-object v8, v7, Lcom/android/server/RunningServiceState$BaseItem;->mDescription:Ljava/lang/String;

    goto :goto_3

    .line 372
    .end local v0           #activeSince:J
    :catch_1
    move-exception v8

    goto/16 :goto_0
.end method
