.class Lcom/android/gallery3d/photoeditor/actions/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/h;


# instance fields
.field final synthetic nr:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodleAction;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/n;->nr:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V
    .locals 3
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/n;->nr:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->b(Lcom/android/gallery3d/photoeditor/actions/DoodleAction;)Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->b(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/n;->nr:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/n;->nr:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->b(Lcom/android/gallery3d/photoeditor/actions/DoodleAction;)Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V

    .line 70
    return-void
.end method

.method public aY()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/n;->nr:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->b(Lcom/android/gallery3d/photoeditor/actions/DoodleAction;)Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->fd()V

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/n;->nr:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/n;->nr:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->b(Lcom/android/gallery3d/photoeditor/actions/DoodleAction;)Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V

    .line 64
    return-void
.end method
