.class Lcom/android/gallery3d/app/dx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/an;


# instance fields
.field final synthetic or:Lcom/android/gallery3d/app/eg;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/eg;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/gallery3d/app/dx;->or:Lcom/android/gallery3d/app/eg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/eg;Lcom/android/gallery3d/app/ay;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/dx;-><init>(Lcom/android/gallery3d/app/eg;)V

    return-void
.end method


# virtual methods
.method public aW()V
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/gallery3d/app/dx;->or:Lcom/android/gallery3d/app/eg;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/dx;->or:Lcom/android/gallery3d/app/eg;

    invoke-static {v0}, Lcom/android/gallery3d/app/eg;->g(Lcom/android/gallery3d/app/eg;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/gallery3d/app/dx;->or:Lcom/android/gallery3d/app/eg;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/gallery3d/app/eg;->b(Lcom/android/gallery3d/app/eg;Z)Z

    .line 155
    iget-object v0, p0, Lcom/android/gallery3d/app/dx;->or:Lcom/android/gallery3d/app/eg;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 156
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
