.class Lcom/android/gallery3d/ui/p;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic aS:Lcom/android/gallery3d/ui/s;

.field private final eA:Landroid/graphics/Bitmap;

.field private eB:I

.field private final ez:[Landroid/media/FaceDetector$Face;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/s;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/android/gallery3d/ui/p;->aS:Lcom/android/gallery3d/ui/s;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 672
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    iput-object v0, p0, Lcom/android/gallery3d/ui/p;->ez:[Landroid/media/FaceDetector$Face;

    .line 677
    iput-object p2, p0, Lcom/android/gallery3d/ui/p;->eA:Landroid/graphics/Bitmap;

    .line 678
    const-string v0, "face-detect"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/p;->setName(Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method private a(Landroid/media/FaceDetector$Face;)Landroid/graphics/RectF;
    .locals 14
    .parameter

    .prologue
    const/high16 v12, 0x3f00

    const/4 v11, 0x0

    const/high16 v10, -0x4080

    .line 692
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 693
    invoke-virtual {p1, v2}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 695
    iget-object v0, p0, Lcom/android/gallery3d/ui/p;->eA:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 696
    iget-object v0, p0, Lcom/android/gallery3d/ui/p;->eA:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 697
    invoke-virtual {p1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v0

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    .line 699
    iget-object v1, p0, Lcom/android/gallery3d/ui/p;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v1}, Lcom/android/gallery3d/ui/s;->g(Lcom/android/gallery3d/ui/s;)F

    move-result v5

    .line 700
    cmpl-float v1, v5, v10

    if-eqz v1, :cond_3

    .line 701
    const/high16 v1, 0x3f80

    cmpl-float v1, v5, v1

    if-lez v1, :cond_1

    .line 702
    mul-float v1, v0, v5

    .line 708
    :goto_0
    new-instance v6, Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v1

    iget v8, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v0

    iget v9, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v9

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v2

    invoke-direct {v6, v7, v8, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 710
    int-to-float v0, v3

    int-to-float v1, v4

    invoke-virtual {v6, v11, v11, v0, v1}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 712
    cmpl-float v0, v5, v10

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    .line 714
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, v5

    .line 715
    iget v1, v6, Landroid/graphics/RectF;->left:F

    iget v2, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v0

    mul-float/2addr v1, v12

    iput v1, v6, Landroid/graphics/RectF;->left:F

    .line 716
    iget v1, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iput v0, v6, Landroid/graphics/RectF;->right:F

    .line 724
    :cond_0
    :goto_1
    iget v0, v6, Landroid/graphics/RectF;->left:F

    int-to-float v1, v3

    div-float/2addr v0, v1

    iput v0, v6, Landroid/graphics/RectF;->left:F

    .line 725
    iget v0, v6, Landroid/graphics/RectF;->right:F

    int-to-float v1, v3

    div-float/2addr v0, v1

    iput v0, v6, Landroid/graphics/RectF;->right:F

    .line 726
    iget v0, v6, Landroid/graphics/RectF;->top:F

    int-to-float v1, v4

    div-float/2addr v0, v1

    iput v0, v6, Landroid/graphics/RectF;->top:F

    .line 727
    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, v4

    div-float/2addr v0, v1

    iput v0, v6, Landroid/graphics/RectF;->bottom:F

    .line 728
    return-object v6

    .line 704
    :cond_1
    div-float v1, v0, v5

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_0

    .line 718
    :cond_2
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v5

    .line 719
    iget v1, v6, Landroid/graphics/RectF;->top:F

    iget v2, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    sub-float/2addr v1, v0

    mul-float/2addr v1, v12

    iput v1, v6, Landroid/graphics/RectF;->top:F

    .line 720
    iget v1, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iput v0, v6, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public at()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 732
    iget v0, p0, Lcom/android/gallery3d/ui/p;->eB:I

    if-le v0, v2, :cond_1

    .line 733
    iget v2, p0, Lcom/android/gallery3d/ui/p;->eB:I

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    .line 734
    iget-object v3, p0, Lcom/android/gallery3d/ui/p;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v3}, Lcom/android/gallery3d/ui/s;->l(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/dh;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/p;->ez:[Landroid/media/FaceDetector$Face;

    aget-object v4, v4, v0

    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/p;->a(Landroid/media/FaceDetector$Face;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/dh;->h(Landroid/graphics/RectF;)V

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/p;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->l(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/dh;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/dh;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcom/android/gallery3d/ui/p;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->f(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/app/bm;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0d003b

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 747
    :goto_1
    return-void

    .line 739
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/p;->eB:I

    if-ne v0, v2, :cond_2

    .line 740
    iget-object v0, p0, Lcom/android/gallery3d/ui/p;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->l(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/dh;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/dh;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/android/gallery3d/ui/p;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->c(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/cj;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/ui/p;->ez:[Landroid/media/FaceDetector$Face;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/p;->a(Landroid/media/FaceDetector$Face;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/cj;->f(Landroid/graphics/RectF;)V

    .line 742
    iget-object v0, p0, Lcom/android/gallery3d/ui/p;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->c(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/cj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/cj;->setVisibility(I)V

    goto :goto_1

    .line 744
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/p;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->c(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/cj;->eS()V

    .line 745
    iget-object v0, p0, Lcom/android/gallery3d/ui/p;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->c(Lcom/android/gallery3d/ui/s;)Lcom/android/gallery3d/ui/cj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/cj;->setVisibility(I)V

    goto :goto_1
.end method

.method public run()V
    .locals 5

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/gallery3d/ui/p;->eA:Landroid/graphics/Bitmap;

    .line 684
    new-instance v1, Landroid/media/FaceDetector;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    .line 686
    iget-object v2, p0, Lcom/android/gallery3d/ui/p;->ez:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v1, v0, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/p;->eB:I

    .line 687
    iget-object v0, p0, Lcom/android/gallery3d/ui/p;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v0}, Lcom/android/gallery3d/ui/s;->k(Lcom/android/gallery3d/ui/s;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/p;->aS:Lcom/android/gallery3d/ui/s;

    invoke-static {v1}, Lcom/android/gallery3d/ui/s;->k(Lcom/android/gallery3d/ui/s;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 689
    return-void
.end method
