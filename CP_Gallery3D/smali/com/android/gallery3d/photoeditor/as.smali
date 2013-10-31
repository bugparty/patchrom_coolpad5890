.class Lcom/android/gallery3d/photoeditor/as;
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
    .line 239
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/as;->DJ:Lcom/android/gallery3d/photoeditor/au;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/as;->DJ:Lcom/android/gallery3d/photoeditor/au;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/au;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->finish()V

    .line 244
    return-void
.end method
