.class public Lcom/android/gallery3d/photoeditor/actions/d;
.super Landroid/graphics/Paint;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 29
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/d;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/d;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 31
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/d;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 32
    const/high16 v0, 0x4170

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/d;->setStrokeWidth(F)V

    .line 33
    return-void
.end method
