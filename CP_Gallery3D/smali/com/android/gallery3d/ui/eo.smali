.class public Lcom/android/gallery3d/ui/eo;
.super Lcom/android/gallery3d/ui/ej;
.source "SourceFile"


# static fields
.field private static final CACHE_SIZE:I = 0x20

.field private static final Iu:F = 35.0f

.field private static final TAG:Ljava/lang/String; = "AlbumSetView"


# instance fields
.field private final DV:Lcom/android/gallery3d/ui/di;

.field private final Iv:J

.field private Iw:Lcom/android/gallery3d/ui/dw;

.field private final et:Lcom/android/gallery3d/app/bm;

.field private gN:I

.field private gO:I

.field private final lw:Ljava/util/Random;

.field private pB:Lcom/android/gallery3d/ui/u;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/u;Lcom/android/gallery3d/ui/du;Lcom/android/gallery3d/ui/di;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/ej;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/eo;->lw:Ljava/util/Random;

    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/eo;->lw:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/eo;->Iv:J

    .line 79
    iput-object p1, p0, Lcom/android/gallery3d/ui/eo;->et:Lcom/android/gallery3d/app/bm;

    .line 80
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/u;)V

    .line 81
    invoke-virtual {p0, p3}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/du;)V

    .line 82
    iput-object p4, p0, Lcom/android/gallery3d/ui/eo;->DV:Lcom/android/gallery3d/ui/di;

    .line 83
    return-void
.end method

.method private a(ILcom/android/gallery3d/ui/eb;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 109
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/eo;->C(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 112
    iget-object v3, p2, Lcom/android/gallery3d/ui/eb;->Ew:[Lcom/android/gallery3d/ui/av;

    .line 113
    iget-object v4, p0, Lcom/android/gallery3d/ui/eo;->lw:Ljava/util/Random;

    int-to-long v5, p1

    iget-wide v7, p0, Lcom/android/gallery3d/ui/eo;->Iv:J

    xor-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/Random;->setSeed(J)V

    .line 115
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 116
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v5

    div-int/lit8 v5, v0, 0x2

    .line 118
    new-instance v6, Lcom/android/gallery3d/ui/cq;

    int-to-float v0, v4

    int-to-float v7, v5

    invoke-direct {v6, v0, v7, v2}, Lcom/android/gallery3d/ui/cq;-><init>(FFF)V

    .line 122
    new-instance v0, Lcom/android/gallery3d/ui/cq;

    int-to-float v7, v4

    int-to-float v8, v5

    invoke-direct {v0, v7, v8, v2}, Lcom/android/gallery3d/ui/cq;-><init>(FFF)V

    .line 123
    iget-object v7, p2, Lcom/android/gallery3d/ui/eb;->Ex:Lcom/android/gallery3d/ui/av;

    invoke-virtual {p0, v0, v0, v7}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/cq;Lcom/android/gallery3d/ui/cq;Lcom/android/gallery3d/ui/av;)V

    .line 125
    array-length v7, v3

    :goto_1
    if-ge v1, v7, :cond_1

    .line 126
    aget-object v8, v3, v1

    .line 131
    if-eqz v1, :cond_2

    .line 132
    int-to-float v0, v1

    const/high16 v9, 0x420c

    mul-float/2addr v0, v9

    .line 134
    :goto_2
    new-instance v9, Lcom/android/gallery3d/ui/cq;

    int-to-float v10, v4

    add-float/2addr v10, v2

    int-to-float v11, v5

    add-float/2addr v11, v2

    invoke-direct {v9, v10, v11, v0}, Lcom/android/gallery3d/ui/cq;-><init>(FFF)V

    .line 135
    iput v2, v9, Lcom/android/gallery3d/ui/cq;->yx:F

    .line 136
    invoke-virtual {p0, v9, v6, v8}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/cq;Lcom/android/gallery3d/ui/cq;Lcom/android/gallery3d/ui/av;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 109
    goto :goto_0

    .line 139
    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/eo;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/eo;->t(II)V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/eo;ILcom/android/gallery3d/ui/eb;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/eo;->b(ILcom/android/gallery3d/ui/eb;)V

    return-void
.end method

.method private b(ILcom/android/gallery3d/ui/eb;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 142
    if-nez p2, :cond_0

    .line 147
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p2, Lcom/android/gallery3d/ui/eb;->Ew:[Lcom/android/gallery3d/ui/av;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 144
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/av;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    :cond_1
    iget-object v0, p2, Lcom/android/gallery3d/ui/eb;->Ex:Lcom/android/gallery3d/ui/av;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/av;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/gallery3d/ui/eo;ILcom/android/gallery3d/ui/eb;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/eo;->a(ILcom/android/gallery3d/ui/eb;)V

    return-void
.end method

.method private t(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 166
    iget v0, p0, Lcom/android/gallery3d/ui/eo;->gN:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/eo;->gO:I

    if-ne p2, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/dw;->m(II)V

    .line 198
    :goto_0
    return-void

    .line 171
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/ui/eo;->gO:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/eo;->gN:I

    if-lt v0, p2, :cond_3

    .line 172
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/eo;->gN:I

    iget v1, p0, Lcom/android/gallery3d/ui/eo;->gO:I

    :goto_1
    if-ge v0, v1, :cond_2

    .line 173
    iget-object v2, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/dw;->aX(I)Lcom/android/gallery3d/ui/eb;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/ui/eo;->b(ILcom/android/gallery3d/ui/eb;)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/dw;->m(II)V

    move v0, p1

    .line 176
    :goto_2
    if-ge v0, p2, :cond_7

    .line 177
    iget-object v1, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/dw;->aX(I)Lcom/android/gallery3d/ui/eb;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/eo;->a(ILcom/android/gallery3d/ui/eb;)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 180
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/ui/eo;->gN:I

    :goto_3
    if-ge v0, p1, :cond_4

    .line 181
    iget-object v1, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/dw;->aX(I)Lcom/android/gallery3d/ui/eb;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/eo;->b(ILcom/android/gallery3d/ui/eb;)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 183
    :cond_4
    iget v1, p0, Lcom/android/gallery3d/ui/eo;->gO:I

    move v0, p2

    :goto_4
    if-ge v0, v1, :cond_5

    .line 184
    iget-object v2, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/dw;->aX(I)Lcom/android/gallery3d/ui/eb;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/ui/eo;->b(ILcom/android/gallery3d/ui/eb;)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 186
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/dw;->m(II)V

    .line 187
    iget v1, p0, Lcom/android/gallery3d/ui/eo;->gN:I

    move v0, p1

    :goto_5
    if-ge v0, v1, :cond_6

    .line 188
    iget-object v2, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/dw;->aX(I)Lcom/android/gallery3d/ui/eb;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/ui/eo;->a(ILcom/android/gallery3d/ui/eb;)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 190
    :cond_6
    iget v0, p0, Lcom/android/gallery3d/ui/eo;->gO:I

    :goto_6
    if-ge v0, p2, :cond_7

    .line 191
    iget-object v1, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/dw;->aX(I)Lcom/android/gallery3d/ui/eb;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/eo;->a(ILcom/android/gallery3d/ui/eb;)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 194
    :cond_7
    iput p1, p0, Lcom/android/gallery3d/ui/eo;->gN:I

    .line 195
    iput p2, p0, Lcom/android/gallery3d/ui/eo;->gO:I

    .line 197
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/eo;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/br;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/ui/dw;->a(Lcom/android/gallery3d/ui/af;)V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/eo;->B(I)Z

    .line 96
    iput-object v6, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    .line 98
    :cond_0
    if-eqz p1, :cond_1

    .line 99
    new-instance v0, Lcom/android/gallery3d/ui/dw;

    iget-object v1, p0, Lcom/android/gallery3d/ui/eo;->et:Lcom/android/gallery3d/app/bm;

    iget-object v2, p0, Lcom/android/gallery3d/ui/eo;->DV:Lcom/android/gallery3d/ui/di;

    iget-object v3, p0, Lcom/android/gallery3d/ui/eo;->pB:Lcom/android/gallery3d/ui/u;

    const/16 v5, 0x20

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/dw;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/di;Lcom/android/gallery3d/ui/u;Lcom/android/gallery3d/ui/br;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    new-instance v1, Lcom/android/gallery3d/ui/dd;

    invoke-direct {v1, p0, v6}, Lcom/android/gallery3d/ui/dd;-><init>(Lcom/android/gallery3d/ui/eo;Lcom/android/gallery3d/ui/db;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/dw;->a(Lcom/android/gallery3d/ui/af;)V

    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dw;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/eo;->B(I)Z

    .line 103
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/eo;->bd()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/eo;->be()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/eo;->t(II)V

    .line 105
    :cond_1
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/u;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/gallery3d/ui/eo;->pB:Lcom/android/gallery3d/ui/u;

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/dw;->a(Lcom/android/gallery3d/ui/u;)V

    .line 90
    :cond_0
    return-void
.end method

.method public al(I)V
    .locals 2
    .parameter

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/ej;->al(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/eo;->bd()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/eo;->be()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/eo;->t(II)V

    .line 163
    return-void
.end method

.method protected c(Lcom/android/gallery3d/ui/b;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/gallery3d/ui/eo;->pB:Lcom/android/gallery3d/ui/u;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/u;->aV()V

    .line 203
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/ej;->c(Lcom/android/gallery3d/ui/b;)V

    .line 204
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 234
    iget v0, p0, Lcom/android/gallery3d/ui/eo;->gN:I

    iget v1, p0, Lcom/android/gallery3d/ui/eo;->gO:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 235
    iget-object v2, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/dw;->aX(I)Lcom/android/gallery3d/ui/eb;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/ui/eo;->b(ILcom/android/gallery3d/ui/eb;)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dw;->pause()V

    .line 238
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dw;->resume()V

    .line 242
    iget v0, p0, Lcom/android/gallery3d/ui/eo;->gN:I

    iget v1, p0, Lcom/android/gallery3d/ui/eo;->gO:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 243
    iget-object v2, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/dw;->aX(I)Lcom/android/gallery3d/ui/eb;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/ui/eo;->a(ILcom/android/gallery3d/ui/eb;)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/ui/eo;->Iw:Lcom/android/gallery3d/ui/dw;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dw;->size()I

    move-result v0

    return v0
.end method

.method public u(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, v0, v0}, Lcom/android/gallery3d/ui/eo;->t(II)V

    .line 156
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/eo;->bd()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/eo;->be()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/eo;->t(II)V

    .line 157
    return-void
.end method
