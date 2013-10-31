.class Lcom/android/gallery3d/photoeditor/actions/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic qS:F

.field final synthetic qT:F

.field final synthetic qU:Lcom/android/gallery3d/photoeditor/actions/l;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/l;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/u;->qU:Lcom/android/gallery3d/photoeditor/actions/l;

    iput p2, p0, Lcom/android/gallery3d/photoeditor/actions/u;->qS:F

    iput p3, p0, Lcom/android/gallery3d/photoeditor/actions/u;->qT:F

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/u;->qU:Lcom/android/gallery3d/photoeditor/actions/l;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/l;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/u;->qS:F

    iget v2, p0, Lcom/android/gallery3d/photoeditor/actions/u;->qT:F

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/PhotoView;->f(FF)V

    .line 90
    return-void
.end method
