.class public Lcom/android/gallery3d/gadget/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Ef:I = 0x0

.field private static Eg:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WidgetUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0xdc

    sput v0, Lcom/android/gallery3d/gadget/j;->Ef:I

    .line 36
    const/16 v0, 0xaa

    sput v0, Lcom/android/gallery3d/gadget/j;->Eg:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 59
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 62
    div-int/lit8 v0, p1, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 63
    sget v0, Lcom/android/gallery3d/gadget/j;->Ef:I

    int-to-float v0, v0

    int-to-float v3, v1

    div-float/2addr v0, v3

    sget v3, Lcom/android/gallery3d/gadget/j;->Eg:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 70
    :goto_0
    sget v3, Lcom/android/gallery3d/gadget/j;->Ef:I

    sget v4, Lcom/android/gallery3d/gadget/j;->Eg:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 72
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    sget v5, Lcom/android/gallery3d/gadget/j;->Ef:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sget v6, Lcom/android/gallery3d/gadget/j;->Eg:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    int-to-float v5, p1

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 75
    invoke-virtual {v4, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    const/4 v5, 0x6

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 77
    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v4, p0, v1, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 78
    return-object v3

    .line 66
    :cond_0
    sget v0, Lcom/android/gallery3d/gadget/j;->Ef:I

    int-to-float v0, v0

    int-to-float v3, v2

    div-float/2addr v0, v3

    sget v3, Lcom/android/gallery3d/gadget/j;->Eg:I

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/gallery3d/gadget/j;->Ef:I

    .line 44
    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/gallery3d/gadget/j;->Eg:I

    .line 45
    return-void
.end method

.method public static f(Lcom/android/gallery3d/a/ax;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/a/ax;->r(I)Lcom/android/gallery3d/b/ab;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/b/n;->rl:Lcom/android/gallery3d/b/j;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/b/ab;->c(Lcom/android/gallery3d/b/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 50
    if-nez v0, :cond_0

    .line 51
    const-string v0, "WidgetUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get image of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/a/ax;->getRotation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/gadget/j;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
