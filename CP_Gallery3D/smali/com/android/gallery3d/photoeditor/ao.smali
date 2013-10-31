.class Lcom/android/gallery3d/photoeditor/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/be;


# instance fields
.field final synthetic By:Landroid/graphics/Bitmap;

.field final synthetic Bz:Lcom/android/gallery3d/photoeditor/ba;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/ba;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/ao;->Bz:Lcom/android/gallery3d/photoeditor/ba;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/ao;->By:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dc()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/android/gallery3d/photoeditor/an;->dismissDialog()V

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ao;->Bz:Lcom/android/gallery3d/photoeditor/ba;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/ba;->Ev:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->b(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v1

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ao;->By:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setEnabled(Z)V

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
