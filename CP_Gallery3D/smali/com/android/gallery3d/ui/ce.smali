.class Lcom/android/gallery3d/ui/ce;
.super Lcom/android/gallery3d/ui/ao;
.source "SourceFile"


# instance fields
.field private final mLayout:Landroid/text/Layout;


# direct methods
.method private constructor <init>(Landroid/text/Layout;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/ao;-><init>(II)V

    .line 34
    iput-object p1, p0, Lcom/android/gallery3d/ui/ce;->mLayout:Landroid/text/Layout;

    .line 35
    return-void
.end method

.method public static a(Ljava/lang/String;IFILandroid/text/Layout$Alignment;)Lcom/android/gallery3d/ui/ce;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p2, p3}, Lcom/android/gallery3d/ui/e;->a(FI)Landroid/text/TextPaint;

    move-result-object v4

    .line 41
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move v5, p1

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 44
    new-instance v1, Lcom/android/gallery3d/ui/ce;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/ui/ce;-><init>(Landroid/text/Layout;)V

    return-object v1
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/ui/ce;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 50
    return-void
.end method
