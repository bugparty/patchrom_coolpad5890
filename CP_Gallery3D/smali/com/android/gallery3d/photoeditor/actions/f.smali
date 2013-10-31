.class Lcom/android/gallery3d/photoeditor/actions/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/z;


# instance fields
.field final synthetic ge:Lcom/android/gallery3d/photoeditor/filters/TintFilter;

.field final synthetic gf:Lcom/android/gallery3d/photoeditor/actions/TintAction;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/TintAction;Lcom/android/gallery3d/photoeditor/filters/TintFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/f;->gf:Lcom/android/gallery3d/photoeditor/actions/TintAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/f;->ge:Lcom/android/gallery3d/photoeditor/filters/TintFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 46
    if-eqz p2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/f;->ge:Lcom/android/gallery3d/photoeditor/filters/TintFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/TintFilter;->v(I)V

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/f;->gf:Lcom/android/gallery3d/photoeditor/actions/TintAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/f;->ge:Lcom/android/gallery3d/photoeditor/filters/TintFilter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/TintAction;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V

    .line 50
    :cond_0
    return-void
.end method
