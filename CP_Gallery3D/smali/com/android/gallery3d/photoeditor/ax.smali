.class Lcom/android/gallery3d/photoeditor/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic EB:Z

.field final synthetic Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/ax;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    iput-boolean p2, p0, Lcom/android/gallery3d/photoeditor/ax;->EB:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ax;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->b(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/aq;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/aq;-><init>(Lcom/android/gallery3d/photoeditor/ax;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->d(Ljava/lang/Runnable;)Z

    .line 124
    return-void
.end method
