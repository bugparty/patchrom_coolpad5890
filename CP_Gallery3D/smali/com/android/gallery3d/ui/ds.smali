.class Lcom/android/gallery3d/ui/ds;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private CO:I

.field private CP:F

.field private CQ:Z

.field private CR:Z

.field private nw:F

.field private final ya:Ljavax/microedition/khronos/opengles/GL11;

.field private yq:Z


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v1, 0x3f80

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 668
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 661
    const/16 v0, 0x1e01

    iput v0, p0, Lcom/android/gallery3d/ui/ds;->CO:I

    .line 662
    iput v1, p0, Lcom/android/gallery3d/ui/ds;->CP:F

    .line 663
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/ds;->CQ:Z

    .line 664
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/ds;->yq:Z

    .line 665
    iput v1, p0, Lcom/android/gallery3d/ui/ds;->nw:F

    .line 666
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/ds;->CR:Z

    .line 669
    iput-object p1, p0, Lcom/android/gallery3d/ui/ds;->ya:Ljavax/microedition/khronos/opengles/GL11;

    .line 672
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 675
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 676
    const/16 v0, 0xc11

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 678
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 679
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 680
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 682
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const v2, 0x45f00800

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 686
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 687
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL11;->glClearStencil(I)V

    .line 689
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 690
    const/16 v0, 0x303

    invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 693
    const/16 v0, 0xcf5

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glPixelStorei(II)V

    .line 694
    return-void
.end method


# virtual methods
.method public a(IF)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x437f

    .line 732
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->isOpaque(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f733333

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/ds;->a(Z)V

    .line 736
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/gallery3d/ui/ds;->CP:F

    .line 738
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/ds;->t(Z)V

    .line 740
    ushr-int/lit8 v0, p1, 0x18

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const v1, 0x477fff00

    mul-float/2addr v0, v1

    div-float/2addr v0, v5

    div-float/2addr v0, v5

    .line 741
    iget-object v1, p0, Lcom/android/gallery3d/ui/ds;->ya:Ljavax/microedition/khronos/opengles/GL11;

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    and-int/lit16 v4, p1, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/opengles/GL11;->glColor4x(IIII)V

    .line 746
    return-void

    :cond_1
    move v0, v1

    .line 732
    goto :goto_0
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0xbe2

    .line 759
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ds;->yq:Z

    if-ne v0, p1, :cond_0

    .line 766
    :goto_0
    return-void

    .line 760
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/ds;->yq:Z

    .line 761
    if-eqz p1, :cond_1

    .line 762
    iget-object v0, p0, Lcom/android/gallery3d/ui/ds;->ya:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ds;->ya:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    goto :goto_0
.end method

.method public aT(I)V
    .locals 4
    .parameter

    .prologue
    .line 697
    iget v0, p0, Lcom/android/gallery3d/ui/ds;->CO:I

    if-ne v0, p1, :cond_0

    .line 700
    :goto_0
    return-void

    .line 698
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/ds;->CO:I

    .line 699
    iget-object v0, p0, Lcom/android/gallery3d/ui/ds;->ya:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    int-to-float v3, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    goto :goto_0
.end method

.method public j(F)V
    .locals 1
    .parameter

    .prologue
    .line 703
    iget v0, p0, Lcom/android/gallery3d/ui/ds;->nw:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 706
    :goto_0
    return-void

    .line 704
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/ds;->nw:F

    .line 705
    iget-object v0, p0, Lcom/android/gallery3d/ui/ds;->ya:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glLineWidth(F)V

    goto :goto_0
.end method

.method public q(F)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 719
    iget v0, p0, Lcom/android/gallery3d/ui/ds;->CP:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 729
    :goto_0
    return-void

    .line 720
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/ds;->CP:F

    .line 721
    const v0, 0x3f733333

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/android/gallery3d/ui/ds;->ya:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 724
    const/16 v0, 0x1e01

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/ds;->aT(I)V

    goto :goto_0

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ds;->ya:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p1, p1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 727
    const/16 v0, 0x2100

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/ds;->aT(I)V

    goto :goto_0
.end method

.method public s(Z)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0xb20

    .line 709
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ds;->CR:Z

    if-ne v0, p1, :cond_0

    .line 716
    :goto_0
    return-void

    .line 710
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/ds;->CR:Z

    .line 711
    if-eqz p1, :cond_1

    .line 712
    iget-object v0, p0, Lcom/android/gallery3d/ui/ds;->ya:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ds;->ya:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    goto :goto_0
.end method

.method public t(Z)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0xde1

    .line 749
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ds;->CQ:Z

    if-ne v0, p1, :cond_0

    .line 756
    :goto_0
    return-void

    .line 750
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/ds;->CQ:Z

    .line 751
    if-eqz p1, :cond_1

    .line 752
    iget-object v0, p0, Lcom/android/gallery3d/ui/ds;->ya:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    goto :goto_0

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ds;->ya:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    goto :goto_0
.end method
