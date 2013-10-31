.class public abstract Lcom/android/gallery3d/ui/ew;
.super Lcom/android/gallery3d/ui/u;
.source "SourceFile"


# static fields
.field private static final Jn:I = -0x67000000

.field private static final TAG:Ljava/lang/String; = "IconDrawer"


# instance fields
.field private final Jo:Lcom/android/gallery3d/ui/bm;

.field private final Jp:Lcom/android/gallery3d/ui/bm;

.field private final Jq:Lcom/android/gallery3d/ui/bm;

.field private final Jr:Lcom/android/gallery3d/ui/bm;

.field private final Js:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private final Jt:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private final Ju:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private final Jv:Lcom/android/gallery3d/ui/ar;

.field private final Jw:I

.field private final mW:Lcom/android/gallery3d/ui/ar;

.field private final rs:Lcom/android/gallery3d/ui/NinePatchTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/gallery3d/ui/u;-><init>()V

    .line 47
    new-instance v0, Lcom/android/gallery3d/ui/bm;

    const v1, 0x7f020011

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/bm;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ew;->Jo:Lcom/android/gallery3d/ui/bm;

    .line 48
    new-instance v0, Lcom/android/gallery3d/ui/bm;

    const v1, 0x7f020010

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/bm;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ew;->Jp:Lcom/android/gallery3d/ui/bm;

    .line 49
    new-instance v0, Lcom/android/gallery3d/ui/bm;

    const v1, 0x7f020012

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/bm;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ew;->Jq:Lcom/android/gallery3d/ui/bm;

    .line 50
    new-instance v0, Lcom/android/gallery3d/ui/bm;

    const v1, 0x7f020013

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/bm;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ew;->Jr:Lcom/android/gallery3d/ui/bm;

    .line 51
    new-instance v0, Lcom/android/gallery3d/ui/bm;

    const v1, 0x7f020029

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/bm;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ew;->Jv:Lcom/android/gallery3d/ui/ar;

    .line 52
    new-instance v0, Lcom/android/gallery3d/ui/bm;

    const v1, 0x7f02001b

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/bm;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ew;->mW:Lcom/android/gallery3d/ui/ar;

    .line 53
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020025

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ew;->Ju:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 54
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020018

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ew;->rs:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 55
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f020019

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ew;->Js:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 56
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    const v1, 0x7f02000e

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ew;->Jt:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/ew;->Jw:I

    .line 59
    return-void
.end method


# virtual methods
.method protected a(Lcom/android/gallery3d/ui/b;III)Lcom/android/gallery3d/ui/bc;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p4}, Lcom/android/gallery3d/ui/ew;->bm(I)Lcom/android/gallery3d/ui/bm;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/gallery3d/ui/ew;->a(Lcom/android/gallery3d/ui/bm;II)Lcom/android/gallery3d/ui/bc;

    move-result-object v6

    .line 71
    iget v2, v6, Lcom/android/gallery3d/ui/bc;->x:I

    iget v3, v6, Lcom/android/gallery3d/ui/bc;->y:I

    iget v4, v6, Lcom/android/gallery3d/ui/bc;->width:I

    iget v5, v6, Lcom/android/gallery3d/ui/bc;->height:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/bm;->a(Lcom/android/gallery3d/ui/b;IIII)V

    move-object v0, v6

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/android/gallery3d/ui/bm;II)Lcom/android/gallery3d/ui/bc;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    new-instance v0, Lcom/android/gallery3d/ui/bc;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/bc;-><init>()V

    .line 102
    iget v1, p0, Lcom/android/gallery3d/ui/ew;->Jw:I

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/bm;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 103
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/bm;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Lcom/android/gallery3d/ui/bc;->width:I

    .line 104
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/bm;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/ui/bc;->height:I

    .line 105
    neg-int v1, p2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/gallery3d/ui/bc;->x:I

    .line 106
    add-int/lit8 v1, p3, 0x1

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Lcom/android/gallery3d/ui/bc;->height:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/ui/bc;->y:I

    .line 107
    return-object v0
.end method

.method public a(Lcom/android/gallery3d/ui/b;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    return-void
.end method

.method protected a(Lcom/android/gallery3d/ui/b;IZIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 113
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ew;->b(Lcom/android/gallery3d/ui/b;IIII)V

    .line 115
    :cond_0
    if-eqz p3, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 116
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/ew;->c(Lcom/android/gallery3d/ui/b;IIII)V

    .line 118
    :cond_1
    return-void
.end method

.method public aV()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method protected b(Lcom/android/gallery3d/ui/b;III)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    neg-int v0, p2

    div-int/lit8 v2, v0, 0x2

    .line 147
    add-int/lit8 v0, p3, 0x1

    div-int/lit8 v0, v0, 0x2

    sub-int v3, v0, p4

    .line 148
    iget-object v1, p0, Lcom/android/gallery3d/ui/ew;->Jt:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v0, p1

    move v4, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/ui/ew;->a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/NinePatchTexture;IIII)V

    .line 149
    return-void
.end method

.method protected b(Lcom/android/gallery3d/ui/b;IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    int-to-float v0, p5

    iget-object v1, p0, Lcom/android/gallery3d/ui/ew;->Jv:Lcom/android/gallery3d/ui/ar;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/ar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 125
    iget-object v1, p0, Lcom/android/gallery3d/ui/ew;->Jv:Lcom/android/gallery3d/ui/ar;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/ar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 126
    iget-object v1, p0, Lcom/android/gallery3d/ui/ew;->Jv:Lcom/android/gallery3d/ui/ar;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/ar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/ui/ew;->Jv:Lcom/android/gallery3d/ui/ar;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/ar;->a(Lcom/android/gallery3d/ui/b;IIII)V

    .line 129
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v4, v0, 0x6

    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/ui/ew;->mW:Lcom/android/gallery3d/ui/ar;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/ar;->a(Lcom/android/gallery3d/ui/b;IIII)V

    .line 131
    return-void
.end method

.method protected bm(I)Lcom/android/gallery3d/ui/bm;
    .locals 1
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    packed-switch p1, :pswitch_data_0

    .line 96
    :goto_0
    return-object v0

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ew;->Jo:Lcom/android/gallery3d/ui/bm;

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ew;->Jq:Lcom/android/gallery3d/ui/bm;

    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/ew;->Jp:Lcom/android/gallery3d/ui/bm;

    goto :goto_0

    .line 90
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/ew;->Jr:Lcom/android/gallery3d/ui/bm;

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected c(Lcom/android/gallery3d/ui/b;IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    int-to-float v0, p4

    iget-object v1, p0, Lcom/android/gallery3d/ui/ew;->Ju:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/NinePatchTexture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 136
    iget-object v1, p0, Lcom/android/gallery3d/ui/ew;->Ju:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/NinePatchTexture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 137
    iget-object v1, p0, Lcom/android/gallery3d/ui/ew;->Ju:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/NinePatchTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/ui/ew;->Ju:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/NinePatchTexture;->a(Lcom/android/gallery3d/ui/b;IIII)V

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/ui/ew;->Ju:Lcom/android/gallery3d/ui/NinePatchTexture;

    add-int v1, p3, p4

    sub-int v3, v1, v5

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/NinePatchTexture;->a(Lcom/android/gallery3d/ui/b;IIII)V

    .line 142
    return-void
.end method

.method protected d(Lcom/android/gallery3d/ui/b;IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/gallery3d/ui/ew;->rs:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/ui/ew;->a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/NinePatchTexture;IIII)V

    .line 154
    return-void
.end method

.method protected e(Lcom/android/gallery3d/ui/b;IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/gallery3d/ui/ew;->Js:Lcom/android/gallery3d/ui/NinePatchTexture;

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/ui/ew;->a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/NinePatchTexture;IIII)V

    .line 159
    return-void
.end method
