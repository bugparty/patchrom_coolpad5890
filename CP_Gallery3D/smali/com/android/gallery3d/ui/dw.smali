.class public Lcom/android/gallery3d/ui/dw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/dl;


# static fields
.field private static final TAG:Ljava/lang/String; = "GallerySlidingWindow"

.field private static final zD:I = 0x0

.field private static final zG:I = -0xddddde


# instance fields
.field private final DU:Lcom/android/gallery3d/ui/br;

.field private final DV:Lcom/android/gallery3d/ui/di;

.field private DW:Lcom/android/gallery3d/ui/af;

.field private final DX:[Lcom/android/gallery3d/ui/k;

.field private final DY:Ljava/lang/String;

.field private R:I

.field private S:I

.field private U:I

.field private V:I

.field private final Z:Lcom/android/gallery3d/b/n;

.field private af:Z

.field private mSize:I

.field private final nb:Lcom/android/gallery3d/ui/ag;

.field private pB:Lcom/android/gallery3d/ui/u;

.field private final zL:Lcom/android/gallery3d/ui/cr;

.field private zN:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/di;Lcom/android/gallery3d/ui/u;Lcom/android/gallery3d/ui/br;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, Lcom/android/gallery3d/ui/dw;->R:I

    .line 53
    iput v0, p0, Lcom/android/gallery3d/ui/dw;->S:I

    .line 55
    iput v0, p0, Lcom/android/gallery3d/ui/dw;->U:I

    .line 56
    iput v0, p0, Lcom/android/gallery3d/ui/dw;->V:I

    .line 67
    iput v0, p0, Lcom/android/gallery3d/ui/dw;->zN:I

    .line 69
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/dw;->af:Z

    .line 81
    invoke-interface {p4, p0}, Lcom/android/gallery3d/ui/br;->a(Lcom/android/gallery3d/ui/dl;)V

    .line 82
    iput-object p2, p0, Lcom/android/gallery3d/ui/dw;->DV:Lcom/android/gallery3d/ui/di;

    .line 83
    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0036

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/dw;->DY:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/android/gallery3d/ui/dw;->DU:Lcom/android/gallery3d/ui/br;

    .line 85
    iput-object p3, p0, Lcom/android/gallery3d/ui/dw;->pB:Lcom/android/gallery3d/ui/u;

    .line 86
    new-array v0, p5, [Lcom/android/gallery3d/ui/k;

    iput-object v0, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    .line 87
    invoke-interface {p4}, Lcom/android/gallery3d/ui/br;->size()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/dw;->mSize:I

    .line 89
    new-instance v0, Lcom/android/gallery3d/ui/cr;

    const v1, -0xddddde

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/cr;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/dw;->zL:Lcom/android/gallery3d/ui/cr;

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->zL:Lcom/android/gallery3d/ui/cr;

    invoke-virtual {v0, v2, v2}, Lcom/android/gallery3d/ui/cr;->setSize(II)V

    .line 92
    new-instance v0, Lcom/android/gallery3d/ui/cb;

    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/cb;-><init>(Lcom/android/gallery3d/ui/dw;Lcom/android/gallery3d/ui/eh;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/dw;->nb:Lcom/android/gallery3d/ui/ag;

    .line 100
    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->dw()Lcom/android/gallery3d/b/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/dw;->Z:Lcom/android/gallery3d/b/n;

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/dw;)Lcom/android/gallery3d/ui/cr;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->zL:Lcom/android/gallery3d/ui/cr;

    return-object v0
.end method

.method private aD(I)V
    .locals 4
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    .line 220
    array-length v1, v0

    rem-int v1, p1, v1

    .line 221
    aget-object v2, v0, v1

    .line 222
    if-eqz v2, :cond_0

    .line 223
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 224
    iget-object v2, v2, Lcom/android/gallery3d/ui/eb;->Ew:[Lcom/android/gallery3d/ui/av;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 225
    check-cast v0, Lcom/android/gallery3d/ui/dv;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dv;->recycle()V

    .line 224
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method

.method private aE(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 237
    iget-object v1, p0, Lcom/android/gallery3d/ui/dw;->DU:Lcom/android/gallery3d/ui/br;

    invoke-interface {v1, p1}, Lcom/android/gallery3d/ui/br;->as(I)Lcom/android/gallery3d/a/r;

    move-result-object v1

    .line 239
    if-eqz v1, :cond_0

    .line 240
    const-string v2, "GallerySlidingWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/gallery3d/a/r;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Pictures"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    new-instance v2, Lcom/android/gallery3d/ui/k;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/ui/k;-><init>(Lcom/android/gallery3d/ui/cb;)V

    .line 243
    iget-object v3, p0, Lcom/android/gallery3d/ui/dw;->DU:Lcom/android/gallery3d/ui/br;

    invoke-interface {v3, p1}, Lcom/android/gallery3d/ui/br;->ar(I)[Lcom/android/gallery3d/a/ax;

    move-result-object v3

    .line 244
    array-length v4, v3

    new-array v4, v4, [Lcom/android/gallery3d/ui/dv;

    iput-object v4, v2, Lcom/android/gallery3d/ui/eb;->Ew:[Lcom/android/gallery3d/ui/av;

    .line 245
    invoke-static {v1}, Lcom/android/gallery3d/ui/dw;->c(Lcom/android/gallery3d/a/r;)I

    move-result v4

    iput v4, v2, Lcom/android/gallery3d/ui/k;->ck:I

    .line 246
    invoke-static {v1}, Lcom/android/gallery3d/ui/dw;->d(Lcom/android/gallery3d/a/r;)I

    move-result v4

    iput v4, v2, Lcom/android/gallery3d/ui/k;->cl:I

    .line 247
    invoke-static {v1}, Lcom/android/gallery3d/ui/dw;->e(Lcom/android/gallery3d/a/r;)I

    move-result v4

    iput v4, v2, Lcom/android/gallery3d/ui/k;->cm:I

    .line 248
    if-nez v1, :cond_1

    :goto_0
    iput-object v0, v2, Lcom/android/gallery3d/ui/k;->cj:Lcom/android/gallery3d/a/dd;

    .line 250
    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 251
    iget-object v4, v2, Lcom/android/gallery3d/ui/eb;->Ew:[Lcom/android/gallery3d/ui/av;

    new-instance v5, Lcom/android/gallery3d/ui/dv;

    aget-object v6, v3, v0

    invoke-direct {v5, p0, p1, v0, v6}, Lcom/android/gallery3d/ui/dv;-><init>(Lcom/android/gallery3d/ui/dw;IILcom/android/gallery3d/a/ax;)V

    aput-object v5, v4, v0

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 248
    :cond_1
    invoke-virtual {v1}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    goto :goto_0

    .line 253
    :cond_2
    new-instance v0, Lcom/android/gallery3d/ui/o;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/ui/o;-><init>(Lcom/android/gallery3d/ui/dw;I)V

    iput-object v0, v2, Lcom/android/gallery3d/ui/eb;->Ex:Lcom/android/gallery3d/ui/av;

    .line 254
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/dw;->b(Lcom/android/gallery3d/a/r;)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/android/gallery3d/ui/eb;->Ey:J

    .line 255
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    iget-object v1, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    array-length v1, v1

    rem-int v1, p1, v1

    aput-object v2, v0, v1

    .line 256
    return-void
.end method

.method private aF(I)V
    .locals 4
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    .line 274
    array-length v1, v0

    rem-int v1, p1, v1

    .line 275
    aget-object v2, v0, v1

    .line 277
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/dw;->ba(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 278
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DU:Lcom/android/gallery3d/ui/br;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/br;->as(I)Lcom/android/gallery3d/a/r;

    move-result-object v0

    .line 279
    invoke-static {v0}, Lcom/android/gallery3d/ui/dw;->c(Lcom/android/gallery3d/a/r;)I

    move-result v1

    iput v1, v2, Lcom/android/gallery3d/ui/k;->ck:I

    .line 280
    invoke-static {v0}, Lcom/android/gallery3d/ui/dw;->d(Lcom/android/gallery3d/a/r;)I

    move-result v1

    iput v1, v2, Lcom/android/gallery3d/ui/k;->cl:I

    .line 281
    invoke-static {v0}, Lcom/android/gallery3d/ui/dw;->e(Lcom/android/gallery3d/a/r;)I

    move-result v1

    iput v1, v2, Lcom/android/gallery3d/ui/k;->cm:I

    .line 282
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, v2, Lcom/android/gallery3d/ui/k;->cj:Lcom/android/gallery3d/a/dd;

    .line 283
    iget-object v0, v2, Lcom/android/gallery3d/ui/eb;->Ex:Lcom/android/gallery3d/ui/av;

    check-cast v0, Lcom/android/gallery3d/ui/o;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/o;->ar()Z

    .line 284
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DW:Lcom/android/gallery3d/ui/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DW:Lcom/android/gallery3d/ui/af;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/af;->bN()V

    .line 299
    :cond_0
    return-void

    .line 282
    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    goto :goto_0

    .line 288
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/dw;->aE(I)V

    .line 289
    aget-object v0, v0, v1

    .line 291
    iget-object v1, p0, Lcom/android/gallery3d/ui/dw;->DW:Lcom/android/gallery3d/ui/af;

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/dw;->aC(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    iget-object v1, p0, Lcom/android/gallery3d/ui/dw;->DW:Lcom/android/gallery3d/ui/af;

    invoke-interface {v1, p1, v2, v0}, Lcom/android/gallery3d/ui/af;->a(ILcom/android/gallery3d/ui/eb;Lcom/android/gallery3d/ui/eb;)V

    .line 294
    :cond_3
    if-eqz v2, :cond_0

    .line 295
    iget-object v2, v2, Lcom/android/gallery3d/ui/eb;->Ew:[Lcom/android/gallery3d/ui/av;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 296
    check-cast v0, Lcom/android/gallery3d/ui/dv;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dv;->recycle()V

    .line 295
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private aY(I)V
    .locals 4
    .parameter

    .prologue
    .line 203
    iget v0, p0, Lcom/android/gallery3d/ui/dw;->R:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/dw;->S:I

    if-lt p1, v0, :cond_1

    .line 208
    :cond_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    iget-object v1, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    .line 205
    iget-object v2, v0, Lcom/android/gallery3d/ui/eb;->Ew:[Lcom/android/gallery3d/ui/av;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 206
    check-cast v0, Lcom/android/gallery3d/ui/dv;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dv;->eI()V

    .line 205
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private aZ(I)V
    .locals 4
    .parameter

    .prologue
    .line 211
    iget v0, p0, Lcom/android/gallery3d/ui/dw;->R:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/dw;->S:I

    if-lt p1, v0, :cond_1

    .line 216
    :cond_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    iget-object v1, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    .line 213
    iget-object v2, v0, Lcom/android/gallery3d/ui/eb;->Ew:[Lcom/android/gallery3d/ui/av;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 214
    check-cast v0, Lcom/android/gallery3d/ui/dv;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dv;->eJ()V

    .line 213
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/gallery3d/ui/dw;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/dw;->zN:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/dw;->zN:I

    return v0
.end method

.method private b(Lcom/android/gallery3d/a/r;)J
    .locals 2
    .parameter

    .prologue
    .line 231
    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/a/r;->et()J

    move-result-wide v0

    goto :goto_0
.end method

.method private ba(I)Z
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    iget-object v3, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    array-length v3, v3

    rem-int v3, p1, v3

    aget-object v4, v0, v3

    .line 260
    if-nez v4, :cond_0

    move v0, v1

    .line 268
    :goto_0
    return v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DU:Lcom/android/gallery3d/ui/br;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/br;->ar(I)[Lcom/android/gallery3d/a/ax;

    move-result-object v5

    .line 263
    iget-object v0, v4, Lcom/android/gallery3d/ui/eb;->Ew:[Lcom/android/gallery3d/ui/av;

    array-length v0, v0

    array-length v3, v5

    if-eq v0, v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 264
    :cond_1
    array-length v6, v5

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_3

    .line 265
    iget-object v0, v4, Lcom/android/gallery3d/ui/eb;->Ew:[Lcom/android/gallery3d/ui/av;

    aget-object v0, v0, v3

    check-cast v0, Lcom/android/gallery3d/ui/dv;

    .line 266
    invoke-static {v0}, Lcom/android/gallery3d/ui/dv;->b(Lcom/android/gallery3d/ui/dv;)J

    move-result-wide v7

    aget-object v0, v5, v3

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->et()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 264
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 268
    goto :goto_0
.end method

.method private bb(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 303
    iget v1, p0, Lcom/android/gallery3d/ui/dw;->R:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/dw;->S:I

    if-lt p1, v1, :cond_2

    .line 304
    :cond_0
    const-string v1, "GallerySlidingWindow"

    const-string v2, "invalid update: %s is outside (%s, %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget v4, p0, Lcom/android/gallery3d/ui/dw;->R:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget v4, p0, Lcom/android/gallery3d/ui/dw;->S:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_1
    return-void

    .line 309
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/dw;->aF(I)V

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/dw;->aC(I)Z

    move-result v2

    .line 311
    iget v1, p0, Lcom/android/gallery3d/ui/dw;->zN:I

    if-eqz v1, :cond_3

    if-eqz v2, :cond_1

    .line 312
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    iget-object v3, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    array-length v3, v3

    rem-int v3, p1, v3

    aget-object v1, v1, v3

    iget-object v3, v1, Lcom/android/gallery3d/ui/eb;->Ew:[Lcom/android/gallery3d/ui/av;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 313
    check-cast v0, Lcom/android/gallery3d/ui/dv;

    .line 314
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dv;->eI()V

    .line 315
    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dv;->eK()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 316
    iget v0, p0, Lcom/android/gallery3d/ui/dw;->zN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/dw;->zN:I

    .line 312
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static c(Lcom/android/gallery3d/a/r;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 454
    if-nez p0, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v0

    .line 458
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v1

    .line 459
    invoke-static {v1}, Lcom/android/gallery3d/b/e;->b(Lcom/android/gallery3d/a/dd;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 460
    const/4 v0, 0x4

    goto :goto_0

    .line 464
    :cond_2
    invoke-virtual {v1}, Lcom/android/gallery3d/a/dd;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 466
    const-string v2, "picasa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 467
    const/4 v0, 0x2

    goto :goto_0

    .line 468
    :cond_3
    const-string v2, "local"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "merge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 469
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 470
    :cond_5
    const-string v2, "mtp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    const/4 v0, 0x3

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/gallery3d/ui/dw;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/dw;->zN:I

    return v0
.end method

.method private static d(Lcom/android/gallery3d/a/r;)I
    .locals 1
    .parameter

    .prologue
    .line 478
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/a/r;->am()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 480
    :cond_0
    const/4 v0, 0x0

    .line 483
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/a/r;->eu()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/gallery3d/ui/dw;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/gallery3d/ui/dw;->fl()V

    return-void
.end method

.method private static e(Lcom/android/gallery3d/a/r;)I
    .locals 1
    .parameter

    .prologue
    .line 487
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/a/r;->am()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 489
    :cond_0
    const/4 v0, 0x0

    .line 492
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/a/r;->ev()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/android/gallery3d/ui/dw;)Lcom/android/gallery3d/ui/af;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DW:Lcom/android/gallery3d/ui/af;

    return-object v0
.end method

.method static synthetic f(Lcom/android/gallery3d/a/r;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-static {p0}, Lcom/android/gallery3d/ui/dw;->c(Lcom/android/gallery3d/a/r;)I

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/android/gallery3d/ui/dw;)[Lcom/android/gallery3d/ui/k;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    return-object v0
.end method

.method private fl()V
    .locals 3

    .prologue
    .line 185
    iget v0, p0, Lcom/android/gallery3d/ui/dw;->S:I

    iget v1, p0, Lcom/android/gallery3d/ui/dw;->V:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/ui/dw;->U:I

    iget v2, p0, Lcom/android/gallery3d/ui/dw;->R:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 187
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 188
    iget v2, p0, Lcom/android/gallery3d/ui/dw;->V:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/dw;->aY(I)V

    .line 189
    iget v2, p0, Lcom/android/gallery3d/ui/dw;->U:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/dw;->aY(I)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method private fm()V
    .locals 3

    .prologue
    .line 194
    iget v0, p0, Lcom/android/gallery3d/ui/dw;->S:I

    iget v1, p0, Lcom/android/gallery3d/ui/dw;->V:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/ui/dw;->U:I

    iget v2, p0, Lcom/android/gallery3d/ui/dw;->R:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 196
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 197
    iget v2, p0, Lcom/android/gallery3d/ui/dw;->V:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/dw;->aZ(I)V

    .line 198
    iget v2, p0, Lcom/android/gallery3d/ui/dw;->U:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/dw;->aZ(I)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method private fn()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 323
    iput v2, p0, Lcom/android/gallery3d/ui/dw;->zN:I

    .line 324
    iget v0, p0, Lcom/android/gallery3d/ui/dw;->U:I

    iget v4, p0, Lcom/android/gallery3d/ui/dw;->V:I

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_2

    .line 325
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    iget-object v1, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    array-length v1, v1

    rem-int v1, v3, v1

    aget-object v0, v0, v1

    iget-object v5, v0, Lcom/android/gallery3d/ui/eb;->Ew:[Lcom/android/gallery3d/ui/av;

    array-length v6, v5

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_1

    aget-object v0, v5, v1

    .line 326
    check-cast v0, Lcom/android/gallery3d/ui/dv;

    .line 327
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dv;->eI()V

    .line 328
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dv;->eK()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/dw;->zN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/dw;->zN:I

    .line 325
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 324
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 331
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/ui/dw;->zN:I

    if-nez v0, :cond_3

    .line 332
    invoke-direct {p0}, Lcom/android/gallery3d/ui/dw;->fl()V

    .line 336
    :goto_2
    return-void

    .line 334
    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/ui/dw;->fm()V

    goto :goto_2
.end method

.method static synthetic g(Lcom/android/gallery3d/ui/dw;)Lcom/android/gallery3d/ui/di;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DV:Lcom/android/gallery3d/ui/di;

    return-object v0
.end method

.method static synthetic h(Lcom/android/gallery3d/ui/dw;)Lcom/android/gallery3d/ui/u;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->pB:Lcom/android/gallery3d/ui/u;

    return-object v0
.end method

.method static synthetic i(Lcom/android/gallery3d/ui/dw;)Lcom/android/gallery3d/b/n;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->Z:Lcom/android/gallery3d/b/n;

    return-object v0
.end method

.method static synthetic j(Lcom/android/gallery3d/ui/dw;)Lcom/android/gallery3d/ui/ag;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->nb:Lcom/android/gallery3d/ui/ag;

    return-object v0
.end method

.method static synthetic k(Lcom/android/gallery3d/ui/dw;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/android/gallery3d/ui/dw;)Lcom/android/gallery3d/ui/br;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DU:Lcom/android/gallery3d/ui/br;

    return-object v0
.end method

.method private l(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 127
    iget v0, p0, Lcom/android/gallery3d/ui/dw;->R:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/dw;->S:I

    if-ne p2, v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 129
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/dw;->S:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/dw;->R:I

    if-lt v0, p2, :cond_3

    .line 130
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/dw;->R:I

    iget v1, p0, Lcom/android/gallery3d/ui/dw;->S:I

    :goto_1
    if-ge v0, v1, :cond_2

    .line 131
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/dw;->aD(I)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DU:Lcom/android/gallery3d/ui/br;

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/ui/br;->m(II)V

    move v0, p1

    .line 134
    :goto_2
    if-ge v0, p2, :cond_7

    .line 135
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/dw;->aE(I)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 138
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/ui/dw;->R:I

    :goto_3
    if-ge v0, p1, :cond_4

    .line 139
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/dw;->aD(I)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 141
    :cond_4
    iget v1, p0, Lcom/android/gallery3d/ui/dw;->S:I

    move v0, p2

    :goto_4
    if-ge v0, v1, :cond_5

    .line 142
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/dw;->aD(I)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DU:Lcom/android/gallery3d/ui/br;

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/ui/br;->m(II)V

    .line 145
    iget v1, p0, Lcom/android/gallery3d/ui/dw;->R:I

    move v0, p1

    :goto_5
    if-ge v0, v1, :cond_6

    .line 146
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/dw;->aE(I)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 148
    :cond_6
    iget v0, p0, Lcom/android/gallery3d/ui/dw;->S:I

    :goto_6
    if-ge v0, p2, :cond_7

    .line 149
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/dw;->aE(I)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 153
    :cond_7
    iput p1, p0, Lcom/android/gallery3d/ui/dw;->R:I

    .line 154
    iput p2, p0, Lcom/android/gallery3d/ui/dw;->S:I

    goto :goto_0
.end method


# virtual methods
.method public T(I)V
    .locals 2
    .parameter

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/dw;->af:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/dw;->mSize:I

    if-eq v0, p1, :cond_0

    .line 571
    iput p1, p0, Lcom/android/gallery3d/ui/dw;->mSize:I

    .line 572
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DW:Lcom/android/gallery3d/ui/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DW:Lcom/android/gallery3d/ui/af;

    iget v1, p0, Lcom/android/gallery3d/ui/dw;->mSize:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/af;->T(I)V

    .line 574
    :cond_0
    return-void
.end method

.method public Y(I)V
    .locals 1
    .parameter

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/dw;->af:Z

    if-nez v0, :cond_0

    .line 582
    :goto_0
    return-void

    .line 581
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/dw;->bb(I)V

    goto :goto_0
.end method

.method public a(Lcom/android/gallery3d/ui/af;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/gallery3d/ui/dw;->DW:Lcom/android/gallery3d/ui/af;

    .line 109
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/u;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/gallery3d/ui/dw;->pB:Lcom/android/gallery3d/ui/u;

    .line 105
    return-void
.end method

.method public aC(I)Z
    .locals 1
    .parameter

    .prologue
    .line 123
    iget v0, p0, Lcom/android/gallery3d/ui/dw;->U:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/dw;->V:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aX(I)Lcom/android/gallery3d/ui/eb;
    .locals 5
    .parameter

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/dw;->aC(I)Z

    move-result v0

    const-string v1, "invalid slot: %s outsides (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/gallery3d/ui/dw;->U:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/gallery3d/ui/dw;->V:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    iget-object v1, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public m(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 159
    if-gt p1, p2, :cond_1

    sub-int v2, p2, p1

    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    array-length v3, v3

    if-gt v2, v3, :cond_1

    iget v2, p0, Lcom/android/gallery3d/ui/dw;->mSize:I

    if-gt p2, v2, :cond_1

    :goto_0
    const-string v1, "start = %s, end = %s, length = %s, size = %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/gallery3d/ui/dw;->mSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/android/gallery3d/ui/dw;->DX:[Lcom/android/gallery3d/ui/k;

    .line 166
    iput p1, p0, Lcom/android/gallery3d/ui/dw;->U:I

    .line 167
    iput p2, p0, Lcom/android/gallery3d/ui/dw;->V:I

    .line 169
    add-int v1, p1, p2

    div-int/lit8 v1, v1, 0x2

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/gallery3d/ui/dw;->mSize:I

    array-length v5, v0

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 171
    array-length v0, v0

    add-int/2addr v0, v1

    iget v2, p0, Lcom/android/gallery3d/ui/dw;->mSize:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 172
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/ui/dw;->l(II)V

    .line 173
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/dw;->af:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/dw;->fn()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 159
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    const-string v1, "GallerySlidingWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/dw;->af:Z

    .line 586
    iget v0, p0, Lcom/android/gallery3d/ui/dw;->R:I

    iget v1, p0, Lcom/android/gallery3d/ui/dw;->S:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 587
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/dw;->aD(I)V

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/dw;->af:Z

    .line 593
    iget v0, p0, Lcom/android/gallery3d/ui/dw;->R:I

    iget v1, p0, Lcom/android/gallery3d/ui/dw;->S:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 594
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/dw;->aE(I)V

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 596
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/dw;->fn()V

    .line 597
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/android/gallery3d/ui/dw;->mSize:I

    return v0
.end method
