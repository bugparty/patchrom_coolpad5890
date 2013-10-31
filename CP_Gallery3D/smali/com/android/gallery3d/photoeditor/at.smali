.class Lcom/android/gallery3d/photoeditor/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic DJ:Lcom/android/gallery3d/photoeditor/au;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/au;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/at;->DJ:Lcom/android/gallery3d/photoeditor/au;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/at;->DJ:Lcom/android/gallery3d/photoeditor/au;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/au;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->a(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/ActionBar;->eP()V

    .line 238
    return-void
.end method
