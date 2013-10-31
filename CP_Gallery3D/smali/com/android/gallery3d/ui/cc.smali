.class public Lcom/android/gallery3d/ui/cc;
.super Lcom/android/gallery3d/ui/am;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/dg;
.implements Lcom/android/gallery3d/ui/dq;


# static fields
.field private static final TAG:Ljava/lang/String; = "FilmStripView"

.field private static final um:I = 0x12c


# instance fields
.field private un:I

.field private uo:I

.field private up:I

.field private uq:I

.field private ur:I

.field private us:I

.field private ut:Lcom/android/gallery3d/ui/bf;

.field private uu:Lcom/android/gallery3d/ui/cw;

.field private uv:Lcom/android/gallery3d/app/aj;

.field private uw:Lcom/android/gallery3d/ui/bj;

.field private ux:Lcom/android/gallery3d/ui/bo;

.field private uy:Lcom/android/gallery3d/ui/dg;

.field private uz:Lcom/android/gallery3d/ui/NinePatchTexture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/a/r;IIIIIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/gallery3d/ui/am;-><init>()V

    .line 70
    iput p3, p0, Lcom/android/gallery3d/ui/cc;->un:I

    .line 71
    iput p4, p0, Lcom/android/gallery3d/ui/cc;->uo:I

    .line 72
    iput p5, p0, Lcom/android/gallery3d/ui/cc;->up:I

    .line 73
    iput p6, p0, Lcom/android/gallery3d/ui/cc;->uq:I

    .line 74
    iput p8, p0, Lcom/android/gallery3d/ui/cc;->ur:I

    .line 75
    iput p9, p0, Lcom/android/gallery3d/ui/cc;->us:I

    .line 77
    new-instance v1, Lcom/android/gallery3d/ui/bj;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/ui/bj;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/cc;->uw:Lcom/android/gallery3d/ui/bj;

    .line 78
    new-instance v0, Lcom/android/gallery3d/ui/du;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/du;-><init>()V

    .line 79
    iput p7, v0, Lcom/android/gallery3d/ui/du;->DL:I

    .line 80
    iput p7, v0, Lcom/android/gallery3d/ui/du;->DM:I

    .line 81
    new-instance v1, Lcom/android/gallery3d/ui/bf;

    invoke-direct {v1, p1, v0, p7}, Lcom/android/gallery3d/ui/bf;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/du;I)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/cc;->ut:Lcom/android/gallery3d/ui/bf;

    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->ut:Lcom/android/gallery3d/ui/bf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/bf;->be(I)V

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->ut:Lcom/android/gallery3d/ui/bf;

    iget-object v1, p0, Lcom/android/gallery3d/ui/cc;->uw:Lcom/android/gallery3d/ui/bj;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/u;)V

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->ut:Lcom/android/gallery3d/ui/bf;

    new-instance v1, Lcom/android/gallery3d/ui/cu;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/cu;-><init>(Lcom/android/gallery3d/ui/cc;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/bw;)V

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/dg;)V

    .line 107
    new-instance v0, Lcom/android/gallery3d/app/aj;

    invoke-direct {v0, p1, p2}, Lcom/android/gallery3d/app/aj;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/a/r;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/cc;->uv:Lcom/android/gallery3d/app/aj;

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/cc;->a(Lcom/android/gallery3d/ui/am;)V

    .line 109
    new-instance v0, Lcom/android/gallery3d/ui/cw;

    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/ui/cc;->us:I

    invoke-direct {v0, v1, v2, p10}, Lcom/android/gallery3d/ui/cw;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/cc;->uu:Lcom/android/gallery3d/ui/cw;

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->uu:Lcom/android/gallery3d/ui/cw;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/cw;->a(Lcom/android/gallery3d/ui/dq;)V

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->uu:Lcom/android/gallery3d/ui/cw;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/cc;->a(Lcom/android/gallery3d/ui/am;)V

    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->ut:Lcom/android/gallery3d/ui/bf;

    iget-object v1, p0, Lcom/android/gallery3d/ui/cc;->uv:Lcom/android/gallery3d/app/aj;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/em;)V

    .line 115
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020037

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/cc;->uz:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/cc;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/gallery3d/ui/cc;->onUp()V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/cc;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/cc;->s(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/cc;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/cc;->s(II)V

    return-void
.end method

.method static synthetic b(Lcom/android/gallery3d/ui/cc;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/cc;->t(I)V

    return-void
.end method

.method static synthetic c(Lcom/android/gallery3d/ui/cc;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/cc;->u(I)V

    return-void
.end method

.method private onUp()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->uw:Lcom/android/gallery3d/ui/bj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/bj;->n(Lcom/android/gallery3d/a/dd;)V

    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bf;->invalidate()V

    .line 208
    return-void
.end method

.method private s(I)V
    .locals 2
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->uv:Lcom/android/gallery3d/app/aj;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/aj;->K(I)Lcom/android/gallery3d/a/ax;

    move-result-object v0

    .line 200
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/cc;->uw:Lcom/android/gallery3d/ui/bj;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/bj;->n(Lcom/android/gallery3d/a/dd;)V

    .line 202
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bf;->invalidate()V

    .line 203
    return-void

    .line 200
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    goto :goto_0
.end method

.method private s(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->uu:Lcom/android/gallery3d/ui/cw;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/cw;->y(II)V

    .line 222
    return-void
.end method

.method private t(I)V
    .locals 1
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->ux:Lcom/android/gallery3d/ui/bo;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/bo;->aq(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/bf;->ak(I)V

    .line 214
    :cond_0
    return-void
.end method

.method private u(I)V
    .locals 0
    .parameter

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/cc;->t(I)V

    .line 218
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/bo;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/gallery3d/ui/cc;->ux:Lcom/android/gallery3d/ui/bo;

    .line 121
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/dg;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/gallery3d/ui/cc;->uy:Lcom/android/gallery3d/ui/dg;

    .line 125
    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method protected ac(I)V
    .locals 0
    .parameter

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/am;->ac(I)V

    .line 144
    if-nez p1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cc;->onUserInteraction()V

    .line 147
    :cond_0
    return-void
.end method

.method public ak(I)V
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/bf;->ak(I)V

    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/bf;->bd(I)V

    .line 251
    return-void
.end method

.method public at(I)V
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/bf;->h(I)V

    .line 246
    return-void
.end method

.method protected c(Lcom/android/gallery3d/ui/b;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->uz:Lcom/android/gallery3d/ui/NinePatchTexture;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cc;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cc;->getHeight()I

    move-result v5

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/NinePatchTexture;->a(Lcom/android/gallery3d/ui/b;IIII)V

    .line 195
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/am;->c(Lcom/android/gallery3d/ui/b;)V

    .line 196
    return-void
.end method

.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 189
    :goto_0
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/am;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 181
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cc;->em()V

    goto :goto_0

    .line 185
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cc;->en()V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public em()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->uy:Lcom/android/gallery3d/ui/dg;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/dg;->em()V

    .line 228
    return-void
.end method

.method public en()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->uy:Lcom/android/gallery3d/ui/dg;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/dg;->en()V

    .line 234
    return-void
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 134
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cc;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 139
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v0, Lcom/android/gallery3d/d/a;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/d/a;-><init>(FF)V

    .line 136
    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/d/a;->setDuration(I)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/cc;->a(Lcom/android/gallery3d/d/c;)V

    .line 138
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/ui/cc;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 160
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->ut:Lcom/android/gallery3d/ui/bf;

    iget v1, p0, Lcom/android/gallery3d/ui/cc;->un:I

    sub-int v2, p4, p2

    iget v3, p0, Lcom/android/gallery3d/ui/cc;->un:I

    iget v4, p0, Lcom/android/gallery3d/ui/cc;->uq:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/gallery3d/ui/bf;->layout(IIII)V

    .line 162
    iget v0, p0, Lcom/android/gallery3d/ui/cc;->un:I

    iget v1, p0, Lcom/android/gallery3d/ui/cc;->uq:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/ui/cc;->uo:I

    add-int/2addr v0, v1

    .line 163
    iget-object v1, p0, Lcom/android/gallery3d/ui/cc;->uu:Lcom/android/gallery3d/ui/cw;

    sub-int v2, p4, p2

    iget v3, p0, Lcom/android/gallery3d/ui/cc;->ur:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v5, v0, v2, v3}, Lcom/android/gallery3d/ui/cw;->layout(IIII)V

    .line 164
    sub-int v0, p4, p2

    .line 165
    sub-int v0, p5, p3

    .line 166
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 151
    iget v0, p0, Lcom/android/gallery3d/ui/cc;->un:I

    iget v1, p0, Lcom/android/gallery3d/ui/cc;->uq:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/ui/cc;->uo:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/ui/cc;->ur:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/ui/cc;->up:I

    add-int/2addr v0, v1

    .line 152
    invoke-static {p0}, Lcom/android/gallery3d/ui/dk;->e(Lcom/android/gallery3d/ui/am;)Lcom/android/gallery3d/ui/dk;

    move-result-object v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/ui/dk;->B(II)Lcom/android/gallery3d/ui/dk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/dk;->measure(II)V

    .line 155
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->uy:Lcom/android/gallery3d/ui/dg;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/dg;->onUserInteraction()V

    .line 240
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bf;->pause()V

    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->uv:Lcom/android/gallery3d/app/aj;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/aj;->pause()V

    .line 260
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bf;->resume()V

    .line 264
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->uv:Lcom/android/gallery3d/app/aj;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/aj;->resume()V

    .line 265
    return-void
.end method

.method public setStartIndex(I)V
    .locals 1
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/ui/cc;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/bf;->setStartIndex(I)V

    .line 255
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/cc;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/cc;->a(Lcom/android/gallery3d/d/c;)V

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/cc;->setVisibility(I)V

    goto :goto_0
.end method
