.class public Lcom/android/gallery3d/b/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sl:I = 0x1

.field private static final sm:I = 0x2

.field private static final sn:J = 0x3e8L

.field private static final so:J = 0x7d0L

.field static final sp:Ljava/util/WeakHashMap;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private sq:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/b/o;->sp:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/b/o;->sq:J

    .line 52
    new-instance v0, Lcom/android/gallery3d/b/ad;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/b/ad;-><init>(Lcom/android/gallery3d/b/o;)V

    iput-object v0, p0, Lcom/android/gallery3d/b/o;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/android/gallery3d/b/o;->mActivity:Landroid/app/Activity;

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/b/o;)J
    .locals 2
    .parameter

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/android/gallery3d/b/o;->sq:J

    return-wide v0
.end method

.method static synthetic a(Lcom/android/gallery3d/b/o;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/android/gallery3d/b/o;->sq:J

    return-wide p1
.end method

.method static synthetic b(Lcom/android/gallery3d/b/o;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/b/o;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static d(Landroid/app/Activity;)Lcom/android/gallery3d/b/o;
    .locals 3
    .parameter

    .prologue
    .line 83
    sget-object v1, Lcom/android/gallery3d/b/o;->sp:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/b/o;->sp:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/b/o;

    .line 85
    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/gallery3d/b/o;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/b/o;-><init>(Landroid/app/Activity;)V

    .line 87
    sget-object v2, Lcom/android/gallery3d/b/o;->sp:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    monitor-exit v1

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public l(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/b/o;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/b/o;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/b/o;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/b/o;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
