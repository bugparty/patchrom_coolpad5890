.class Lcom/android/gallery3d/photoeditor/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/az;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/az;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->b(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/ak;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/ak;-><init>(Lcom/android/gallery3d/photoeditor/az;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->d(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method