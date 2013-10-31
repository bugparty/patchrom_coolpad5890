.class public Lcom/android/gallery3d/photoeditor/PhotoView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# instance fields
.field private final Ah:Lcom/android/gallery3d/photoeditor/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Lcom/android/gallery3d/photoeditor/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/photoeditor/b;-><init>(Lcom/android/gallery3d/photoeditor/PhotoView;Lcom/android/gallery3d/photoeditor/bc;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->Ah:Lcom/android/gallery3d/photoeditor/b;

    .line 40
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->setEGLContextClientVersion(I)V

    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->Ah:Lcom/android/gallery3d/photoeditor/b;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->setRenderMode(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/photoeditor/aj;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->Ah:Lcom/android/gallery3d/photoeditor/b;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/photoeditor/b;->a(Lcom/android/gallery3d/photoeditor/aj;Z)V

    .line 81
    return-void
.end method

.method public e(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->Ah:Lcom/android/gallery3d/photoeditor/b;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/b;->eH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoView;->requestRender()V

    .line 60
    return-void
.end method

.method public f(F)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->Ah:Lcom/android/gallery3d/photoeditor/b;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/b;->f(F)V

    .line 88
    return-void
.end method

.method public f(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->Ah:Lcom/android/gallery3d/photoeditor/b;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/photoeditor/b;->f(FF)V

    .line 95
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->Ah:Lcom/android/gallery3d/photoeditor/b;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/b;->eH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 74
    return-void
.end method

.method public getPhotoBounds()Landroid/graphics/RectF;
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->Ah:Lcom/android/gallery3d/photoeditor/b;

    iget-object v1, v0, Lcom/android/gallery3d/photoeditor/b;->eI:Landroid/graphics/RectF;

    monitor-enter v1

    .line 48
    :try_start_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->Ah:Lcom/android/gallery3d/photoeditor/b;

    iget-object v2, v2, Lcom/android/gallery3d/photoeditor/b;->eI:Landroid/graphics/RectF;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 49
    monitor-exit v1

    .line 50
    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->Ah:Lcom/android/gallery3d/photoeditor/b;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/b;->eH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method
