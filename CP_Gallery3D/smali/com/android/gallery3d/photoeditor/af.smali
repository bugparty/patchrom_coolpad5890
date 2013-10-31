.class Lcom/android/gallery3d/photoeditor/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic sc:Lcom/android/gallery3d/photoeditor/RestorableView;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/RestorableView;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/af;->sc:Lcom/android/gallery3d/photoeditor/RestorableView;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/af;->val$r:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/af;->sc:Lcom/android/gallery3d/photoeditor/RestorableView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/RestorableView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/af;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 89
    :cond_0
    return-void
.end method
