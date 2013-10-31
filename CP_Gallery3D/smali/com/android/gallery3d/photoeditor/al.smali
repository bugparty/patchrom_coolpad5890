.class Lcom/android/gallery3d/photoeditor/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic tR:Lcom/android/gallery3d/photoeditor/av;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/av;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/al;->tR:Lcom/android/gallery3d/photoeditor/av;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lcom/android/gallery3d/photoeditor/an;->showDialog()V

    .line 138
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/al;->tR:Lcom/android/gallery3d/photoeditor/av;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/av;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->c(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/ap;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/a;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/a;-><init>(Lcom/android/gallery3d/photoeditor/al;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/ap;->a(Lcom/android/gallery3d/photoeditor/x;)V

    .line 155
    return-void
.end method
