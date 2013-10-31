.class Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;
.super Lcom/android/gallery3d/photoeditor/actions/AbstractSeekBar;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/AbstractSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;->setMax(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/photoeditor/actions/ad;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 58
    return-void

    .line 43
    :cond_0
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/t;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/photoeditor/actions/t;-><init>(Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;Lcom/android/gallery3d/photoeditor/actions/ad;)V

    goto :goto_0
.end method

.method public v(F)V
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;->setProgress(I)V

    .line 62
    return-void
.end method
