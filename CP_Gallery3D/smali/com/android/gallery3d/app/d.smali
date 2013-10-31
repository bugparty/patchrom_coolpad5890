.class public Lcom/android/gallery3d/app/d;
.super Lcom/android/gallery3d/app/bi;
.source "SourceFile"


# static fields
.field private static aF:Lcom/android/gallery3d/app/d;


# instance fields
.field public final aG:I

.field public final aH:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/app/bi;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/aa;)V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/d;->aG:I

    .line 105
    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/d;->aH:I

    .line 106
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/android/gallery3d/app/d;
    .locals 2
    .parameter

    .prologue
    .line 95
    const-class v1, Lcom/android/gallery3d/app/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/app/d;->aF:Lcom/android/gallery3d/app/d;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/gallery3d/app/d;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/gallery3d/app/d;->aF:Lcom/android/gallery3d/app/d;

    .line 98
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/d;->aF:Lcom/android/gallery3d/app/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
