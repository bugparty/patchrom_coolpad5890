.class Lcom/android/gallery3d/photoeditor/actions/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/ad;


# instance fields
.field final synthetic uA:Lcom/android/gallery3d/photoeditor/filters/ShadowFilter;

.field final synthetic uB:Lcom/android/gallery3d/photoeditor/actions/ShadowAction;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/ShadowAction;Lcom/android/gallery3d/photoeditor/filters/ShadowFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/aa;->uB:Lcom/android/gallery3d/photoeditor/actions/ShadowAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/aa;->uA:Lcom/android/gallery3d/photoeditor/filters/ShadowFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(FZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 46
    if-eqz p2, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/aa;->uA:Lcom/android/gallery3d/photoeditor/filters/ShadowFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/ShadowFilter;->setScale(F)V

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/aa;->uB:Lcom/android/gallery3d/photoeditor/actions/ShadowAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/aa;->uA:Lcom/android/gallery3d/photoeditor/filters/ShadowFilter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/ShadowAction;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V

    .line 50
    :cond_0
    return-void
.end method
