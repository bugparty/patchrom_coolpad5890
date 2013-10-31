.class public Lcom/android/gallery3d/app/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/em;


# static fields
.field private static final F:I = 0x1

.field private static final G:I = 0x2

.field private static final H:I = 0x3

.field private static final I:I = 0x20

.field private static final J:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "AlbumDataAdapter"

.field private static final im:I = 0x40


# instance fields
.field private final Q:[Lcom/android/gallery3d/a/ax;

.field private R:I

.field private S:I

.field private U:I

.field private V:I

.field private final Y:Landroid/os/Handler;

.field private final ab:Lcom/android/gallery3d/a/r;

.field private ad:J

.field private final in:[J

.field private final io:[J

.field private ip:Lcom/android/gallery3d/ui/ai;

.field private iq:Lcom/android/gallery3d/app/ac;

.field private ir:Lcom/android/gallery3d/app/ad;

.field private is:Lcom/android/gallery3d/app/cc;

.field private mSize:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/a/r;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/16 v2, 0x3e8

    const/4 v0, 0x0

    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v0, p0, Lcom/android/gallery3d/app/aj;->U:I

    .line 54
    iput v0, p0, Lcom/android/gallery3d/app/aj;->V:I

    .line 56
    iput v0, p0, Lcom/android/gallery3d/app/aj;->R:I

    .line 57
    iput v0, p0, Lcom/android/gallery3d/app/aj;->S:I

    .line 60
    iput-wide v3, p0, Lcom/android/gallery3d/app/aj;->ad:J

    .line 63
    iput v0, p0, Lcom/android/gallery3d/app/aj;->mSize:I

    .line 66
    new-instance v0, Lcom/android/gallery3d/app/ac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/ac;-><init>(Lcom/android/gallery3d/app/aj;Lcom/android/gallery3d/app/bx;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/aj;->iq:Lcom/android/gallery3d/app/ac;

    .line 72
    iput-object p2, p0, Lcom/android/gallery3d/app/aj;->ab:Lcom/android/gallery3d/a/r;

    .line 73
    new-array v0, v2, [Lcom/android/gallery3d/a/ax;

    iput-object v0, p0, Lcom/android/gallery3d/app/aj;->Q:[Lcom/android/gallery3d/a/ax;

    .line 74
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/gallery3d/app/aj;->in:[J

    .line 75
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/gallery3d/app/aj;->io:[J

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->in:[J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->io:[J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 79
    new-instance v0, Lcom/android/gallery3d/app/bx;

    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/bx;-><init>(Lcom/android/gallery3d/app/aj;Lcom/android/gallery3d/ui/eh;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/aj;->Y:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method private M(I)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->Q:[Lcom/android/gallery3d/a/ax;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 135
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->in:[J

    aput-wide v2, v0, p1

    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->io:[J

    aput-wide v2, v0, p1

    .line 137
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/aj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput p1, p0, Lcom/android/gallery3d/app/aj;->mSize:I

    return p1
.end method

.method static synthetic a(Lcom/android/gallery3d/app/aj;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/android/gallery3d/app/aj;->ad:J

    return-wide p1
.end method

.method static synthetic a(Lcom/android/gallery3d/app/aj;)Lcom/android/gallery3d/app/ad;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->ir:Lcom/android/gallery3d/app/ad;

    return-object v0
.end method

.method static synthetic a(Lcom/android/gallery3d/app/aj;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/aj;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 203
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 204
    iget-object v1, p0, Lcom/android/gallery3d/app/aj;->Y:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/aj;->Y:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    :catch_1
    move-exception v0

    .line 211
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic b(Lcom/android/gallery3d/app/aj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput p1, p0, Lcom/android/gallery3d/app/aj;->S:I

    return p1
.end method

.method static synthetic b(Lcom/android/gallery3d/app/aj;)Lcom/android/gallery3d/app/cc;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->is:Lcom/android/gallery3d/app/cc;

    return-object v0
.end method

.method static synthetic c(Lcom/android/gallery3d/app/aj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput p1, p0, Lcom/android/gallery3d/app/aj;->V:I

    return p1
.end method

.method static synthetic c(Lcom/android/gallery3d/app/aj;)J
    .locals 2
    .parameter

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/gallery3d/app/aj;->ad:J

    return-wide v0
.end method

.method static synthetic d(Lcom/android/gallery3d/app/aj;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/android/gallery3d/app/aj;->mSize:I

    return v0
.end method

.method static synthetic e(Lcom/android/gallery3d/app/aj;)[J
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->io:[J

    return-object v0
.end method

.method static synthetic f(Lcom/android/gallery3d/app/aj;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/android/gallery3d/app/aj;->R:I

    return v0
.end method

.method static synthetic g(Lcom/android/gallery3d/app/aj;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/android/gallery3d/app/aj;->S:I

    return v0
.end method

.method static synthetic h(Lcom/android/gallery3d/app/aj;)Lcom/android/gallery3d/ui/ai;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->ip:Lcom/android/gallery3d/ui/ai;

    return-object v0
.end method

.method static synthetic i(Lcom/android/gallery3d/app/aj;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/android/gallery3d/app/aj;->V:I

    return v0
.end method

.method static synthetic j(Lcom/android/gallery3d/app/aj;)[J
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->in:[J

    return-object v0
.end method

.method static synthetic k(Lcom/android/gallery3d/app/aj;)[Lcom/android/gallery3d/a/ax;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->Q:[Lcom/android/gallery3d/a/ax;

    return-object v0
.end method

.method static synthetic l(Lcom/android/gallery3d/app/aj;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/android/gallery3d/app/aj;->U:I

    return v0
.end method

.method private l(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 140
    iget v0, p0, Lcom/android/gallery3d/app/aj;->R:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/app/aj;->S:I

    if-ne p2, v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget v1, p0, Lcom/android/gallery3d/app/aj;->S:I

    .line 142
    iget v0, p0, Lcom/android/gallery3d/app/aj;->R:I

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iput p1, p0, Lcom/android/gallery3d/app/aj;->R:I

    .line 147
    iput p2, p0, Lcom/android/gallery3d/app/aj;->S:I

    .line 148
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object v2, p0, Lcom/android/gallery3d/app/aj;->in:[J

    .line 150
    iget-object v2, p0, Lcom/android/gallery3d/app/aj;->io:[J

    .line 151
    if-ge p1, v1, :cond_2

    if-lt v0, p2, :cond_3

    .line 152
    :cond_2
    :goto_1
    if-ge v0, v1, :cond_5

    .line 153
    rem-int/lit16 v2, v0, 0x3e8

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/aj;->M(I)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 156
    :cond_3
    :goto_2
    if-ge v0, p1, :cond_4

    .line 157
    rem-int/lit16 v2, v0, 0x3e8

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/aj;->M(I)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 159
    :cond_4
    :goto_3
    if-ge p2, v1, :cond_5

    .line 160
    rem-int/lit16 v0, p2, 0x3e8

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/aj;->M(I)V

    .line 159
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->is:Lcom/android/gallery3d/app/cc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->is:Lcom/android/gallery3d/app/cc;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/cc;->G()V

    goto :goto_0
.end method

.method static synthetic m(Lcom/android/gallery3d/app/aj;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->Y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic n(Lcom/android/gallery3d/app/aj;)Lcom/android/gallery3d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->ab:Lcom/android/gallery3d/a/r;

    return-object v0
.end method


# virtual methods
.method public K(I)Lcom/android/gallery3d/a/ax;
    .locals 5
    .parameter

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/aj;->L(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s not in (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/gallery3d/app/aj;->U:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/gallery3d/app/aj;->V:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->Q:[Lcom/android/gallery3d/a/ax;

    iget-object v1, p0, Lcom/android/gallery3d/app/aj;->Q:[Lcom/android/gallery3d/a/ax;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public L(I)Z
    .locals 1
    .parameter

    .prologue
    .line 126
    iget v0, p0, Lcom/android/gallery3d/app/aj;->U:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/aj;->V:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/android/gallery3d/app/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/gallery3d/app/aj;->ir:Lcom/android/gallery3d/app/ad;

    .line 200
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/gallery3d/app/aj;->ip:Lcom/android/gallery3d/ui/ai;

    .line 196
    return-void
.end method

.method public bC()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/gallery3d/app/aj;->U:I

    return v0
.end method

.method public bD()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/gallery3d/app/aj;->V:I

    return v0
.end method

.method public m(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 167
    iget v0, p0, Lcom/android/gallery3d/app/aj;->U:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/app/aj;->V:I

    if-ne p2, v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    if-gt p1, p2, :cond_3

    sub-int v0, p2, p1

    iget-object v2, p0, Lcom/android/gallery3d/app/aj;->Q:[Lcom/android/gallery3d/a/ax;

    array-length v2, v2

    if-gt v0, v2, :cond_3

    iget v0, p0, Lcom/android/gallery3d/app/aj;->mSize:I

    if-gt p2, v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->Q:[Lcom/android/gallery3d/a/ax;

    array-length v0, v0

    .line 173
    iput p1, p0, Lcom/android/gallery3d/app/aj;->U:I

    .line 174
    iput p2, p0, Lcom/android/gallery3d/app/aj;->V:I

    .line 177
    if-eq p1, p2, :cond_0

    .line 179
    add-int v2, p1, p2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/app/aj;->mSize:I

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 181
    add-int/2addr v0, v1

    iget v2, p0, Lcom/android/gallery3d/app/aj;->mSize:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 182
    iget v2, p0, Lcom/android/gallery3d/app/aj;->R:I

    if-gt v2, p1, :cond_2

    iget v2, p0, Lcom/android/gallery3d/app/aj;->S:I

    if-lt v2, p2, :cond_2

    iget v2, p0, Lcom/android/gallery3d/app/aj;->R:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_0

    .line 184
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/app/aj;->l(II)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 169
    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->is:Lcom/android/gallery3d/app/cc;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/cc;->terminate()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/aj;->is:Lcom/android/gallery3d/app/cc;

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->ab:Lcom/android/gallery3d/a/r;

    iget-object v1, p0, Lcom/android/gallery3d/app/aj;->iq:Lcom/android/gallery3d/app/ac;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/r;->b(Lcom/android/gallery3d/a/an;)V

    .line 107
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->ab:Lcom/android/gallery3d/a/r;

    iget-object v1, p0, Lcom/android/gallery3d/app/aj;->iq:Lcom/android/gallery3d/app/ac;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/an;)V

    .line 99
    new-instance v0, Lcom/android/gallery3d/app/cc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/cc;-><init>(Lcom/android/gallery3d/app/aj;Lcom/android/gallery3d/app/bx;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/aj;->is:Lcom/android/gallery3d/app/cc;

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/app/aj;->is:Lcom/android/gallery3d/app/cc;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/cc;->start()V

    .line 101
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/gallery3d/app/aj;->mSize:I

    return v0
.end method
