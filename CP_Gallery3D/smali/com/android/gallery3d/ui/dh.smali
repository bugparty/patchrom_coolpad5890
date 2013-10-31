.class Lcom/android/gallery3d/ui/dh;
.super Lcom/android/gallery3d/ui/am;
.source "SourceFile"


# static fields
.field private static final AH:I = -0x1


# instance fields
.field private AI:Ljava/util/ArrayList;

.field private AJ:Landroid/graphics/RectF;

.field private AK:I

.field final synthetic aS:Lcom/android/gallery3d/ui/s;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/s;)V
    .locals 1
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/gallery3d/ui/dh;->aS:Lcom/android/gallery3d/ui/s;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/am;-><init>()V

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/dh;->AI:Ljava/util/ArrayList;

    .line 198
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/dh;->AJ:Landroid/graphics/RectF;

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/dh;->AK:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/s;Lcom/android/gallery3d/ui/al;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/dh;-><init>(Lcom/android/gallery3d/ui/s;)V

    return-void
.end method

.method private a(Lcom/android/gallery3d/ui/b;Landroid/graphics/RectF;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/16 v8, 0x1e00

    .line 207
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->b()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v6

    .line 208
    if-eqz p3, :cond_0

    .line 209
    const/16 v0, 0xb90

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 210
    const/16 v0, 0x400

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 211
    const/16 v0, 0x1e01

    invoke-interface {v6, v8, v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    .line 212
    const/16 v0, 0x207

    invoke-interface {v6, v0, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/dh;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->a(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/dh;->AJ:Landroid/graphics/RectF;

    invoke-virtual {v0, p2, v1}, Lcom/android/gallery3d/ui/g;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v7

    .line 216
    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/b;->a(FFFFI)V

    .line 217
    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v0, p0, Lcom/android/gallery3d/ui/dh;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->b(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/as;

    move-result-object v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/b;->b(FFFFLcom/android/gallery3d/ui/as;)V

    .line 219
    if-eqz p3, :cond_1

    .line 220
    invoke-interface {v6, v8, v8, v8}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    .line 222
    :cond_1
    return-void
.end method

.method private aG(I)V
    .locals 1
    .parameter

    .prologue
    .line 240
    iget v0, p0, Lcom/android/gallery3d/ui/dh;->AK:I

    if-ne v0, p1, :cond_0

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/dh;->AK:I

    .line 242
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/dh;->invalidate()V

    goto :goto_0
.end method

.method private j(FF)I
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 246
    iget-object v2, p0, Lcom/android/gallery3d/ui/dh;->AI:Ljava/util/ArrayList;

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/gallery3d/ui/dh;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->a(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/g;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/android/gallery3d/ui/dh;->AJ:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v5}, Lcom/android/gallery3d/ui/g;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 249
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 251
    :goto_1
    return v0

    .line 247
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 275
    :cond_0
    :goto_0
    return v4

    .line 261
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/dh;->j(FF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/dh;->aG(I)V

    goto :goto_0

    .line 266
    :pswitch_1
    iget v0, p0, Lcom/android/gallery3d/ui/dh;->AK:I

    .line 267
    invoke-direct {p0, v3}, Lcom/android/gallery3d/ui/dh;->aG(I)V

    .line 268
    if-eq v0, v3, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/gallery3d/ui/dh;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v1}, Lcom/android/gallery3d/ui/s;->c(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/cj;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/dh;->AI:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/cj;->f(Landroid/graphics/RectF;)V

    .line 270
    iget-object v0, p0, Lcom/android/gallery3d/ui/dh;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->c(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/cj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/cj;->setVisibility(I)V

    .line 271
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/ui/dh;->setVisibility(I)V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected d(Lcom/android/gallery3d/ui/b;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 226
    iget-object v6, p0, Lcom/android/gallery3d/ui/dh;->AI:Ljava/util/ArrayList;

    .line 227
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_1

    .line 228
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/gallery3d/ui/dh;->AK:I

    if-ne v5, v2, :cond_0

    move v2, v3

    :goto_1
    invoke-direct {p0, p1, v0, v2}, Lcom/android/gallery3d/ui/dh;->a(Lcom/android/gallery3d/ui/b;Landroid/graphics/RectF;Z)V

    .line 227
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    move v2, v4

    .line 228
    goto :goto_1

    .line 231
    :cond_1
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->b()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v6

    .line 232
    iget v0, p0, Lcom/android/gallery3d/ui/dh;->AK:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 233
    const/16 v0, 0x205

    invoke-interface {v6, v0, v3, v3}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    .line 234
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/dh;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/dh;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/high16 v5, 0x6600

    move-object v0, p1

    move v2, v1

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/b;->a(FFFFI)V

    .line 235
    const/16 v0, 0xb90

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 237
    :cond_2
    return-void
.end method

.method public h(Landroid/graphics/RectF;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/gallery3d/ui/dh;->AI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/dh;->invalidate()V

    .line 204
    return-void
.end method
