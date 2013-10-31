.class Lcom/android/gallery3d/photoeditor/actions/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic oD:Lcom/android/gallery3d/photoeditor/actions/ad;

.field final synthetic oE:Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;Lcom/android/gallery3d/photoeditor/actions/ad;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/t;->oE:Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/t;->oD:Lcom/android/gallery3d/photoeditor/actions/ad;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/t;->oD:Lcom/android/gallery3d/photoeditor/actions/ad;

    int-to-float v1, p2

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/actions/t;->oE:Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, v1, p3}, Lcom/android/gallery3d/photoeditor/actions/ad;->b(FZ)V

    .line 48
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    return-void
.end method
