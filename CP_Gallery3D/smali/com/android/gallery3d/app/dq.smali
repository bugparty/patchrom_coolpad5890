.class public Lcom/android/gallery3d/app/dq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/br;


# static fields
.field private static final AH:I = -0x1

.field private static final Em:I = 0x1

.field private static final En:[Lcom/android/gallery3d/a/ax; = null

.field private static final F:I = 0x1

.field private static final G:I = 0x2

.field private static final H:I = 0x3

.field private static final I:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AlbumSetDataAdapter"


# instance fields
.field private final Eo:[Lcom/android/gallery3d/a/r;

.field private final Ep:[[Lcom/android/gallery3d/a/ax;

.field private Eq:Lcom/android/gallery3d/ui/dl;

.field private Er:Lcom/android/gallery3d/app/h;

.field private final Es:Lcom/android/gallery3d/app/cn;

.field private R:I

.field private S:I

.field private U:I

.field private V:I

.field private final Y:Landroid/os/Handler;

.field private final ab:Lcom/android/gallery3d/a/r;

.field private ad:J

.field private final in:[J

.field private final io:[J

.field private ir:Lcom/android/gallery3d/app/ad;

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/gallery3d/a/ax;

    sput-object v0, Lcom/android/gallery3d/app/dq;->En:[Lcom/android/gallery3d/a/ax;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/a/r;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcom/android/gallery3d/app/dq;->U:I

    .line 57
    iput v0, p0, Lcom/android/gallery3d/app/dq;->V:I

    .line 59
    iput v0, p0, Lcom/android/gallery3d/app/dq;->R:I

    .line 60
    iput v0, p0, Lcom/android/gallery3d/app/dq;->S:I

    .line 63
    iput-wide v2, p0, Lcom/android/gallery3d/app/dq;->ad:J

    .line 72
    new-instance v0, Lcom/android/gallery3d/app/cn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/cn;-><init>(Lcom/android/gallery3d/app/dq;Lcom/android/gallery3d/app/af;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/dq;->Es:Lcom/android/gallery3d/app/cn;

    .line 75
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/r;

    iput-object v0, p0, Lcom/android/gallery3d/app/dq;->ab:Lcom/android/gallery3d/a/r;

    .line 76
    new-array v0, p3, [[Lcom/android/gallery3d/a/ax;

    iput-object v0, p0, Lcom/android/gallery3d/app/dq;->Ep:[[Lcom/android/gallery3d/a/ax;

    .line 77
    new-array v0, p3, [Lcom/android/gallery3d/a/r;

    iput-object v0, p0, Lcom/android/gallery3d/app/dq;->Eo:[Lcom/android/gallery3d/a/r;

    .line 78
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/android/gallery3d/app/dq;->in:[J

    .line 79
    new-array v0, p3, [J

    iput-object v0, p0, Lcom/android/gallery3d/app/dq;->io:[J

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->in:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->io:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 83
    new-instance v0, Lcom/android/gallery3d/app/af;

    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/af;-><init>(Lcom/android/gallery3d/app/dq;Lcom/android/gallery3d/ui/eh;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/dq;->Y:Landroid/os/Handler;

    .line 99
    return-void
.end method

.method private M(I)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->Eo:[Lcom/android/gallery3d/a/r;

    aput-object v1, v0, p1

    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->Ep:[[Lcom/android/gallery3d/a/ax;

    aput-object v1, v0, p1

    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->in:[J

    aput-wide v2, v0, p1

    .line 152
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->io:[J

    aput-wide v2, v0, p1

    .line 153
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/dq;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/android/gallery3d/app/dq;->mSize:I

    return p1
.end method

.method static synthetic a(Lcom/android/gallery3d/app/dq;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/android/gallery3d/app/dq;->ad:J

    return-wide p1
.end method

.method static synthetic a(Lcom/android/gallery3d/app/dq;)Lcom/android/gallery3d/app/ad;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->ir:Lcom/android/gallery3d/app/ad;

    return-object v0
.end method

.method static synthetic a(Lcom/android/gallery3d/app/dq;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/dq;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 310
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 311
    iget-object v1, p0, Lcom/android/gallery3d/app/dq;->Y:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/dq;->Y:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 314
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    const/4 v0, 0x0

    goto :goto_0

    .line 317
    :catch_1
    move-exception v0

    .line 318
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic b(Lcom/android/gallery3d/app/dq;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/android/gallery3d/app/dq;->S:I

    return p1
.end method

.method static synthetic b(Lcom/android/gallery3d/app/dq;)Lcom/android/gallery3d/app/h;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->Er:Lcom/android/gallery3d/app/h;

    return-object v0
.end method

.method static synthetic c(Lcom/android/gallery3d/app/dq;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/android/gallery3d/app/dq;->V:I

    return p1
.end method

.method static synthetic c(Lcom/android/gallery3d/app/dq;)[J
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->io:[J

    return-object v0
.end method

.method static synthetic d(Lcom/android/gallery3d/app/dq;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/app/dq;->R:I

    return v0
.end method

.method static synthetic e(Lcom/android/gallery3d/app/dq;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/app/dq;->S:I

    return v0
.end method

.method static synthetic f(Lcom/android/gallery3d/app/dq;)J
    .locals 2
    .parameter

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/android/gallery3d/app/dq;->ad:J

    return-wide v0
.end method

.method static synthetic g(Lcom/android/gallery3d/app/dq;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/app/dq;->mSize:I

    return v0
.end method

.method static synthetic h(Lcom/android/gallery3d/app/dq;)Lcom/android/gallery3d/ui/dl;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->Eq:Lcom/android/gallery3d/ui/dl;

    return-object v0
.end method

.method static synthetic i(Lcom/android/gallery3d/app/dq;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/app/dq;->V:I

    return v0
.end method

.method static synthetic j(Lcom/android/gallery3d/app/dq;)[[Lcom/android/gallery3d/a/ax;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->Ep:[[Lcom/android/gallery3d/a/ax;

    return-object v0
.end method

.method static synthetic k(Lcom/android/gallery3d/app/dq;)[J
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->in:[J

    return-object v0
.end method

.method private l(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 156
    iget v0, p0, Lcom/android/gallery3d/app/dq;->R:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/dq;->S:I

    if-ne p2, v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->Ep:[[Lcom/android/gallery3d/a/ax;

    .line 158
    array-length v1, v0

    .line 160
    iget v0, p0, Lcom/android/gallery3d/app/dq;->R:I

    .line 161
    iget v2, p0, Lcom/android/gallery3d/app/dq;->S:I

    .line 163
    iput p1, p0, Lcom/android/gallery3d/app/dq;->R:I

    .line 164
    iput p2, p0, Lcom/android/gallery3d/app/dq;->S:I

    .line 166
    if-ge p1, v2, :cond_1

    if-lt v0, p2, :cond_2

    .line 167
    :cond_1
    :goto_1
    if-ge v0, v2, :cond_4

    .line 168
    rem-int v3, v0, v1

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/dq;->M(I)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_2
    :goto_2
    if-ge v0, p1, :cond_3

    .line 172
    rem-int v3, v0, v1

    invoke-direct {p0, v3}, Lcom/android/gallery3d/app/dq;->M(I)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 174
    :cond_3
    :goto_3
    if-ge p2, v2, :cond_4

    .line 175
    rem-int v0, p2, v1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/dq;->M(I)V

    .line 174
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->Er:Lcom/android/gallery3d/app/h;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/h;->G()V

    goto :goto_0
.end method

.method static synthetic l(Lcom/android/gallery3d/app/dq;)[Lcom/android/gallery3d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->Eo:[Lcom/android/gallery3d/a/r;

    return-object v0
.end method

.method static synthetic m(Lcom/android/gallery3d/app/dq;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/app/dq;->U:I

    return v0
.end method

.method static synthetic n(Lcom/android/gallery3d/app/dq;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->Y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o(Lcom/android/gallery3d/app/dq;)Lcom/android/gallery3d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->ab:Lcom/android/gallery3d/a/r;

    return-object v0
.end method


# virtual methods
.method public L(I)Z
    .locals 1
    .parameter

    .prologue
    .line 141
    iget v0, p0, Lcom/android/gallery3d/app/dq;->U:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/dq;->V:I

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
    .line 214
    iput-object p1, p0, Lcom/android/gallery3d/app/dq;->ir:Lcom/android/gallery3d/app/ad;

    .line 215
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/dl;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/gallery3d/app/dq;->Eq:Lcom/android/gallery3d/ui/dl;

    .line 211
    return-void
.end method

.method public ar(I)[Lcom/android/gallery3d/a/ax;
    .locals 5
    .parameter

    .prologue
    .line 122
    iget v0, p0, Lcom/android/gallery3d/app/dq;->U:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/dq;->V:I

    if-lt p1, v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s not in (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/gallery3d/app/dq;->U:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/gallery3d/app/dq;->V:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->Ep:[[Lcom/android/gallery3d/a/ax;

    iget-object v1, p0, Lcom/android/gallery3d/app/dq;->Ep:[[Lcom/android/gallery3d/a/ax;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    .line 129
    if-nez v0, :cond_1

    sget-object v0, Lcom/android/gallery3d/app/dq;->En:[Lcom/android/gallery3d/a/ax;

    :cond_1
    return-object v0
.end method

.method public as(I)Lcom/android/gallery3d/a/r;
    .locals 5
    .parameter

    .prologue
    .line 114
    iget v0, p0, Lcom/android/gallery3d/app/dq;->U:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/dq;->V:I

    if-lt p1, v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s not in (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/gallery3d/app/dq;->U:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/gallery3d/app/dq;->V:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->Eo:[Lcom/android/gallery3d/a/r;

    iget-object v1, p0, Lcom/android/gallery3d/app/dq;->Eo:[Lcom/android/gallery3d/a/r;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bC()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/gallery3d/app/dq;->U:I

    return v0
.end method

.method public bD()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/gallery3d/app/dq;->V:I

    return v0
.end method

.method public m(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 182
    iget v0, p0, Lcom/android/gallery3d/app/dq;->U:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/app/dq;->V:I

    if-ne p2, v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    if-gt p1, p2, :cond_3

    sub-int v0, p2, p1

    iget-object v2, p0, Lcom/android/gallery3d/app/dq;->Ep:[[Lcom/android/gallery3d/a/ax;

    array-length v2, v2

    if-gt v0, v2, :cond_3

    iget v0, p0, Lcom/android/gallery3d/app/dq;->mSize:I

    if-gt p2, v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 187
    iput p1, p0, Lcom/android/gallery3d/app/dq;->U:I

    .line 188
    iput p2, p0, Lcom/android/gallery3d/app/dq;->V:I

    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->Ep:[[Lcom/android/gallery3d/a/ax;

    array-length v0, v0

    .line 192
    if-eq p1, p2, :cond_0

    .line 194
    add-int v2, p1, p2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/gallery3d/app/dq;->mSize:I

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 196
    add-int/2addr v0, v1

    iget v2, p0, Lcom/android/gallery3d/app/dq;->mSize:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 197
    iget v2, p0, Lcom/android/gallery3d/app/dq;->R:I

    if-gt v2, p1, :cond_2

    iget v2, p0, Lcom/android/gallery3d/app/dq;->S:I

    if-lt v2, p2, :cond_2

    iget v2, p0, Lcom/android/gallery3d/app/dq;->R:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 199
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/app/dq;->l(II)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 184
    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->Er:Lcom/android/gallery3d/app/h;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/h;->terminate()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/dq;->Er:Lcom/android/gallery3d/app/h;

    .line 104
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->ab:Lcom/android/gallery3d/a/r;

    iget-object v1, p0, Lcom/android/gallery3d/app/dq;->Es:Lcom/android/gallery3d/app/cn;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/r;->b(Lcom/android/gallery3d/a/an;)V

    .line 105
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->ab:Lcom/android/gallery3d/a/r;

    iget-object v1, p0, Lcom/android/gallery3d/app/dq;->Es:Lcom/android/gallery3d/app/cn;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/an;)V

    .line 109
    new-instance v0, Lcom/android/gallery3d/app/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/h;-><init>(Lcom/android/gallery3d/app/dq;Lcom/android/gallery3d/app/af;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/dq;->Er:Lcom/android/gallery3d/app/h;

    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/app/dq;->Er:Lcom/android/gallery3d/app/h;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/h;->start()V

    .line 111
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/gallery3d/app/dq;->mSize:I

    return v0
.end method
