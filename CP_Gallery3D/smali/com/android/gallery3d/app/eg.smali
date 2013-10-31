.class public Lcom/android/gallery3d/app/eg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/app/r;


# static fields
.field private static final Hj:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SlideshowDataAdapter"


# instance fields
.field private final Hk:Lcom/android/gallery3d/app/bv;

.field private Hl:I

.field private Hm:I

.field private Hn:Z

.field private Ho:Z

.field private Hp:Lcom/android/gallery3d/a/dd;

.field private final Hq:Ljava/util/LinkedList;

.field private Hr:Lcom/android/gallery3d/b/l;

.field private final Hs:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final Ht:Lcom/android/gallery3d/app/dx;

.field private final Z:Lcom/android/gallery3d/b/n;

.field private af:Z

.field private vI:J


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bh;Lcom/android/gallery3d/app/bv;ILcom/android/gallery3d/a/dd;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v2, p0, Lcom/android/gallery3d/app/eg;->Hl:I

    .line 53
    iput v2, p0, Lcom/android/gallery3d/app/eg;->Hm:I

    .line 54
    iput-boolean v2, p0, Lcom/android/gallery3d/app/eg;->af:Z

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/eg;->Hq:Ljava/util/LinkedList;

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/app/eg;->vI:J

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/eg;->Hs:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v0, Lcom/android/gallery3d/app/dx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/dx;-><init>(Lcom/android/gallery3d/app/eg;Lcom/android/gallery3d/app/ay;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/eg;->Ht:Lcom/android/gallery3d/app/dx;

    .line 71
    iput-object p2, p0, Lcom/android/gallery3d/app/eg;->Hk:Lcom/android/gallery3d/app/bv;

    .line 72
    iput-object p4, p0, Lcom/android/gallery3d/app/eg;->Hp:Lcom/android/gallery3d/a/dd;

    .line 73
    iput p3, p0, Lcom/android/gallery3d/app/eg;->Hl:I

    .line 74
    iput p3, p0, Lcom/android/gallery3d/app/eg;->Hm:I

    .line 75
    invoke-interface {p1}, Lcom/android/gallery3d/app/bh;->dw()Lcom/android/gallery3d/b/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/eg;->Z:Lcom/android/gallery3d/b/n;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/eg;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/android/gallery3d/app/eg;->Hl:I

    return p1
.end method

.method static synthetic a(Lcom/android/gallery3d/app/eg;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/gallery3d/app/eg;->af:Z

    return v0
.end method

.method static synthetic a(Lcom/android/gallery3d/app/eg;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/gallery3d/app/eg;->Hn:Z

    return p1
.end method

.method static synthetic b(Lcom/android/gallery3d/app/eg;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/gallery3d/app/eg;->Ho:Z

    return v0
.end method

.method static synthetic b(Lcom/android/gallery3d/app/eg;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/gallery3d/app/eg;->Ho:Z

    return p1
.end method

.method static synthetic c(Lcom/android/gallery3d/app/eg;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/app/eg;->Hq:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic d(Lcom/android/gallery3d/app/eg;)Lcom/android/gallery3d/a/ax;
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/gallery3d/app/eg;->gd()Lcom/android/gallery3d/a/ax;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/android/gallery3d/app/eg;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/gallery3d/app/eg;->Hn:Z

    return v0
.end method

.method static synthetic f(Lcom/android/gallery3d/app/eg;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/app/eg;->Hm:I

    return v0
.end method

.method static synthetic g(Lcom/android/gallery3d/app/eg;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/app/eg;->Hs:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private gd()Lcom/android/gallery3d/a/ax;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/app/eg;->Hs:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/eg;->Hk:Lcom/android/gallery3d/app/bv;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bv;->aT()J

    move-result-wide v2

    .line 82
    iget-wide v4, p0, Lcom/android/gallery3d/app/eg;->vI:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 83
    iput-wide v2, p0, Lcom/android/gallery3d/app/eg;->vI:J

    .line 84
    iput-boolean v6, p0, Lcom/android/gallery3d/app/eg;->Hn:Z

    move-object v0, v1

    .line 93
    :goto_0
    return-object v0

    .line 88
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/eg;->Hl:I

    .line 89
    iget-object v2, p0, Lcom/android/gallery3d/app/eg;->Hp:Lcom/android/gallery3d/a/dd;

    if-eqz v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/android/gallery3d/app/eg;->Hk:Lcom/android/gallery3d/app/bv;

    iget-object v3, p0, Lcom/android/gallery3d/app/eg;->Hp:Lcom/android/gallery3d/a/dd;

    invoke-interface {v2, v3, v0}, Lcom/android/gallery3d/app/bv;->c(Lcom/android/gallery3d/a/dd;I)I

    move-result v0

    .line 91
    iput-object v1, p0, Lcom/android/gallery3d/app/eg;->Hp:Lcom/android/gallery3d/a/dd;

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/eg;->Hk:Lcom/android/gallery3d/app/bv;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/app/bv;->Z(I)Lcom/android/gallery3d/a/ax;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized ge()Lcom/android/gallery3d/app/ck;
    .locals 1

    .prologue
    .line 161
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/eg;->af:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/eg;->Ho:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/eg;->Hq:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 168
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/gallery3d/app/eg;->Hq:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 171
    :goto_1
    monitor-exit p0

    return-object v0

    .line 169
    :cond_1
    :try_start_4
    iget v0, p0, Lcom/android/gallery3d/app/eg;->Hm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/eg;->Hm:I

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 171
    iget-object v0, p0, Lcom/android/gallery3d/app/eg;->Hq:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/ck;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method static synthetic h(Lcom/android/gallery3d/app/eg;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/app/eg;->Hl:I

    return v0
.end method

.method static synthetic i(Lcom/android/gallery3d/app/eg;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/app/eg;->Hl:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/eg;->Hl:I

    return v0
.end method

.method static synthetic j(Lcom/android/gallery3d/app/eg;)Lcom/android/gallery3d/app/ck;
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/gallery3d/app/eg;->ge()Lcom/android/gallery3d/app/ck;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;
    .locals 2
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/eg;->Z:Lcom/android/gallery3d/b/n;

    new-instance v1, Lcom/android/gallery3d/app/ay;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/ay;-><init>(Lcom/android/gallery3d/app/eg;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 184
    monitor-enter p0

    .line 185
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/eg;->af:Z

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 187
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/app/eg;->Hr:Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/app/eg;->Hr:Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->N()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/eg;->Hr:Lcom/android/gallery3d/b/l;

    .line 192
    return-void

    .line 187
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 3

    .prologue
    .line 195
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/eg;->af:Z

    .line 197
    iget-object v0, p0, Lcom/android/gallery3d/app/eg;->Hs:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/eg;->Ho:Z

    .line 199
    iget-object v0, p0, Lcom/android/gallery3d/app/eg;->Z:Lcom/android/gallery3d/b/n;

    new-instance v1, Lcom/android/gallery3d/app/dc;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/dc;-><init>(Lcom/android/gallery3d/app/eg;Lcom/android/gallery3d/app/ay;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/eg;->Hr:Lcom/android/gallery3d/b/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
