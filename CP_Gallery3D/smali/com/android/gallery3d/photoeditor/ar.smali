.class Lcom/android/gallery3d/photoeditor/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Dj:Lcom/android/gallery3d/photoeditor/ay;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/ay;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/ar;->Dj:Lcom/android/gallery3d/photoeditor/ay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Lcom/android/gallery3d/photoeditor/an;->showDialog()V

    .line 194
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ar;->Dj:Lcom/android/gallery3d/photoeditor/ay;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/ay;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->c(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/ap;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/c;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/c;-><init>(Lcom/android/gallery3d/photoeditor/ar;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/ap;->a(Lcom/android/gallery3d/photoeditor/x;)V

    .line 216
    return-void
.end method
