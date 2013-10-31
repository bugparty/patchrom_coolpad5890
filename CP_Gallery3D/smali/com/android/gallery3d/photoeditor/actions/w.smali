.class Lcom/android/gallery3d/photoeditor/actions/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/ad;


# instance fields
.field final synthetic rB:Lcom/android/gallery3d/photoeditor/filters/SaturationFilter;

.field final synthetic rC:Lcom/android/gallery3d/photoeditor/actions/SaturationAction;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/SaturationAction;Lcom/android/gallery3d/photoeditor/filters/SaturationFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/w;->rC:Lcom/android/gallery3d/photoeditor/actions/SaturationAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/w;->rB:Lcom/android/gallery3d/photoeditor/filters/SaturationFilter;

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
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/w;->rB:Lcom/android/gallery3d/photoeditor/filters/SaturationFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/SaturationFilter;->setScale(F)V

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/w;->rC:Lcom/android/gallery3d/photoeditor/actions/SaturationAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/w;->rB:Lcom/android/gallery3d/photoeditor/filters/SaturationFilter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/SaturationAction;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V

    .line 50
    :cond_0
    return-void
.end method
