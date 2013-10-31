.class public abstract Lcom/android/gallery3d/ui/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final gn:I = 0x0

.field public static final go:I = 0x1

.field public static final gp:I = 0x2

.field public static final gq:I = 0x3

.field public static final gr:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/NinePatchTexture;IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/NinePatchTexture;->cq()Landroid/graphics/Rect;

    move-result-object v0

    .line 65
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int v2, p2, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int v5, v1, v0

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/NinePatchTexture;->a(Lcom/android/gallery3d/ui/b;IIII)V

    .line 67
    return-void
.end method

.method public static a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/ar;IIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 50
    if-eqz p6, :cond_0

    .line 51
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/android/gallery3d/ui/b;->save(I)I

    .line 52
    int-to-float v0, p6

    const/high16 v1, 0x3f80

    invoke-interface {p0, v0, v2, v2, v1}, Lcom/android/gallery3d/ui/b;->rotate(FFFF)V

    :cond_0
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 55
    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/ar;->a(Lcom/android/gallery3d/ui/b;IIII)V

    .line 57
    if-eqz p6, :cond_1

    .line 58
    invoke-interface {p0}, Lcom/android/gallery3d/ui/b;->restore()V

    .line 60
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/gallery3d/ui/b;II)V
.end method

.method public abstract a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/ar;IIILcom/android/gallery3d/a/dd;IIZIZZ)V
.end method

.method public a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/ar;IIILcom/android/gallery3d/a/dd;IZ)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v12}, Lcom/android/gallery3d/ui/u;->a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/ar;IIILcom/android/gallery3d/a/dd;IIZIZZ)V

    .line 46
    return-void
.end method

.method public abstract aV()V
.end method
