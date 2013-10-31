.class Lcom/android/gallery3d/ui/e;
.super Lcom/android/gallery3d/ui/ao;
.source "SourceFile"


# instance fields
.field private final av:Landroid/text/TextPaint;

.field private final aw:Landroid/graphics/Paint$FontMetricsInt;

.field private final mText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p4, p5}, Lcom/android/gallery3d/ui/ao;-><init>(II)V

    .line 39
    iput-object p1, p0, Lcom/android/gallery3d/ui/e;->mText:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/android/gallery3d/ui/e;->av:Landroid/text/TextPaint;

    .line 41
    iput-object p3, p0, Lcom/android/gallery3d/ui/e;->aw:Landroid/graphics/Paint$FontMetricsInt;

    .line 42
    return-void
.end method

.method public static a(FI)Landroid/text/TextPaint;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 45
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 46
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 47
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 48
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 49
    const/high16 v1, 0x4000

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 50
    return-object v0
.end method

.method public static a(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/e;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {p1, p2}, Lcom/android/gallery3d/ui/e;->a(FI)Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/gallery3d/ui/e;->a(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/android/gallery3d/ui/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;FIFZ)Lcom/android/gallery3d/ui/e;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-static {p1, p2}, Lcom/android/gallery3d/ui/e;->a(FI)Landroid/text/TextPaint;

    move-result-object v0

    .line 62
    if-eqz p4, :cond_0

    .line 63
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 65
    :cond_0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, v0, p3, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/e;->a(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/android/gallery3d/ui/e;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/android/gallery3d/ui/e;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 71
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 72
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v4, v0

    .line 73
    iget v0, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    .line 75
    if-gtz v4, :cond_0

    move v4, v5

    .line 76
    :cond_0
    if-gtz v0, :cond_1

    .line 77
    :goto_0
    new-instance v0, Lcom/android/gallery3d/ui/e;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/e;-><init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V

    return-object v0

    :cond_1
    move v5, v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/ui/e;->aw:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/ui/e;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/ui/e;->av:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 84
    return-void
.end method
