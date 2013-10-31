.class Lcom/android/gallery3d/photoeditor/actions/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/v;


# instance fields
.field final synthetic sE:Lcom/android/gallery3d/photoeditor/actions/CropAction;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/CropAction;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/y;->sE:Lcom/android/gallery3d/photoeditor/actions/CropAction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 48
    if-eqz p2, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/y;->sE:Lcom/android/gallery3d/photoeditor/actions/CropAction;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/CropAction;->a(Lcom/android/gallery3d/photoeditor/actions/CropAction;)Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/CropFilter;->a(Landroid/graphics/RectF;)V

    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/y;->sE:Lcom/android/gallery3d/photoeditor/actions/CropAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/y;->sE:Lcom/android/gallery3d/photoeditor/actions/CropAction;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/CropAction;->a(Lcom/android/gallery3d/photoeditor/actions/CropAction;)Lcom/android/gallery3d/photoeditor/filters/CropFilter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/CropAction;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V

    .line 52
    :cond_0
    return-void
.end method
