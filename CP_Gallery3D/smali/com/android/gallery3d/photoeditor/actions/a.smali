.class Lcom/android/gallery3d/photoeditor/actions/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/c;


# instance fields
.field final synthetic k:Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;

.field final synthetic l:Lcom/android/gallery3d/photoeditor/actions/RedEyeAction;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/RedEyeAction;Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/a;->l:Lcom/android/gallery3d/photoeditor/actions/RedEyeAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/a;->k:Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/PointF;)V
    .locals 3
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/a;->k:Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->d(Landroid/graphics/PointF;)V

    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/a;->l:Lcom/android/gallery3d/photoeditor/actions/RedEyeAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/a;->k:Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/RedEyeAction;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V

    .line 47
    return-void
.end method
