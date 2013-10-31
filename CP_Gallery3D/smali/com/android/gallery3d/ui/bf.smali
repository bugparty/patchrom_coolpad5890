.class public Lcom/android/gallery3d/ui/bf;
.super Lcom/android/gallery3d/ui/ej;
.source "SourceFile"


# static fields
.field private static final CACHE_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String; = "AlbumView"


# instance fields
.field private af:Z

.field private final et:Lcom/android/gallery3d/app/bm;

.field private gN:I

.field private gO:I

.field private pA:Lcom/android/gallery3d/ui/dc;

.field private pB:Lcom/android/gallery3d/ui/u;

.field private pC:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/du;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/ej;-><init>(Landroid/content/Context;)V

    .line 30
    iput v1, p0, Lcom/android/gallery3d/ui/bf;->gN:I

    .line 31
    iput v1, p0, Lcom/android/gallery3d/ui/bf;->gO:I

    .line 38
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/bf;->af:Z

    .line 55
    iput p3, p0, Lcom/android/gallery3d/ui/bf;->pC:I

    .line 56
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/du;)V

    .line 57
    iput-object p1, p0, Lcom/android/gallery3d/ui/bf;->et:Lcom/android/gallery3d/app/bm;

    .line 58
    return-void
.end method

.method private a(ILcom/android/gallery3d/ui/av;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/bf;->C(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/android/gallery3d/ui/cq;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/gallery3d/ui/cq;-><init>(FFF)V

    .line 92
    invoke-virtual {p0, v1, v1, p2}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/cq;Lcom/android/gallery3d/ui/cq;Lcom/android/gallery3d/ui/av;)V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/bf;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/bf;->t(II)V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/bf;ILcom/android/gallery3d/ui/av;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/bf;->a(ILcom/android/gallery3d/ui/av;)V

    return-void
.end method

.method private t(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 96
    iget v0, p0, Lcom/android/gallery3d/ui/bf;->gN:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/bf;->gO:I

    if-ne p2, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/dc;->m(II)V

    .line 138
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/bf;->af:Z

    if-nez v0, :cond_1

    .line 103
    iput p1, p0, Lcom/android/gallery3d/ui/bf;->gN:I

    .line 104
    iput p2, p0, Lcom/android/gallery3d/ui/bf;->gO:I

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/dc;->m(II)V

    goto :goto_0

    .line 109
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/bf;->gO:I

    if-ge p1, v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/bf;->gN:I

    if-lt v0, p2, :cond_5

    .line 110
    :cond_2
    iget v0, p0, Lcom/android/gallery3d/ui/bf;->gN:I

    iget v1, p0, Lcom/android/gallery3d/ui/bf;->gO:I

    :goto_1
    if-ge v0, v1, :cond_4

    .line 111
    iget-object v2, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/dc;->aB(I)Lcom/android/gallery3d/ui/av;

    move-result-object v2

    .line 112
    if-eqz v2, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/av;)V

    .line 110
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/dc;->m(II)V

    move v0, p1

    .line 115
    :goto_2
    if-ge v0, p2, :cond_b

    .line 116
    iget-object v1, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/dc;->aB(I)Lcom/android/gallery3d/ui/av;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/bf;->a(ILcom/android/gallery3d/ui/av;)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 119
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/ui/bf;->gN:I

    :goto_3
    if-ge v0, p1, :cond_7

    .line 120
    iget-object v1, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/dc;->aB(I)Lcom/android/gallery3d/ui/av;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_6

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/av;)V

    .line 119
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 123
    :cond_7
    iget v1, p0, Lcom/android/gallery3d/ui/bf;->gO:I

    move v0, p2

    :goto_4
    if-ge v0, v1, :cond_9

    .line 124
    iget-object v2, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/dc;->aB(I)Lcom/android/gallery3d/ui/av;

    move-result-object v2

    .line 125
    if-eqz v2, :cond_8

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/av;)V

    .line 123
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 127
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/dc;->m(II)V

    .line 128
    iget v1, p0, Lcom/android/gallery3d/ui/bf;->gN:I

    move v0, p1

    :goto_5
    if-ge v0, v1, :cond_a

    .line 129
    iget-object v2, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/dc;->aB(I)Lcom/android/gallery3d/ui/av;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/ui/bf;->a(ILcom/android/gallery3d/ui/av;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 131
    :cond_a
    iget v0, p0, Lcom/android/gallery3d/ui/bf;->gO:I

    :goto_6
    if-ge v0, p2, :cond_b

    .line 132
    iget-object v1, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/dc;->aB(I)Lcom/android/gallery3d/ui/av;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/bf;->a(ILcom/android/gallery3d/ui/av;)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 136
    :cond_b
    iput p1, p0, Lcom/android/gallery3d/ui/bf;->gN:I

    .line 137
    iput p2, p0, Lcom/android/gallery3d/ui/bf;->gO:I

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/em;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/dc;->a(Lcom/android/gallery3d/ui/de;)V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/bf;->B(I)Z

    .line 69
    iput-object v4, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    .line 71
    :cond_0
    if-eqz p1, :cond_1

    .line 72
    new-instance v0, Lcom/android/gallery3d/ui/dc;

    iget-object v1, p0, Lcom/android/gallery3d/ui/bf;->et:Lcom/android/gallery3d/app/bm;

    const/16 v2, 0x40

    iget v3, p0, Lcom/android/gallery3d/ui/bf;->pC:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/gallery3d/ui/dc;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/em;II)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    iget-object v1, p0, Lcom/android/gallery3d/ui/bf;->pB:Lcom/android/gallery3d/ui/u;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/dc;->a(Lcom/android/gallery3d/ui/u;)V

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    new-instance v1, Lcom/android/gallery3d/ui/at;

    invoke-direct {v1, p0, v4}, Lcom/android/gallery3d/ui/at;-><init>(Lcom/android/gallery3d/ui/bf;Lcom/android/gallery3d/ui/dp;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/dc;->a(Lcom/android/gallery3d/ui/de;)V

    .line 77
    invoke-interface {p1}, Lcom/android/gallery3d/ui/em;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/bf;->B(I)Z

    .line 78
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/bf;->bd()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/bf;->be()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/bf;->t(II)V

    .line 80
    :cond_1
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/u;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/gallery3d/ui/bf;->pB:Lcom/android/gallery3d/ui/u;

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/dc;->a(Lcom/android/gallery3d/ui/u;)V

    .line 63
    :cond_0
    return-void
.end method

.method public ak(I)V
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/dc;->ak(I)V

    .line 86
    :cond_0
    return-void
.end method

.method protected al(I)V
    .locals 2
    .parameter

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/ej;->al(I)V

    .line 150
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/bf;->bd()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/bf;->be()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/bf;->t(II)V

    .line 151
    return-void
.end method

.method protected c(Lcom/android/gallery3d/ui/b;)V
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/gallery3d/ui/bf;->pB:Lcom/android/gallery3d/ui/u;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/u;->aV()V

    .line 156
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/ej;->c(Lcom/android/gallery3d/ui/b;)V

    .line 157
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/bf;->af:Z

    .line 196
    iget v0, p0, Lcom/android/gallery3d/ui/bf;->gN:I

    iget v1, p0, Lcom/android/gallery3d/ui/bf;->gO:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/dc;->aB(I)Lcom/android/gallery3d/ui/av;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/av;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dc;->pause()V

    .line 200
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/bf;->af:Z

    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dc;->resume()V

    .line 189
    iget v0, p0, Lcom/android/gallery3d/ui/bf;->gN:I

    iget v1, p0, Lcom/android/gallery3d/ui/bf;->gO:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 190
    iget-object v2, p0, Lcom/android/gallery3d/ui/bf;->pA:Lcom/android/gallery3d/ui/dc;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/dc;->aB(I)Lcom/android/gallery3d/ui/av;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/ui/bf;->a(ILcom/android/gallery3d/ui/av;)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method protected u(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, v0, v0}, Lcom/android/gallery3d/ui/bf;->t(II)V

    .line 144
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/bf;->bd()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/bf;->be()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/bf;->t(II)V

    .line 145
    return-void
.end method
