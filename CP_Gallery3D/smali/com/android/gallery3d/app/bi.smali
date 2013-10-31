.class public Lcom/android/gallery3d/app/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static rp:Lcom/android/gallery3d/app/bi;


# instance fields
.field public rq:Lcom/android/gallery3d/ui/du;

.field public rr:Lcom/android/gallery3d/ui/di;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/android/gallery3d/ui/du;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/du;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/bi;->rq:Lcom/android/gallery3d/ui/du;

    .line 44
    iget-object v1, p0, Lcom/android/gallery3d/app/bi;->rq:Lcom/android/gallery3d/ui/du;

    const/high16 v2, 0x7f09

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/du;->DN:I

    .line 45
    iget-object v1, p0, Lcom/android/gallery3d/app/bi;->rq:Lcom/android/gallery3d/ui/du;

    const v2, 0x7f090001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/du;->DO:I

    .line 46
    iget-object v1, p0, Lcom/android/gallery3d/app/bi;->rq:Lcom/android/gallery3d/ui/du;

    const v2, 0x7f080004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/du;->DP:I

    .line 48
    new-instance v1, Lcom/android/gallery3d/ui/di;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/di;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/bi;->rr:Lcom/android/gallery3d/ui/di;

    .line 49
    iget-object v1, p0, Lcom/android/gallery3d/app/bi;->rr:Lcom/android/gallery3d/ui/di;

    const v2, 0x7f080005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/di;->AQ:I

    .line 51
    iget-object v1, p0, Lcom/android/gallery3d/app/bi;->rr:Lcom/android/gallery3d/ui/di;

    const v2, 0x7f080006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/di;->AR:I

    .line 53
    iget-object v1, p0, Lcom/android/gallery3d/app/bi;->rr:Lcom/android/gallery3d/ui/di;

    const v2, 0x7f080007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/di;->AS:I

    .line 55
    iget-object v1, p0, Lcom/android/gallery3d/app/bi;->rr:Lcom/android/gallery3d/ui/di;

    const v2, 0x7f080008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/di;->AT:I

    .line 57
    iget-object v1, p0, Lcom/android/gallery3d/app/bi;->rr:Lcom/android/gallery3d/ui/di;

    const v2, 0x7f080009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/di;->AU:I

    .line 59
    iget-object v1, p0, Lcom/android/gallery3d/app/bi;->rr:Lcom/android/gallery3d/ui/di;

    const v2, 0x7f08000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/gallery3d/ui/di;->leftMargin:I

    .line 61
    iget-object v1, p0, Lcom/android/gallery3d/app/bi;->rr:Lcom/android/gallery3d/ui/di;

    const v2, 0x7f08000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Lcom/android/gallery3d/ui/di;->AV:I

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/app/aa;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/bi;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized g(Landroid/content/Context;)Lcom/android/gallery3d/app/bi;
    .locals 2
    .parameter

    .prologue
    .line 34
    const-class v1, Lcom/android/gallery3d/app/bi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/app/bi;->rp:Lcom/android/gallery3d/app/bi;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/android/gallery3d/app/bi;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/bi;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/gallery3d/app/bi;->rp:Lcom/android/gallery3d/app/bi;

    .line 37
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/bi;->rp:Lcom/android/gallery3d/app/bi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
