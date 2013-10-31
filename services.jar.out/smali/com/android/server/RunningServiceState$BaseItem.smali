.class Lcom/android/server/RunningServiceState$BaseItem;
.super Ljava/lang/Object;
.source "RunningServiceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RunningServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseItem"
.end annotation


# instance fields
.field mActiveSince:J

.field mBackground:Z

.field mCurSeq:I

.field mDescription:Ljava/lang/String;

.field mDisplayLabel:Ljava/lang/CharSequence;

.field final mIsProcess:Z

.field mLabel:Ljava/lang/String;

.field mPackageInfo:Landroid/content/pm/PackageItemInfo;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "isProcess"

    .prologue
    .line 238
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-boolean p1, p0, Lcom/android/server/RunningServiceState$BaseItem;->mIsProcess:Z

    .line 240
    return-void
.end method
