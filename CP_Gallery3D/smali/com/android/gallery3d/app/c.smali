.class public Lcom/android/gallery3d/app/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/app/dt;


# static fields
.field private static final F:I = 0x1

.field private static final G:I = 0x2

.field private static final H:I = 0x3

.field private static final I:I = 0x8

.field private static final J:I = 0x20

.field private static final K:I = 0x5

.field private static final L:I = 0x1

.field private static final M:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final N:J = 0x0L

.field private static O:[Lcom/android/gallery3d/app/bg; = null

.field private static final TAG:Ljava/lang/String; = "PhotoDataAdapter"


# instance fields
.field private final P:Lcom/android/gallery3d/ui/bl;

.field private final Q:[Lcom/android/gallery3d/a/ax;

.field private R:I

.field private S:I

.field private T:Ljava/util/HashMap;

.field private U:I

.field private V:I

.field private W:I

.field private final X:[J

.field private final Y:Landroid/os/Handler;

.field private final Z:Lcom/android/gallery3d/b/n;

.field private final aa:Lcom/android/gallery3d/ui/ap;

.field private final ab:Lcom/android/gallery3d/a/r;

.field private ac:Lcom/android/gallery3d/app/cb;

.field private ad:J

.field private ae:Lcom/android/gallery3d/a/dd;

.field private af:Z

.field private ag:Lcom/android/gallery3d/app/cx;

.field private ah:Lcom/android/gallery3d/a/ax;

.field private ai:Lcom/android/gallery3d/b/l;

.field private final aj:Lcom/android/gallery3d/app/ba;

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 66
    invoke-static {}, Lcom/android/gallery3d/a/bj;->ex()J

    move-result-wide v2

    sput-wide v2, Lcom/android/gallery3d/app/c;->N:J

    .line 86
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/gallery3d/app/bg;

    sput-object v0, Lcom/android/gallery3d/app/c;->O:[Lcom/android/gallery3d/app/bg;

    .line 87
    sget-object v0, Lcom/android/gallery3d/app/c;->O:[Lcom/android/gallery3d/app/bg;

    new-instance v2, Lcom/android/gallery3d/app/bg;

    invoke-direct {v2, v7, v1}, Lcom/android/gallery3d/app/bg;-><init>(II)V

    aput-object v2, v0, v7

    move v0, v1

    move v2, v1

    .line 89
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 90
    sget-object v3, Lcom/android/gallery3d/app/c;->O:[Lcom/android/gallery3d/app/bg;

    add-int/lit8 v4, v2, 0x1

    new-instance v5, Lcom/android/gallery3d/app/bg;

    invoke-direct {v5, v0, v1}, Lcom/android/gallery3d/app/bg;-><init>(II)V

    aput-object v5, v3, v2

    .line 91
    sget-object v3, Lcom/android/gallery3d/app/c;->O:[Lcom/android/gallery3d/app/bg;

    add-int/lit8 v2, v4, 0x1

    new-instance v5, Lcom/android/gallery3d/app/bg;

    neg-int v6, v0

    invoke-direct {v5, v6, v1}, Lcom/android/gallery3d/app/bg;-><init>(II)V

    aput-object v5, v3, v4

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    sget-object v0, Lcom/android/gallery3d/app/c;->O:[Lcom/android/gallery3d/app/bg;

    add-int/lit8 v3, v2, 0x1

    new-instance v4, Lcom/android/gallery3d/app/bg;

    invoke-direct {v4, v7, v8}, Lcom/android/gallery3d/app/bg;-><init>(II)V

    aput-object v4, v0, v2

    .line 95
    sget-object v0, Lcom/android/gallery3d/app/c;->O:[Lcom/android/gallery3d/app/bg;

    add-int/lit8 v2, v3, 0x1

    new-instance v4, Lcom/android/gallery3d/app/bg;

    invoke-direct {v4, v1, v8}, Lcom/android/gallery3d/app/bg;-><init>(II)V

    aput-object v4, v0, v3

    .line 96
    sget-object v0, Lcom/android/gallery3d/app/c;->O:[Lcom/android/gallery3d/app/bg;

    add-int/lit8 v1, v2, 0x1

    new-instance v1, Lcom/android/gallery3d/app/bg;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v8}, Lcom/android/gallery3d/app/bg;-><init>(II)V

    aput-object v1, v0, v2

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/ap;Lcom/android/gallery3d/a/r;Lcom/android/gallery3d/a/dd;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 166
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/android/gallery3d/ui/bl;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/bl;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/c;->P:Lcom/android/gallery3d/ui/bl;

    .line 112
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/android/gallery3d/a/ax;

    iput-object v0, p0, Lcom/android/gallery3d/app/c;->Q:[Lcom/android/gallery3d/a/ax;

    .line 113
    iput v1, p0, Lcom/android/gallery3d/app/c;->R:I

    .line 114
    iput v1, p0, Lcom/android/gallery3d/app/c;->S:I

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/c;->T:Ljava/util/HashMap;

    .line 124
    iput v1, p0, Lcom/android/gallery3d/app/c;->U:I

    .line 125
    iput v1, p0, Lcom/android/gallery3d/app/c;->V:I

    .line 134
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/gallery3d/app/c;->X:[J

    .line 143
    iput-wide v2, p0, Lcom/android/gallery3d/app/c;->ad:J

    .line 144
    iput v1, p0, Lcom/android/gallery3d/app/c;->mSize:I

    .line 159
    new-instance v0, Lcom/android/gallery3d/app/ba;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/ba;-><init>(Lcom/android/gallery3d/app/c;Lcom/android/gallery3d/app/v;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/c;->aj:Lcom/android/gallery3d/app/ba;

    .line 167
    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/r;

    iput-object v0, p0, Lcom/android/gallery3d/app/c;->ab:Lcom/android/gallery3d/a/r;

    .line 168
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ap;

    iput-object v0, p0, Lcom/android/gallery3d/app/c;->aa:Lcom/android/gallery3d/ui/ap;

    .line 169
    invoke-static {p4}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/dd;

    iput-object v0, p0, Lcom/android/gallery3d/app/c;->ae:Lcom/android/gallery3d/a/dd;

    .line 170
    iput p5, p0, Lcom/android/gallery3d/app/c;->W:I

    .line 171
    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->dw()Lcom/android/gallery3d/b/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/c;->Z:Lcom/android/gallery3d/b/n;

    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->X:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 175
    new-instance v0, Lcom/android/gallery3d/app/v;

    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/v;-><init>(Lcom/android/gallery3d/app/c;Lcom/android/gallery3d/ui/eh;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/c;->Y:Landroid/os/Handler;

    .line 196
    invoke-direct {p0}, Lcom/android/gallery3d/app/c;->s()V

    .line 198
    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/gallery3d/a/ao;->f(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    iput-object v0, p0, Lcom/android/gallery3d/app/c;->ah:Lcom/android/gallery3d/a/ax;

    .line 201
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/c;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/android/gallery3d/app/c;->mSize:I

    return p1
.end method

.method static synthetic a(Lcom/android/gallery3d/app/c;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/android/gallery3d/app/c;->ad:J

    return-wide p1
.end method

.method static synthetic a(Lcom/android/gallery3d/app/c;Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/dd;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/gallery3d/app/c;->ae:Lcom/android/gallery3d/a/dd;

    return-object p1
.end method

.method static synthetic a(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/app/cx;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ag:Lcom/android/gallery3d/app/cx;

    return-object v0
.end method

.method private a(II)Lcom/android/gallery3d/b/l;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 690
    iget v0, p0, Lcom/android/gallery3d/app/c;->U:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/c;->V:I

    if-lt p1, v0, :cond_1

    :cond_0
    move-object v0, v3

    .line 727
    :goto_0
    return-object v0

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->T:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/c;->c(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/ea;

    .line 693
    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_0

    .line 695
    :cond_2
    if-ne p2, v2, :cond_3

    iget-object v1, v0, Lcom/android/gallery3d/app/ea;->FJ:Lcom/android/gallery3d/b/l;

    if-eqz v1, :cond_3

    .line 696
    iget-object v0, v0, Lcom/android/gallery3d/app/ea;->FJ:Lcom/android/gallery3d/b/l;

    goto :goto_0

    .line 697
    :cond_3
    if-ne p2, v6, :cond_4

    iget-object v1, v0, Lcom/android/gallery3d/app/ea;->FK:Lcom/android/gallery3d/b/l;

    if-eqz v1, :cond_4

    .line 698
    iget-object v0, v0, Lcom/android/gallery3d/app/ea;->FK:Lcom/android/gallery3d/b/l;

    goto :goto_0

    .line 701
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/c;->Q:[Lcom/android/gallery3d/a/ax;

    rem-int/lit8 v4, p1, 0x20

    aget-object v4, v1, v4

    .line 702
    if-eqz v4, :cond_5

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 704
    if-ne p2, v2, :cond_6

    iget v1, v0, Lcom/android/gallery3d/app/ea;->FG:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_6

    .line 706
    iget v1, v0, Lcom/android/gallery3d/app/ea;->FG:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/gallery3d/app/ea;->FG:I

    .line 710
    iget-object v1, p0, Lcom/android/gallery3d/app/c;->Z:Lcom/android/gallery3d/b/n;

    new-instance v2, Lcom/android/gallery3d/app/ao;

    invoke-direct {v2, v4}, Lcom/android/gallery3d/app/ao;-><init>(Lcom/android/gallery3d/a/ax;)V

    new-instance v3, Lcom/android/gallery3d/app/dz;

    invoke-virtual {v4}, Lcom/android/gallery3d/a/ax;->et()J

    move-result-wide v4

    invoke-direct {v3, p0, v4, v5}, Lcom/android/gallery3d/app/dz;-><init>(Lcom/android/gallery3d/app/c;J)V

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/app/ea;->FJ:Lcom/android/gallery3d/b/l;

    .line 714
    iget-object v0, v0, Lcom/android/gallery3d/app/ea;->FJ:Lcom/android/gallery3d/b/l;

    goto :goto_0

    .line 702
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 716
    :cond_6
    if-ne p2, v6, :cond_7

    iget v1, v0, Lcom/android/gallery3d/app/ea;->FG:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_7

    invoke-virtual {v4}, Lcom/android/gallery3d/a/ax;->am()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_7

    .line 720
    iget v1, v0, Lcom/android/gallery3d/app/ea;->FG:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/gallery3d/app/ea;->FG:I

    .line 721
    iget-object v1, p0, Lcom/android/gallery3d/app/c;->Z:Lcom/android/gallery3d/b/n;

    invoke-virtual {v4}, Lcom/android/gallery3d/a/ax;->al()Lcom/android/gallery3d/b/ab;

    move-result-object v2

    new-instance v3, Lcom/android/gallery3d/app/b;

    invoke-virtual {v4}, Lcom/android/gallery3d/a/ax;->et()J

    move-result-wide v4

    invoke-direct {v3, p0, v4, v5}, Lcom/android/gallery3d/app/b;-><init>(Lcom/android/gallery3d/app/c;J)V

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    move-result-object v1

    iput-object v1, v0, Lcom/android/gallery3d/app/ea;->FK:Lcom/android/gallery3d/b/l;

    .line 725
    iget-object v0, v0, Lcom/android/gallery3d/app/ea;->FK:Lcom/android/gallery3d/b/l;

    goto/16 :goto_0

    :cond_7
    move-object v0, v3

    .line 727
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/android/gallery3d/app/c;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/c;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 825
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 826
    iget-object v1, p0, Lcom/android/gallery3d/app/c;->Y:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/gallery3d/app/c;->Y:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 829
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 831
    :goto_0
    return-object v0

    .line 830
    :catch_0
    move-exception v0

    .line 831
    const/4 v0, 0x0

    goto :goto_0

    .line 832
    :catch_1
    move-exception v0

    .line 833
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(JLcom/android/gallery3d/b/l;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 228
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->T:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/ea;

    .line 229
    invoke-virtual {p0}, Lcom/android/gallery3d/app/c;->p()Lcom/android/gallery3d/a/ax;

    .line 230
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/gallery3d/app/ea;->FJ:Lcom/android/gallery3d/b/l;

    if-eq v1, p3, :cond_2

    .line 231
    :cond_0
    invoke-interface {p3}, Lcom/android/gallery3d/b/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 232
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 260
    :cond_1
    :goto_0
    return-void

    .line 236
    :cond_2
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/gallery3d/app/ea;->FJ:Lcom/android/gallery3d/b/l;

    .line 237
    invoke-interface {p3}, Lcom/android/gallery3d/b/l;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/gallery3d/app/ea;->FI:Landroid/graphics/Bitmap;

    .line 243
    iget-object v1, p0, Lcom/android/gallery3d/app/c;->ag:Lcom/android/gallery3d/app/cx;

    if-eqz v1, :cond_3

    .line 244
    iget-object v1, p0, Lcom/android/gallery3d/app/c;->ag:Lcom/android/gallery3d/app/cx;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Lcom/android/gallery3d/app/cx;->a(JZ)V

    .line 246
    :cond_3
    const/4 v1, -0x1

    :goto_1
    if-gt v1, v4, :cond_7

    .line 247
    iget v2, p0, Lcom/android/gallery3d/app/c;->W:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/c;->c(I)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_6

    .line 248
    iget-object v2, v0, Lcom/android/gallery3d/app/ea;->FI:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 249
    iput-boolean v4, v0, Lcom/android/gallery3d/app/ea;->FL:Z

    .line 251
    :cond_4
    if-nez v1, :cond_5

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/c;->a(Lcom/android/gallery3d/app/ea;)V

    .line 252
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/app/c;->aa:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/ui/ap;->ad(I)V

    .line 246
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 259
    :cond_7
    invoke-direct {p0}, Lcom/android/gallery3d/app/c;->t()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/gallery3d/app/c;JLcom/android/gallery3d/b/l;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/c;->b(JLcom/android/gallery3d/b/l;)V

    return-void
.end method

.method private a(Lcom/android/gallery3d/app/ea;)V
    .locals 5
    .parameter

    .prologue
    .line 545
    iget-object v0, p1, Lcom/android/gallery3d/app/ea;->FI:Landroid/graphics/Bitmap;

    .line 546
    iget-object v1, p1, Lcom/android/gallery3d/app/ea;->FH:Landroid/graphics/BitmapRegionDecoder;

    .line 547
    if-eqz v0, :cond_2

    .line 548
    if-eqz v1, :cond_1

    .line 549
    iget-object v2, p0, Lcom/android/gallery3d/app/c;->P:Lcom/android/gallery3d/ui/bl;

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/gallery3d/ui/bl;->a(Landroid/graphics/Bitmap;II)V

    .line 551
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->P:Lcom/android/gallery3d/ui/bl;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/bl;->b(Landroid/graphics/BitmapRegionDecoder;)V

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 554
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 555
    iget-object v3, p0, Lcom/android/gallery3d/app/c;->P:Lcom/android/gallery3d/ui/bl;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/gallery3d/ui/bl;->a(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    .line 560
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/c;->r()Z

    move-result v0

    .line 561
    if-eqz v0, :cond_3

    .line 562
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->P:Lcom/android/gallery3d/ui/bl;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bl;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :cond_3
    :goto_1
    iget-boolean v0, p1, Lcom/android/gallery3d/app/ea;->FL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/c;->P:Lcom/android/gallery3d/ui/bl;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bl;->dM()V

    goto :goto_0

    .line 564
    :catch_0
    move-exception v0

    .line 565
    const-string v1, "PhotoDataAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/gallery3d/app/c;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/android/gallery3d/app/c;->S:I

    return p1
.end method

.method static synthetic b(Lcom/android/gallery3d/app/c;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->Y:Landroid/os/Handler;

    return-object v0
.end method

.method private b(JLcom/android/gallery3d/b/l;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->T:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/ea;

    .line 264
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/gallery3d/app/ea;->FK:Lcom/android/gallery3d/b/l;

    if-eq v1, p3, :cond_2

    .line 265
    :cond_0
    invoke-interface {p3}, Lcom/android/gallery3d/b/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    .line 266
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 284
    :cond_1
    :goto_0
    return-void

    .line 270
    :cond_2
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/gallery3d/app/ea;->FK:Lcom/android/gallery3d/b/l;

    .line 271
    invoke-interface {p3}, Lcom/android/gallery3d/b/l;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    iput-object v1, v0, Lcom/android/gallery3d/app/ea;->FH:Landroid/graphics/BitmapRegionDecoder;

    .line 272
    iget-object v1, v0, Lcom/android/gallery3d/app/ea;->FH:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v1, :cond_4

    .line 273
    iget-object v1, p0, Lcom/android/gallery3d/app/c;->ag:Lcom/android/gallery3d/app/cx;

    if-eqz v1, :cond_3

    .line 274
    iget-object v1, p0, Lcom/android/gallery3d/app/c;->ag:Lcom/android/gallery3d/app/cx;

    const/4 v2, 0x1

    invoke-interface {v1, p1, p2, v2}, Lcom/android/gallery3d/app/cx;->a(JZ)V

    .line 276
    :cond_3
    iget v1, p0, Lcom/android/gallery3d/app/c;->W:I

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/c;->c(I)J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-nez v1, :cond_4

    .line 278
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/c;->a(Lcom/android/gallery3d/app/ea;)V

    .line 279
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->aa:Lcom/android/gallery3d/ui/ap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ap;->ad(I)V

    .line 283
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/app/c;->t()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/gallery3d/app/c;JLcom/android/gallery3d/b/l;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/c;->a(JLcom/android/gallery3d/b/l;)V

    return-void
.end method

.method static synthetic c(Lcom/android/gallery3d/app/c;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/android/gallery3d/app/c;->V:I

    return p1
.end method

.method private c(I)J
    .locals 2
    .parameter

    .prologue
    .line 204
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/c;->mSize:I

    if-lt p1, v0, :cond_1

    :cond_0
    sget-wide v0, Lcom/android/gallery3d/app/c;->N:J

    .line 209
    :goto_0
    return-wide v0

    .line 205
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/c;->R:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/app/c;->S:I

    if-ge p1, v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->Q:[Lcom/android/gallery3d/a/ax;

    rem-int/lit8 v1, p1, 0x20

    aget-object v0, v0, v1

    .line 207
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->et()J

    move-result-wide v0

    goto :goto_0

    .line 209
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/ui/bl;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->P:Lcom/android/gallery3d/ui/bl;

    return-object v0
.end method

.method static synthetic d(Lcom/android/gallery3d/app/c;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/android/gallery3d/app/c;->W:I

    return p1
.end method

.method static synthetic d(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/ui/ap;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->aa:Lcom/android/gallery3d/ui/ap;

    return-object v0
.end method

.method private d(I)Lcom/android/gallery3d/ui/au;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 400
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/app/c;->mSize:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/c;->af:Z

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 408
    :goto_0
    return-object v0

    .line 401
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/app/c;->U:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/app/c;->V:I

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 403
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->T:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/c;->c(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/ea;

    .line 404
    if-nez v0, :cond_3

    move-object v3, v2

    .line 405
    :goto_2
    if-eqz v3, :cond_4

    .line 406
    new-instance v1, Lcom/android/gallery3d/ui/au;

    iget v0, v0, Lcom/android/gallery3d/app/ea;->rotation:I

    invoke-direct {v1, v3, v0}, Lcom/android/gallery3d/ui/au;-><init>(Landroid/graphics/Bitmap;I)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 401
    goto :goto_1

    .line 404
    :cond_3
    iget-object v3, v0, Lcom/android/gallery3d/app/ea;->FI:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 408
    :cond_4
    new-instance v0, Lcom/android/gallery3d/ui/au;

    invoke-direct {v0, v2, v1}, Lcom/android/gallery3d/ui/au;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 213
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 214
    iget v1, p0, Lcom/android/gallery3d/app/c;->W:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/c;->c(I)J

    move-result-wide v1

    .line 215
    iget-object v3, p0, Lcom/android/gallery3d/app/c;->X:[J

    add-int/lit8 v4, v0, 0x1

    aget-wide v3, v3, v4

    .line 216
    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/android/gallery3d/app/c;->aa:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/ap;->ad(I)V

    .line 218
    iget-object v3, p0, Lcom/android/gallery3d/app/c;->X:[J

    add-int/lit8 v4, v0, 0x1

    aput-wide v1, v3, v4

    .line 213
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/a/ax;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ah:Lcom/android/gallery3d/a/ax;

    return-object v0
.end method

.method private e(I)V
    .locals 2
    .parameter

    .prologue
    .line 422
    :try_start_0
    iput p1, p0, Lcom/android/gallery3d/app/c;->W:I

    .line 423
    invoke-direct {p0}, Lcom/android/gallery3d/app/c;->s()V

    .line 424
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->Q:[Lcom/android/gallery3d/a/ax;

    rem-int/lit8 v1, p1, 0x20

    aget-object v0, v0, v1

    .line 425
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/app/c;->ae:Lcom/android/gallery3d/a/dd;

    .line 427
    invoke-direct {p0}, Lcom/android/gallery3d/app/c;->u()V

    .line 428
    invoke-direct {p0}, Lcom/android/gallery3d/app/c;->t()V

    .line 429
    invoke-direct {p0}, Lcom/android/gallery3d/app/c;->q()V

    .line 430
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->aa:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ap;->cO()V

    .line 432
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ag:Lcom/android/gallery3d/app/cx;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ag:Lcom/android/gallery3d/app/cx;

    iget-object v1, p0, Lcom/android/gallery3d/app/c;->ae:Lcom/android/gallery3d/a/dd;

    invoke-interface {v0, p1, v1}, Lcom/android/gallery3d/app/cx;->a(ILcom/android/gallery3d/a/dd;)V

    .line 435
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/c;->d()V

    .line 444
    :goto_1
    return-void

    .line 425
    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    :try_start_1
    const-string v0, "PhotoDataAdapter"

    const-string v1, "updateCurrentIndex "

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 441
    :catchall_0
    move-exception v0

    throw v0

    .line 438
    :catch_1
    move-exception v0

    .line 439
    :try_start_2
    const-string v0, "PhotoDataAdapter"

    const-string v1, "updateCurrentIndex "

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic f(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/app/cb;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ac:Lcom/android/gallery3d/app/cb;

    return-object v0
.end method

.method static synthetic g(Lcom/android/gallery3d/app/c;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/android/gallery3d/app/c;->R:I

    return v0
.end method

.method static synthetic h(Lcom/android/gallery3d/app/c;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/android/gallery3d/app/c;->S:I

    return v0
.end method

.method static synthetic i(Lcom/android/gallery3d/app/c;)[Lcom/android/gallery3d/a/ax;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->Q:[Lcom/android/gallery3d/a/ax;

    return-object v0
.end method

.method static synthetic j(Lcom/android/gallery3d/app/c;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/android/gallery3d/app/c;->W:I

    return v0
.end method

.method static synthetic k(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/a/dd;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ae:Lcom/android/gallery3d/a/dd;

    return-object v0
.end method

.method static synthetic l(Lcom/android/gallery3d/app/c;)J
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/android/gallery3d/app/c;->ad:J

    return-wide v0
.end method

.method static synthetic m(Lcom/android/gallery3d/app/c;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/android/gallery3d/app/c;->mSize:I

    return v0
.end method

.method static synthetic n(Lcom/android/gallery3d/app/c;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/android/gallery3d/app/c;->V:I

    return v0
.end method

.method static synthetic o(Lcom/android/gallery3d/app/c;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/gallery3d/app/c;->s()V

    return-void
.end method

.method static synthetic p(Lcom/android/gallery3d/app/c;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/gallery3d/app/c;->u()V

    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->T:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/gallery3d/app/c;->W:I

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/c;->c(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/ea;

    .line 537
    if-nez v0, :cond_0

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/c;->a(Lcom/android/gallery3d/app/ea;)V

    goto :goto_0
.end method

.method static synthetic q(Lcom/android/gallery3d/app/c;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/gallery3d/app/c;->q()V

    return-void
.end method

.method static synthetic r(Lcom/android/gallery3d/app/c;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/gallery3d/app/c;->t()V

    return-void
.end method

.method private s()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 603
    iget v0, p0, Lcom/android/gallery3d/app/c;->W:I

    add-int/lit8 v0, v0, -0x2

    iget v1, p0, Lcom/android/gallery3d/app/c;->mSize:I

    add-int/lit8 v1, v1, -0x5

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v0

    .line 605
    iget v1, p0, Lcom/android/gallery3d/app/c;->mSize:I

    add-int/lit8 v2, v0, 0x5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 607
    iget v2, p0, Lcom/android/gallery3d/app/c;->U:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/android/gallery3d/app/c;->V:I

    if-ne v2, v1, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iput v0, p0, Lcom/android/gallery3d/app/c;->U:I

    .line 610
    iput v1, p0, Lcom/android/gallery3d/app/c;->V:I

    .line 613
    iget v0, p0, Lcom/android/gallery3d/app/c;->W:I

    add-int/lit8 v0, v0, -0x10

    iget v1, p0, Lcom/android/gallery3d/app/c;->mSize:I

    add-int/lit8 v1, v1, -0x20

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 615
    iget v0, p0, Lcom/android/gallery3d/app/c;->mSize:I

    add-int/lit8 v2, v1, 0x20

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 616
    iget v0, p0, Lcom/android/gallery3d/app/c;->R:I

    iget v3, p0, Lcom/android/gallery3d/app/c;->U:I

    if-gt v0, v3, :cond_2

    iget v0, p0, Lcom/android/gallery3d/app/c;->S:I

    iget v3, p0, Lcom/android/gallery3d/app/c;->V:I

    if-lt v0, v3, :cond_2

    iget v0, p0, Lcom/android/gallery3d/app/c;->R:I

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v3, 0x8

    if-le v0, v3, :cond_0

    .line 618
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/app/c;->R:I

    :goto_1
    iget v3, p0, Lcom/android/gallery3d/app/c;->S:I

    if-ge v0, v3, :cond_5

    .line 619
    if-lt v0, v1, :cond_3

    if-lt v0, v2, :cond_4

    .line 620
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/app/c;->Q:[Lcom/android/gallery3d/a/ax;

    rem-int/lit8 v4, v0, 0x20

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 618
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 623
    :cond_5
    iput v1, p0, Lcom/android/gallery3d/app/c;->R:I

    .line 624
    iput v2, p0, Lcom/android/gallery3d/app/c;->S:I

    .line 625
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ac:Lcom/android/gallery3d/app/cb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ac:Lcom/android/gallery3d/app/cb;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/cb;->G()V

    goto :goto_0
.end method

.method static synthetic s(Lcom/android/gallery3d/app/c;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/gallery3d/app/c;->d()V

    return-void
.end method

.method static synthetic t(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ab:Lcom/android/gallery3d/a/r;

    return-object v0
.end method

.method private t()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 630
    iget-boolean v0, p0, Lcom/android/gallery3d/app/c;->af:Z

    if-nez v0, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    :try_start_0
    iget v2, p0, Lcom/android/gallery3d/app/c;->W:I

    .line 634
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->Q:[Lcom/android/gallery3d/a/ax;

    rem-int/lit8 v3, v2, 0x20

    aget-object v0, v0, v3

    .line 635
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    iget-object v3, p0, Lcom/android/gallery3d/app/c;->ae:Lcom/android/gallery3d/a/dd;

    if-ne v0, v3, :cond_0

    .line 642
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_1
    sget-object v3, Lcom/android/gallery3d/app/c;->O:[Lcom/android/gallery3d/app/bg;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 643
    sget-object v0, Lcom/android/gallery3d/app/c;->O:[Lcom/android/gallery3d/app/bg;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/gallery3d/app/bg;->qq:I

    .line 644
    sget-object v3, Lcom/android/gallery3d/app/c;->O:[Lcom/android/gallery3d/app/bg;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/android/gallery3d/app/bg;->qr:I

    .line 645
    add-int/2addr v0, v2

    invoke-direct {p0, v0, v3}, Lcom/android/gallery3d/app/c;->a(II)Lcom/android/gallery3d/b/l;

    move-result-object v0

    .line 646
    if-eqz v0, :cond_4

    move-object v1, v0

    .line 650
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->T:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/ea;

    .line 651
    iget-object v3, v0, Lcom/android/gallery3d/app/ea;->FJ:Lcom/android/gallery3d/b/l;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/gallery3d/app/ea;->FJ:Lcom/android/gallery3d/b/l;

    if-eq v3, v1, :cond_3

    .line 652
    iget-object v3, v0, Lcom/android/gallery3d/app/ea;->FJ:Lcom/android/gallery3d/b/l;

    invoke-interface {v3}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 653
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/gallery3d/app/ea;->FJ:Lcom/android/gallery3d/b/l;

    .line 654
    iget v3, v0, Lcom/android/gallery3d/app/ea;->FG:I

    and-int/lit8 v3, v3, -0x2

    iput v3, v0, Lcom/android/gallery3d/app/ea;->FG:I

    .line 656
    :cond_3
    iget-object v3, v0, Lcom/android/gallery3d/app/ea;->FK:Lcom/android/gallery3d/b/l;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/gallery3d/app/ea;->FK:Lcom/android/gallery3d/b/l;

    if-eq v3, v1, :cond_2

    .line 657
    iget-object v3, v0, Lcom/android/gallery3d/app/ea;->FK:Lcom/android/gallery3d/b/l;

    invoke-interface {v3}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 658
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/gallery3d/app/ea;->FK:Lcom/android/gallery3d/b/l;

    .line 659
    iget v3, v0, Lcom/android/gallery3d/app/ea;->FG:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v0, Lcom/android/gallery3d/app/ea;->FG:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 662
    :catch_0
    move-exception v0

    .line 663
    const-string v1, "PhotoDataAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 642
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_2
.end method

.method private u()V
    .locals 10

    .prologue
    const-wide/16 v4, -0x1

    const/4 v9, 0x0

    .line 731
    new-instance v6, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/gallery3d/app/c;->T:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 732
    iget v0, p0, Lcom/android/gallery3d/app/c;->U:I

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/android/gallery3d/app/c;->V:I

    if-ge v1, v0, :cond_5

    .line 733
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->Q:[Lcom/android/gallery3d/a/ax;

    rem-int/lit8 v2, v1, 0x20

    aget-object v7, v0, v2

    .line 734
    if-nez v7, :cond_1

    move-wide v2, v4

    .line 737
    :goto_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 732
    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 734
    :cond_1
    invoke-virtual {v7}, Lcom/android/gallery3d/a/ax;->et()J

    move-result-wide v2

    goto :goto_1

    .line 738
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->T:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/ea;

    .line 739
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 740
    if-eqz v0, :cond_4

    .line 741
    iget v2, p0, Lcom/android/gallery3d/app/c;->W:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 742
    iget-object v2, v0, Lcom/android/gallery3d/app/ea;->FK:Lcom/android/gallery3d/b/l;

    if-eqz v2, :cond_3

    .line 743
    iget-object v2, v0, Lcom/android/gallery3d/app/ea;->FK:Lcom/android/gallery3d/b/l;

    invoke-interface {v2}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 744
    iput-object v9, v0, Lcom/android/gallery3d/app/ea;->FK:Lcom/android/gallery3d/b/l;

    .line 746
    :cond_3
    iput-object v9, v0, Lcom/android/gallery3d/app/ea;->FH:Landroid/graphics/BitmapRegionDecoder;

    .line 747
    iget v2, v0, Lcom/android/gallery3d/app/ea;->FG:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Lcom/android/gallery3d/app/ea;->FG:I

    goto :goto_2

    .line 750
    :cond_4
    new-instance v0, Lcom/android/gallery3d/app/ea;

    invoke-direct {v0, v9}, Lcom/android/gallery3d/app/ea;-><init>(Lcom/android/gallery3d/app/v;)V

    .line 751
    invoke-virtual {v7}, Lcom/android/gallery3d/a/ax;->dE()I

    move-result v7

    iput v7, v0, Lcom/android/gallery3d/app/ea;->rotation:I

    .line 752
    iget-object v7, p0, Lcom/android/gallery3d/app/c;->T:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 757
    :cond_5
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 758
    iget-object v2, p0, Lcom/android/gallery3d/app/c;->T:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/ea;

    .line 759
    iget-object v2, v0, Lcom/android/gallery3d/app/ea;->FK:Lcom/android/gallery3d/b/l;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/android/gallery3d/app/ea;->FK:Lcom/android/gallery3d/b/l;

    invoke-interface {v2}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 760
    :cond_7
    iget-object v2, v0, Lcom/android/gallery3d/app/ea;->FJ:Lcom/android/gallery3d/b/l;

    if-eqz v2, :cond_6

    iget-object v0, v0, Lcom/android/gallery3d/app/ea;->FJ:Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    goto :goto_3

    .line 762
    :cond_8
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/dd;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ae:Lcom/android/gallery3d/a/dd;

    if-ne v0, p1, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/app/c;->ae:Lcom/android/gallery3d/a/dd;

    .line 523
    iput p2, p0, Lcom/android/gallery3d/app/c;->W:I

    .line 524
    invoke-direct {p0}, Lcom/android/gallery3d/app/c;->s()V

    .line 525
    invoke-direct {p0}, Lcom/android/gallery3d/app/c;->u()V

    .line 526
    invoke-direct {p0}, Lcom/android/gallery3d/app/c;->d()V

    .line 529
    invoke-virtual {p0}, Lcom/android/gallery3d/app/c;->p()Lcom/android/gallery3d/a/ax;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ac:Lcom/android/gallery3d/app/cb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ac:Lcom/android/gallery3d/app/cb;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/cb;->G()V

    goto :goto_0
.end method

.method public a(Lcom/android/gallery3d/app/cx;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/gallery3d/app/c;->ag:Lcom/android/gallery3d/app/cx;

    .line 225
    return-void
.end method

.method public b(IIII)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->P:Lcom/android/gallery3d/ui/bl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/bl;->b(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/android/gallery3d/ui/au;
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/android/gallery3d/app/c;->W:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/c;->d(I)Lcom/android/gallery3d/ui/au;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/android/gallery3d/ui/au;
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/android/gallery3d/app/c;->W:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/c;->d(I)Lcom/android/gallery3d/ui/au;

    move-result-object v0

    return-object v0
.end method

.method public f(I)V
    .locals 1
    .parameter

    .prologue
    .line 455
    iget v0, p0, Lcom/android/gallery3d/app/c;->W:I

    if-ne v0, p1, :cond_0

    .line 457
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/c;->e(I)V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/android/gallery3d/app/c;->W:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/c;->e(I)V

    .line 448
    return-void
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lcom/android/gallery3d/app/c;->W:I

    return v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/android/gallery3d/app/c;->W:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/c;->e(I)V

    .line 452
    return-void
.end method

.method public i()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->P:Lcom/android/gallery3d/ui/bl;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bl;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/android/gallery3d/app/c;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->P:Lcom/android/gallery3d/ui/bl;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bl;->j()I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->P:Lcom/android/gallery3d/ui/bl;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bl;->k()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ah:Lcom/android/gallery3d/a/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ah:Lcom/android/gallery3d/a/ax;

    iget-boolean v0, v0, Lcom/android/gallery3d/a/ax;->rL:Z

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ah:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->getRotation()I

    move-result v0

    .line 478
    :goto_0
    return v0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->T:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/gallery3d/app/c;->W:I

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/c;->c(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/ea;

    .line 478
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, v0, Lcom/android/gallery3d/app/ea;->rotation:I

    goto :goto_0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->P:Lcom/android/gallery3d/ui/bl;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bl;->m()I

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->P:Lcom/android/gallery3d/ui/bl;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bl;->n()Z

    move-result v0

    return v0
.end method

.method public o()[Lcom/android/gallery3d/a/ax;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->Q:[Lcom/android/gallery3d/a/ax;

    return-object v0
.end method

.method public p()Lcom/android/gallery3d/a/ax;
    .locals 5

    .prologue
    .line 510
    const/4 v0, 0x0

    .line 513
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/c;->Q:[Lcom/android/gallery3d/a/ax;

    iget v2, p0, Lcom/android/gallery3d/app/c;->W:I

    rem-int/lit8 v2, v2, 0x20

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    return-object v0

    .line 514
    :catch_0
    move-exception v1

    .line 515
    const-string v2, "PhotoDataAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/c;->af:Z

    .line 362
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ac:Lcom/android/gallery3d/app/cb;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/cb;->terminate()V

    .line 363
    iput-object v3, p0, Lcom/android/gallery3d/app/c;->ac:Lcom/android/gallery3d/app/cb;

    .line 365
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ab:Lcom/android/gallery3d/a/r;

    iget-object v1, p0, Lcom/android/gallery3d/app/c;->aj:Lcom/android/gallery3d/app/ba;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/r;->b(Lcom/android/gallery3d/a/an;)V

    .line 367
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->T:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/ea;

    .line 368
    iget-object v2, v0, Lcom/android/gallery3d/app/ea;->FK:Lcom/android/gallery3d/b/l;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/gallery3d/app/ea;->FK:Lcom/android/gallery3d/b/l;

    invoke-interface {v2}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 369
    :cond_1
    iget-object v2, v0, Lcom/android/gallery3d/app/ea;->FJ:Lcom/android/gallery3d/b/l;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/gallery3d/app/ea;->FJ:Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    goto :goto_0

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->T:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 372
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->P:Lcom/android/gallery3d/ui/bl;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bl;->clear()V

    .line 374
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ai:Lcom/android/gallery3d/b/l;

    .line 375
    iget-object v1, p0, Lcom/android/gallery3d/app/c;->ai:Lcom/android/gallery3d/b/l;

    if-eqz v1, :cond_3

    .line 376
    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 377
    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->N()V

    .line 378
    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 379
    iput-object v3, p0, Lcom/android/gallery3d/app/c;->ai:Lcom/android/gallery3d/b/l;

    .line 385
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/c;->p()Lcom/android/gallery3d/a/ax;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/gallery3d/app/c;->ah:Lcom/android/gallery3d/a/ax;

    if-eqz v1, :cond_4

    .line 387
    iget-object v1, p0, Lcom/android/gallery3d/app/c;->ah:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/ax;->dA()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->dA()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 388
    iget-object v1, p0, Lcom/android/gallery3d/app/c;->ah:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/ax;->dA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->dA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 389
    if-nez v1, :cond_4

    .line 390
    iput-object v0, p0, Lcom/android/gallery3d/app/c;->ah:Lcom/android/gallery3d/a/ax;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_4
    :goto_1
    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 395
    const-string v1, "PhotoDataAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public r()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 572
    .line 573
    invoke-virtual {p0}, Lcom/android/gallery3d/app/c;->p()Lcom/android/gallery3d/a/ax;

    move-result-object v2

    .line 574
    iget-object v3, p0, Lcom/android/gallery3d/app/c;->ah:Lcom/android/gallery3d/a/ax;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 575
    iget-object v3, p0, Lcom/android/gallery3d/app/c;->ah:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v3}, Lcom/android/gallery3d/a/ax;->getId()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/gallery3d/a/ax;->getId()I

    move-result v2

    if-eq v3, v2, :cond_1

    .line 598
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 575
    goto :goto_0

    .line 577
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/c;->ae:Lcom/android/gallery3d/a/dd;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/c;->ah:Lcom/android/gallery3d/a/ax;

    if-nez v3, :cond_3

    if-eqz v2, :cond_0

    .line 578
    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/app/c;->ae:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v3}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v3

    .line 579
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 580
    if-lez v4, :cond_4

    iget-object v5, p0, Lcom/android/gallery3d/app/c;->ah:Lcom/android/gallery3d/a/ax;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/gallery3d/app/c;->ah:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v5}, Lcom/android/gallery3d/a/ax;->ap()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 581
    iget-object v2, p0, Lcom/android/gallery3d/app/c;->ah:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/ax;->ap()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 582
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 583
    const-string v4, "content:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 584
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 587
    :cond_4
    if-lez v4, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/gallery3d/a/ax;->ap()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 588
    invoke-virtual {v2}, Lcom/android/gallery3d/a/ax;->ap()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 589
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 590
    const-string v4, "content:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 591
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 338
    iput-boolean v2, p0, Lcom/android/gallery3d/app/c;->af:Z

    .line 339
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ab:Lcom/android/gallery3d/a/r;

    iget-object v1, p0, Lcom/android/gallery3d/app/c;->aj:Lcom/android/gallery3d/app/ba;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/an;)V

    .line 340
    invoke-direct {p0}, Lcom/android/gallery3d/app/c;->u()V

    .line 341
    invoke-direct {p0}, Lcom/android/gallery3d/app/c;->t()V

    .line 343
    new-instance v0, Lcom/android/gallery3d/app/cb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/cb;-><init>(Lcom/android/gallery3d/app/c;Lcom/android/gallery3d/app/v;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/c;->ac:Lcom/android/gallery3d/app/cb;

    .line 344
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ac:Lcom/android/gallery3d/app/cb;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/cb;->start()V

    .line 346
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->aa:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ap;->cK()V

    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ah:Lcom/android/gallery3d/a/ax;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->ah:Lcom/android/gallery3d/a/ax;

    iput-boolean v2, v0, Lcom/android/gallery3d/a/ax;->rL:Z

    .line 351
    iget-object v0, p0, Lcom/android/gallery3d/app/c;->Z:Lcom/android/gallery3d/b/n;

    new-instance v1, Lcom/android/gallery3d/app/n;

    iget-object v2, p0, Lcom/android/gallery3d/app/c;->ah:Lcom/android/gallery3d/a/ax;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/app/n;-><init>(Lcom/android/gallery3d/a/ax;)V

    new-instance v2, Lcom/android/gallery3d/app/bs;

    iget-object v3, p0, Lcom/android/gallery3d/app/c;->ah:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v3}, Lcom/android/gallery3d/a/ax;->et()J

    move-result-wide v3

    invoke-direct {v2, p0, v3, v4}, Lcom/android/gallery3d/app/bs;-><init>(Lcom/android/gallery3d/app/c;J)V

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/c;->ai:Lcom/android/gallery3d/b/l;

    .line 357
    :cond_0
    return-void
.end method
