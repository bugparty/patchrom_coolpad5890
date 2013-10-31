.class Lcom/android/gallery3d/photoeditor/actions/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/e;


# instance fields
.field final synthetic xL:Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;

.field final synthetic xM:Lcom/android/gallery3d/photoeditor/actions/StraightenAction;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/StraightenAction;Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/ac;->xM:Lcom/android/gallery3d/photoeditor/actions/StraightenAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/ac;->xL:Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 47
    if-eqz p2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ac;->xL:Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;->h(F)V

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ac;->xM:Lcom/android/gallery3d/photoeditor/actions/StraightenAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/ac;->xL:Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/StraightenAction;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V

    .line 51
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method
