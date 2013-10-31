.class Lcom/android/server/RunningServiceState$MergedItem;
.super Lcom/android/server/RunningServiceState$BaseItem;
.source "RunningServiceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RunningServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MergedItem"
.end annotation


# instance fields
.field private mLastNumProcesses:I

.field private mLastNumServices:I

.field final mOtherProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/RunningServiceState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mProcess:Lcom/android/server/RunningServiceState$ProcessItem;

.field final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/RunningServiceState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/RunningServiceState$BaseItem;-><init>(Z)V

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/RunningServiceState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/RunningServiceState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 471
    iput v1, p0, Lcom/android/server/RunningServiceState$MergedItem;->mLastNumProcesses:I

    iput v1, p0, Lcom/android/server/RunningServiceState$MergedItem;->mLastNumServices:I

    .line 475
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/RunningServiceState$MergedItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 466
    iget v0, p0, Lcom/android/server/RunningServiceState$MergedItem;->mLastNumProcesses:I

    return v0
.end method


# virtual methods
.method update(Landroid/content/Context;Z)Z
    .locals 10
    .parameter "context"
    .parameter "background"

    .prologue
    const/4 v5, 0x0

    .line 478
    iget-object v4, p0, Lcom/android/server/RunningServiceState$MergedItem;->mProcess:Lcom/android/server/RunningServiceState$ProcessItem;

    iget-object v4, v4, Lcom/android/server/RunningServiceState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v4, p0, Lcom/android/server/RunningServiceState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 479
    iget-object v4, p0, Lcom/android/server/RunningServiceState$MergedItem;->mProcess:Lcom/android/server/RunningServiceState$ProcessItem;

    iget-object v4, v4, Lcom/android/server/RunningServiceState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/server/RunningServiceState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 480
    iget-object v4, p0, Lcom/android/server/RunningServiceState$MergedItem;->mProcess:Lcom/android/server/RunningServiceState$ProcessItem;

    iget-object v4, v4, Lcom/android/server/RunningServiceState$BaseItem;->mLabel:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/RunningServiceState$BaseItem;->mLabel:Ljava/lang/String;

    .line 481
    iput-boolean p2, p0, Lcom/android/server/RunningServiceState$BaseItem;->mBackground:Z

    .line 483
    iget-boolean v4, p0, Lcom/android/server/RunningServiceState$BaseItem;->mBackground:Z

    if-nez v4, :cond_1

    .line 484
    iget-object v4, p0, Lcom/android/server/RunningServiceState$MergedItem;->mProcess:Lcom/android/server/RunningServiceState$ProcessItem;

    iget v4, v4, Lcom/android/server/RunningServiceState$ProcessItem;->mPid:I

    if-lez v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/server/RunningServiceState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int v1, v4, v6

    .line 485
    .local v1, numProcesses:I
    iget-object v4, p0, Lcom/android/server/RunningServiceState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 486
    .local v2, numServices:I
    iget v4, p0, Lcom/android/server/RunningServiceState$MergedItem;->mLastNumProcesses:I

    if-ne v4, v1, :cond_0

    iget v4, p0, Lcom/android/server/RunningServiceState$MergedItem;->mLastNumServices:I

    if-eq v4, v2, :cond_1

    .line 487
    :cond_0
    iput v1, p0, Lcom/android/server/RunningServiceState$MergedItem;->mLastNumProcesses:I

    .line 488
    iput v2, p0, Lcom/android/server/RunningServiceState$MergedItem;->mLastNumServices:I

    .line 501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " processes, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "services"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/RunningServiceState$BaseItem;->mDescription:Ljava/lang/String;

    .line 505
    .end local v1           #numProcesses:I
    .end local v2           #numServices:I
    :cond_1
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/server/RunningServiceState$BaseItem;->mActiveSince:J

    .line 506
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/server/RunningServiceState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 507
    iget-object v4, p0, Lcom/android/server/RunningServiceState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/RunningServiceState$ServiceItem;

    .line 508
    .local v3, si:Lcom/android/server/RunningServiceState$ServiceItem;
    iget-wide v6, v3, Lcom/android/server/RunningServiceState$BaseItem;->mActiveSince:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-ltz v4, :cond_2

    iget-wide v6, p0, Lcom/android/server/RunningServiceState$BaseItem;->mActiveSince:J

    iget-wide v8, v3, Lcom/android/server/RunningServiceState$BaseItem;->mActiveSince:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_2

    .line 509
    iget-wide v6, v3, Lcom/android/server/RunningServiceState$BaseItem;->mActiveSince:J

    iput-wide v6, p0, Lcom/android/server/RunningServiceState$BaseItem;->mActiveSince:J

    .line 506
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v3           #si:Lcom/android/server/RunningServiceState$ServiceItem;
    :cond_3
    move v4, v5

    .line 484
    goto :goto_0

    .line 513
    .restart local v0       #i:I
    :cond_4
    return v5
.end method
