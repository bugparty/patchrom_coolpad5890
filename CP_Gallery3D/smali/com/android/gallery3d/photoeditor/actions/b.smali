.class Lcom/android/gallery3d/photoeditor/actions/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic p:Lcom/android/gallery3d/photoeditor/actions/z;

.field final synthetic q:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;Lcom/android/gallery3d/photoeditor/actions/z;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/b;->q:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/b;->p:Lcom/android/gallery3d/photoeditor/actions/z;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/b;->p:Lcom/android/gallery3d/photoeditor/actions/z;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/b;->q:Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;->a(Lcom/android/gallery3d/photoeditor/actions/ColorSeekBar;)[I

    move-result-object v1

    aget v1, v1, p2

    invoke-interface {v0, v1, p3}, Lcom/android/gallery3d/photoeditor/actions/z;->b(IZ)V

    .line 112
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    return-void
.end method
