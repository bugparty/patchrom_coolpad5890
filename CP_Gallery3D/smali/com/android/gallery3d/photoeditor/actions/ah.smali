.class Lcom/android/gallery3d/photoeditor/actions/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Aj:F

.field final synthetic Ak:Lcom/android/gallery3d/photoeditor/actions/s;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/s;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/ah;->Ak:Lcom/android/gallery3d/photoeditor/actions/s;

    iput p2, p0, Lcom/android/gallery3d/photoeditor/actions/ah;->Aj:F

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ah;->Ak:Lcom/android/gallery3d/photoeditor/actions/s;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/s;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/ah;->Aj:F

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->f(F)V

    .line 86
    return-void
.end method
