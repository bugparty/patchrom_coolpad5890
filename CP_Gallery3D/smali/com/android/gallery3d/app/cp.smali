.class Lcom/android/gallery3d/app/cp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mapapi/MKMapViewListener;


# instance fields
.field final synthetic zs:Lcom/android/gallery3d/app/PhotoDisplayMap;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoDisplayMap;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/gallery3d/app/cp;->zs:Lcom/android/gallery3d/app/PhotoDisplayMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapMoveFinish()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/app/cp;->zs:Lcom/android/gallery3d/app/PhotoDisplayMap;

    iget v0, v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CF:I

    sget-object v1, Lcom/android/gallery3d/app/PhotoDisplayMap;->CE:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MapView;->getZoomLevel()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/cp;->zs:Lcom/android/gallery3d/app/PhotoDisplayMap;

    sget-object v1, Lcom/android/gallery3d/app/PhotoDisplayMap;->CE:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MapView;->getZoomLevel()I

    move-result v1

    iput v1, v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CF:I

    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/app/cp;->zs:Lcom/android/gallery3d/app/PhotoDisplayMap;

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CG:Lcom/android/gallery3d/app/z;

    iget-object v0, v0, Lcom/android/gallery3d/app/z;->fD:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/cp;->zs:Lcom/android/gallery3d/app/PhotoDisplayMap;

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoDisplayMap;->CG:Lcom/android/gallery3d/app/z;

    iget-object v0, v0, Lcom/android/gallery3d/app/z;->fD:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/cp;->zs:Lcom/android/gallery3d/app/PhotoDisplayMap;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/PhotoDisplayMap;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    sget-object v1, Lcom/android/gallery3d/app/PhotoDisplayMap;->CE:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/app/z;

    iget-object v3, p0, Lcom/android/gallery3d/app/cp;->zs:Lcom/android/gallery3d/app/PhotoDisplayMap;

    const/4 v4, 0x3

    invoke-direct {v2, v0, v3, v4}, Lcom/android/gallery3d/app/z;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_1
    return-void
.end method
