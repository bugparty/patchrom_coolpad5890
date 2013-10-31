.class public Lcom/android/gallery3d/app/cg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static xr:Lcom/android/gallery3d/app/cg;


# instance fields
.field public rq:Lcom/android/gallery3d/ui/du;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/android/gallery3d/ui/du;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/du;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/cg;->rq:Lcom/android/gallery3d/ui/du;

    .line 82
    iget-object v1, p0, Lcom/android/gallery3d/app/cg;->rq:Lcom/android/gallery3d/ui/du;

    const v2, 0x7f090002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/du;->DN:I

    .line 83
    iget-object v1, p0, Lcom/android/gallery3d/app/cg;->rq:Lcom/android/gallery3d/ui/du;

    const v2, 0x7f090003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/du;->DO:I

    .line 84
    iget-object v1, p0, Lcom/android/gallery3d/app/cg;->rq:Lcom/android/gallery3d/ui/du;

    const v2, 0x7f08000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Lcom/android/gallery3d/ui/du;->DP:I

    .line 85
    return-void
.end method

.method public static declared-synchronized i(Landroid/content/Context;)Lcom/android/gallery3d/app/cg;
    .locals 2
    .parameter

    .prologue
    .line 72
    const-class v1, Lcom/android/gallery3d/app/cg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/app/cg;->xr:Lcom/android/gallery3d/app/cg;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/android/gallery3d/app/cg;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/cg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/gallery3d/app/cg;->xr:Lcom/android/gallery3d/app/cg;

    .line 75
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/cg;->xr:Lcom/android/gallery3d/app/cg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
