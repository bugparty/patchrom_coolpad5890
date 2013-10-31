.class Lcom/android/server/RunningServiceState$ServiceItem;
.super Lcom/android/server/RunningServiceState$BaseItem;
.source "RunningServiceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RunningServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceItem"
.end annotation


# instance fields
.field mMergedItem:Lcom/android/server/RunningServiceState$MergedItem;

.field mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

.field mServiceInfo:Landroid/content/pm/ServiceInfo;

.field mShownAsStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/RunningServiceState$BaseItem;-><init>(Z)V

    .line 252
    return-void
.end method
