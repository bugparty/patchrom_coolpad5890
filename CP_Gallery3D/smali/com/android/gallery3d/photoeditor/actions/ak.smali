.class Lcom/android/gallery3d/photoeditor/actions/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/ad;


# instance fields
.field final synthetic CS:Lcom/android/gallery3d/photoeditor/filters/GrainFilter;

.field final synthetic CT:Lcom/android/gallery3d/photoeditor/actions/GrainAction;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/GrainAction;Lcom/android/gallery3d/photoeditor/filters/GrainFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/ak;->CT:Lcom/android/gallery3d/photoeditor/actions/GrainAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/ak;->CS:Lcom/android/gallery3d/photoeditor/filters/GrainFilter;

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
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ak;->CS:Lcom/android/gallery3d/photoeditor/filters/GrainFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/GrainFilter;->setScale(F)V

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/ak;->CT:Lcom/android/gallery3d/photoeditor/actions/GrainAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/ak;->CS:Lcom/android/gallery3d/photoeditor/filters/GrainFilter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/actions/GrainAction;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;Z)V

    .line 50
    :cond_0
    return-void
.end method