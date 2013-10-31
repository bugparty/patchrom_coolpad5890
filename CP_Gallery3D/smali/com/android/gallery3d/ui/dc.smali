.class public Lcom/android/gallery3d/ui/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/ai;


# static fields
.field private static final TAG:Ljava/lang/String; = "AlbumSlidingWindow"

.field private static final zD:I = 0x0

.field private static final zE:I = 0x1

.field private static final zF:I = 0x2

.field private static final zG:I = -0xddddde


# instance fields
.field private R:I

.field private S:I

.field private U:I

.field private V:I

.field private af:Z

.field private mSize:I

.field private nb:Lcom/android/gallery3d/ui/ag;

.field private pB:Lcom/android/gallery3d/ui/u;

.field private pC:I

.field private final zH:Lcom/android/gallery3d/ui/em;

.field private zI:Lcom/android/gallery3d/ui/de;

.field private zJ:I

.field private final zK:[Lcom/android/gallery3d/ui/eg;

.field private final zL:Lcom/android/gallery3d/ui/cr;

.field private zM:Lcom/android/gallery3d/b/z;

.field private zN:I

.field private zO:Lcom/android/gallery3d/common/LruCache;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/em;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v1, p0, Lcom/android/gallery3d/ui/dc;->R:I

    .line 56
    iput v1, p0, Lcom/android/gallery3d/ui/dc;->S:I

    .line 58
    iput v1, p0, Lcom/android/gallery3d/ui/dc;->U:I

    .line 59
    iput v1, p0, Lcom/android/gallery3d/ui/dc;->V:I

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/dc;->zJ:I

    .line 71
    iput v1, p0, Lcom/android/gallery3d/ui/dc;->zN:I

    .line 72
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/dc;->af:Z

    .line 75
    new-instance v0, Lcom/android/gallery3d/common/LruCache;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/dc;->zO:Lcom/android/gallery3d/common/LruCache;

    .line 80
    invoke-interface {p2, p0}, Lcom/android/gallery3d/ui/em;->a(Lcom/android/gallery3d/ui/ai;)V

    .line 81
    iput-object p2, p0, Lcom/android/gallery3d/ui/dc;->zH:Lcom/android/gallery3d/ui/em;

    .line 82
    new-array v0, p3, [Lcom/android/gallery3d/ui/eg;

    iput-object v0, p0, Lcom/android/gallery3d/ui/dc;->zK:[Lcom/android/gallery3d/ui/eg;

    .line 83
    invoke-interface {p2}, Lcom/android/gallery3d/ui/em;->size()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/dc;->mSize:I

    .line 85
    new-instance v0, Lcom/android/gallery3d/ui/cr;

    const v1, -0xddddde

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/cr;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/dc;->zL:Lcom/android/gallery3d/ui/cr;

    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->zL:Lcom/android/gallery3d/ui/cr;

    invoke-virtual {v0, v2, v2}, Lcom/android/gallery3d/ui/cr;->setSize(II)V

    .line 88
    new-instance v0, Lcom/android/gallery3d/ui/bq;

    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/bq;-><init>(Lcom/android/gallery3d/ui/dc;Lcom/android/gallery3d/ui/eh;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/dc;->nb:Lcom/android/gallery3d/ui/ag;

    .line 104
    new-instance v0, Lcom/android/gallery3d/b/z;

    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->dw()Lcom/android/gallery3d/b/n;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/b/z;-><init>(Lcom/android/gallery3d/b/n;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/dc;->zM:Lcom/android/gallery3d/b/z;

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/dc;)Lcom/android/gallery3d/ui/cr;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->zL:Lcom/android/gallery3d/ui/cr;

    return-object v0
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/dc;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/dc;->aF(I)V

    return-void
.end method

.method private aD(I)V
    .locals 3
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->zK:[Lcom/android/gallery3d/ui/eg;

    .line 225
    array-length v1, v0

    rem-int v1, p1, v1

    .line 226
    aget-object v2, v0, v1

    .line 227
    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/eg;->recycle()V

    .line 229
    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 231
    :cond_0
    return-void
.end method

.method private aE(I)V
    .locals 4
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->zK:[Lcom/android/gallery3d/ui/eg;

    iget-object v1, p0, Lcom/android/gallery3d/ui/dc;->zK:[Lcom/android/gallery3d/ui/eg;

    array-length v1, v1

    rem-int v1, p1, v1

    new-instance v2, Lcom/android/gallery3d/ui/eg;

    iget-object v3, p0, Lcom/android/gallery3d/ui/dc;->zH:Lcom/android/gallery3d/ui/em;

    invoke-interface {v3, p1}, Lcom/android/gallery3d/ui/em;->K(I)Lcom/android/gallery3d/a/ax;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lcom/android/gallery3d/ui/eg;-><init>(Lcom/android/gallery3d/ui/dc;ILcom/android/gallery3d/a/ax;)V

    aput-object v2, v0, v1

    .line 236
    return-void
.end method

.method private aF(I)V
    .locals 5
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->zH:Lcom/android/gallery3d/ui/em;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/em;->K(I)Lcom/android/gallery3d/a/ax;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/android/gallery3d/ui/dc;->zK:[Lcom/android/gallery3d/ui/eg;

    .line 241
    array-length v2, v1

    rem-int v2, p1, v2

    .line 242
    aget-object v3, v1, v2

    .line 243
    new-instance v4, Lcom/android/gallery3d/ui/eg;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/gallery3d/ui/eg;-><init>(Lcom/android/gallery3d/ui/dc;ILcom/android/gallery3d/a/ax;)V

    .line 244
    aput-object v4, v1, v2

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/dc;->aC(I)Z

    move-result v0

    .line 246
    iget-object v1, p0, Lcom/android/gallery3d/ui/dc;->zI:Lcom/android/gallery3d/ui/de;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 247
    iget-object v1, p0, Lcom/android/gallery3d/ui/dc;->zI:Lcom/android/gallery3d/ui/de;

    invoke-interface {v1, p1, v3, v4}, Lcom/android/gallery3d/ui/de;->a(ILcom/android/gallery3d/ui/av;Lcom/android/gallery3d/ui/av;)V

    .line 249
    :cond_0
    if-eqz v3, :cond_2

    .line 250
    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/eg;->eK()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    iget v1, p0, Lcom/android/gallery3d/ui/dc;->zN:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/ui/dc;->zN:I

    .line 253
    :cond_1
    invoke-virtual {v3}, Lcom/android/gallery3d/ui/eg;->recycle()V

    .line 255
    :cond_2
    if-eqz v0, :cond_5

    .line 256
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->zN:I

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/gallery3d/ui/dc;->fm()V

    .line 257
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->zN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/dc;->zN:I

    .line 258
    invoke-virtual {v4}, Lcom/android/gallery3d/ui/eg;->eI()V

    .line 262
    :cond_4
    :goto_0
    return-void

    .line 260
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->zN:I

    if-nez v0, :cond_4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/eg;->eI()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/gallery3d/ui/dc;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->zN:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/dc;->zN:I

    return v0
.end method

.method static synthetic c(Lcom/android/gallery3d/ui/dc;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->zN:I

    return v0
.end method

.method static synthetic d(Lcom/android/gallery3d/ui/dc;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/gallery3d/ui/dc;->fl()V

    return-void
.end method

.method static synthetic e(Lcom/android/gallery3d/ui/dc;)Lcom/android/gallery3d/ui/de;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->zI:Lcom/android/gallery3d/ui/de;

    return-object v0
.end method

.method static synthetic f(Lcom/android/gallery3d/ui/dc;)Lcom/android/gallery3d/ui/u;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->pB:Lcom/android/gallery3d/ui/u;

    return-object v0
.end method

.method private fl()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 194
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->S:I

    iget v2, p0, Lcom/android/gallery3d/ui/dc;->V:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/gallery3d/ui/dc;->U:I

    iget v3, p0, Lcom/android/gallery3d/ui/dc;->R:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v0, v1

    .line 196
    :goto_0
    if-ge v0, v2, :cond_0

    .line 197
    iget v3, p0, Lcom/android/gallery3d/ui/dc;->V:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v1}, Lcom/android/gallery3d/ui/dc;->i(IZ)V

    .line 198
    iget v3, p0, Lcom/android/gallery3d/ui/dc;->U:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    invoke-direct {p0, v3, v1}, Lcom/android/gallery3d/ui/dc;->i(IZ)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method private fm()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 209
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->S:I

    iget v2, p0, Lcom/android/gallery3d/ui/dc;->V:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/gallery3d/ui/dc;->U:I

    iget v3, p0, Lcom/android/gallery3d/ui/dc;->R:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v0, v1

    .line 211
    :goto_0
    if-ge v0, v2, :cond_0

    .line 212
    iget v3, p0, Lcom/android/gallery3d/ui/dc;->V:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3, v1}, Lcom/android/gallery3d/ui/dc;->j(IZ)V

    .line 213
    iget v3, p0, Lcom/android/gallery3d/ui/dc;->U:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    invoke-direct {p0, v3, v1}, Lcom/android/gallery3d/ui/dc;->j(IZ)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_0
    return-void
.end method

.method private fn()V
    .locals 4

    .prologue
    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/dc;->zN:I

    .line 266
    iget-object v1, p0, Lcom/android/gallery3d/ui/dc;->zK:[Lcom/android/gallery3d/ui/eg;

    .line 267
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->U:I

    iget v2, p0, Lcom/android/gallery3d/ui/dc;->V:I

    :goto_0
    if-ge v0, v2, :cond_1

    .line 268
    array-length v3, v1

    rem-int v3, v0, v3

    aget-object v3, v1, v3

    .line 269
    invoke-virtual {v3}, Lcom/android/gallery3d/ui/eg;->eI()V

    .line 270
    invoke-virtual {v3}, Lcom/android/gallery3d/ui/eg;->eK()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/ui/dc;->zN:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery3d/ui/dc;->zN:I

    .line 267
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->zN:I

    if-nez v0, :cond_2

    .line 273
    invoke-direct {p0}, Lcom/android/gallery3d/ui/dc;->fl()V

    .line 277
    :goto_1
    return-void

    .line 275
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/ui/dc;->fm()V

    goto :goto_1
.end method

.method static synthetic g(Lcom/android/gallery3d/ui/dc;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->zJ:I

    return v0
.end method

.method static synthetic h(Lcom/android/gallery3d/ui/dc;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->pC:I

    return v0
.end method

.method static synthetic i(Lcom/android/gallery3d/ui/dc;)Lcom/android/gallery3d/common/LruCache;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->zO:Lcom/android/gallery3d/common/LruCache;

    return-object v0
.end method

.method private i(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 203
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->R:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/dc;->S:I

    if-lt p1, v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->zK:[Lcom/android/gallery3d/ui/eg;

    iget-object v1, p0, Lcom/android/gallery3d/ui/dc;->zK:[Lcom/android/gallery3d/ui/eg;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    .line 205
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eg;->eI()V

    goto :goto_0
.end method

.method static synthetic j(Lcom/android/gallery3d/ui/dc;)Lcom/android/gallery3d/b/z;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->zM:Lcom/android/gallery3d/b/z;

    return-object v0
.end method

.method private j(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 218
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->R:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/dc;->S:I

    if-lt p1, v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->zK:[Lcom/android/gallery3d/ui/eg;

    iget-object v1, p0, Lcom/android/gallery3d/ui/dc;->zK:[Lcom/android/gallery3d/ui/eg;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    .line 220
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eg;->eJ()V

    goto :goto_0
.end method

.method static synthetic k(Lcom/android/gallery3d/ui/dc;)Lcom/android/gallery3d/ui/ag;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->nb:Lcom/android/gallery3d/ui/ag;

    return-object v0
.end method

.method private l(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 135
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->R:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/dc;->S:I

    if-ne p2, v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/dc;->af:Z

    if-nez v0, :cond_1

    .line 138
    iput p1, p0, Lcom/android/gallery3d/ui/dc;->R:I

    .line 139
    iput p2, p0, Lcom/android/gallery3d/ui/dc;->S:I

    .line 140
    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->zH:Lcom/android/gallery3d/ui/em;

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/ui/em;->m(II)V

    goto :goto_0

    .line 144
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->S:I

    if-ge p1, v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/dc;->R:I

    if-lt v0, p2, :cond_4

    .line 145
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->R:I

    iget v1, p0, Lcom/android/gallery3d/ui/dc;->S:I

    :goto_1
    if-ge v0, v1, :cond_3

    .line 146
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/dc;->aD(I)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->zH:Lcom/android/gallery3d/ui/em;

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/ui/em;->m(II)V

    move v0, p1

    .line 149
    :goto_2
    if-ge v0, p2, :cond_8

    .line 150
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/dc;->aE(I)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 153
    :cond_4
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->R:I

    :goto_3
    if-ge v0, p1, :cond_5

    .line 154
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/dc;->aD(I)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 156
    :cond_5
    iget v1, p0, Lcom/android/gallery3d/ui/dc;->S:I

    move v0, p2

    :goto_4
    if-ge v0, v1, :cond_6

    .line 157
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/dc;->aD(I)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 159
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->zH:Lcom/android/gallery3d/ui/em;

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/ui/em;->m(II)V

    .line 160
    iget v1, p0, Lcom/android/gallery3d/ui/dc;->R:I

    move v0, p1

    :goto_5
    if-ge v0, v1, :cond_7

    .line 161
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/dc;->aE(I)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 163
    :cond_7
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->S:I

    :goto_6
    if-ge v0, p2, :cond_8

    .line 164
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/dc;->aE(I)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 168
    :cond_8
    iput p1, p0, Lcom/android/gallery3d/ui/dc;->R:I

    .line 169
    iput p2, p0, Lcom/android/gallery3d/ui/dc;->S:I

    goto :goto_0
.end method


# virtual methods
.method public T(I)V
    .locals 2
    .parameter

    .prologue
    .line 419
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->mSize:I

    if-eq v0, p1, :cond_0

    .line 420
    iput p1, p0, Lcom/android/gallery3d/ui/dc;->mSize:I

    .line 421
    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->zI:Lcom/android/gallery3d/ui/de;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->zI:Lcom/android/gallery3d/ui/de;

    iget v1, p0, Lcom/android/gallery3d/ui/dc;->mSize:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/de;->T(I)V

    .line 423
    :cond_0
    return-void
.end method

.method public Y(I)V
    .locals 1
    .parameter

    .prologue
    .line 426
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->R:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/dc;->S:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/dc;->af:Z

    if-eqz v0, :cond_0

    .line 427
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/dc;->aF(I)V

    .line 429
    :cond_0
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/de;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/gallery3d/ui/dc;->zI:Lcom/android/gallery3d/ui/de;

    .line 113
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/u;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/gallery3d/ui/dc;->pB:Lcom/android/gallery3d/ui/u;

    .line 109
    return-void
.end method

.method public aB(I)Lcom/android/gallery3d/ui/av;
    .locals 5
    .parameter

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/dc;->aC(I)Z

    move-result v0

    const-string v1, "invalid slot: %s outsides (%s, %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/gallery3d/ui/dc;->U:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/gallery3d/ui/dc;->V:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->zK:[Lcom/android/gallery3d/ui/eg;

    iget-object v1, p0, Lcom/android/gallery3d/ui/dc;->zK:[Lcom/android/gallery3d/ui/eg;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public aC(I)Z
    .locals 1
    .parameter

    .prologue
    .line 131
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->U:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/dc;->V:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ak(I)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput p1, p0, Lcom/android/gallery3d/ui/dc;->zJ:I

    .line 117
    return-void
.end method

.method public m(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    if-gt p1, p2, :cond_1

    sub-int v0, p2, p1

    iget-object v3, p0, Lcom/android/gallery3d/ui/dc;->zK:[Lcom/android/gallery3d/ui/eg;

    array-length v3, v3

    if-gt v0, v3, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/dc;->mSize:I

    if-gt p2, v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "%s, %s, %s, %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/android/gallery3d/ui/dc;->zK:[Lcom/android/gallery3d/ui/eg;

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    iget v5, p0, Lcom/android/gallery3d/ui/dc;->mSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/android/gallery3d/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->zK:[Lcom/android/gallery3d/ui/eg;

    .line 178
    iput p1, p0, Lcom/android/gallery3d/ui/dc;->U:I

    .line 179
    iput p2, p0, Lcom/android/gallery3d/ui/dc;->V:I

    .line 181
    add-int v1, p1, p2

    div-int/lit8 v1, v1, 0x2

    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/android/gallery3d/ui/dc;->mSize:I

    array-length v4, v0

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    .line 183
    array-length v0, v0

    add-int/2addr v0, v1

    iget v2, p0, Lcom/android/gallery3d/ui/dc;->mSize:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 184
    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/ui/dc;->l(II)V

    .line 185
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/dc;->af:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/dc;->fn()V

    .line 186
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 173
    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/dc;->af:Z

    .line 441
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->R:I

    iget v1, p0, Lcom/android/gallery3d/ui/dc;->S:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 442
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/dc;->aD(I)V

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/dc;->zO:Lcom/android/gallery3d/common/LruCache;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/LruCache;->clear()V

    .line 445
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/dc;->af:Z

    .line 433
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->R:I

    iget v1, p0, Lcom/android/gallery3d/ui/dc;->S:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 434
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/dc;->aE(I)V

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/dc;->fn()V

    .line 437
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/android/gallery3d/ui/dc;->mSize:I

    return v0
.end method
