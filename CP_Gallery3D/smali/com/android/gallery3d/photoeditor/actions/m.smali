.class Lcom/android/gallery3d/photoeditor/actions/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/z;


# instance fields
.field final synthetic nr:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodleAction;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/m;->nr:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    if-eqz p2, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/m;->nr:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->a(Lcom/android/gallery3d/photoeditor/actions/DoodleAction;)Lcom/android/gallery3d/photoeditor/actions/DoodleView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/actions/DoodleView;->setColor(I)V

    .line 52
    :cond_0
    return-void
.end method
