.class Lcom/android/gallery3d/photoeditor/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field final eH:Ljava/util/Vector;

.field final eI:Landroid/graphics/RectF;

.field eJ:Lcom/android/gallery3d/photoeditor/s;

.field eK:Lcom/android/gallery3d/photoeditor/aj;

.field eL:I

.field eM:I

.field eN:F

.field eO:F

.field eP:F

.field final synthetic eQ:Lcom/android/gallery3d/photoeditor/PhotoView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoView;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/b;->eQ:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/b;->eH:Ljava/util/Vector;

    .line 103
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/b;->eI:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoView;Lcom/android/gallery3d/photoeditor/bc;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/b;-><init>(Lcom/android/gallery3d/photoeditor/PhotoView;)V

    return-void
.end method


# virtual methods
.method a(Lcom/android/gallery3d/photoeditor/aj;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 113
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/aj;->width()I

    move-result v0

    move v2, v0

    .line 114
    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/aj;->height()I

    move-result v0

    .line 116
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/b;->eI:Landroid/graphics/RectF;

    monitor-enter v3

    .line 117
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/b;->eI:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v5, v2

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/b;->eI:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, v0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 118
    :cond_1
    if-eqz v1, :cond_2

    .line 119
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/b;->eI:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v4, v5, v6, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 121
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/b;->eK:Lcom/android/gallery3d/photoeditor/aj;

    .line 123
    invoke-virtual {p0, p2, v1}, Lcom/android/gallery3d/photoeditor/b;->a(ZZ)V

    .line 124
    return-void

    :cond_3
    move v2, v1

    .line 113
    goto :goto_0

    :cond_4
    move v0, v1

    .line 114
    goto :goto_1

    .line 121
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(ZZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 127
    iget v0, p0, Lcom/android/gallery3d/photoeditor/b;->eO:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/photoeditor/b;->eP:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_6

    :cond_0
    move v0, v2

    .line 128
    :goto_0
    iget v3, p0, Lcom/android/gallery3d/photoeditor/b;->eN:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    .line 129
    :cond_2
    if-eqz p1, :cond_3

    if-nez v1, :cond_4

    :cond_3
    if-eqz p2, :cond_7

    if-nez v1, :cond_7

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/b;->eK:Lcom/android/gallery3d/photoeditor/aj;

    if-eqz v0, :cond_5

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/b;->eJ:Lcom/android/gallery3d/photoeditor/s;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/b;->eK:Lcom/android/gallery3d/photoeditor/aj;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/aj;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/b;->eK:Lcom/android/gallery3d/photoeditor/aj;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/aj;->height()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/photoeditor/b;->eL:I

    iget v4, p0, Lcom/android/gallery3d/photoeditor/b;->eM:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/photoeditor/ac;->a(Lcom/android/gallery3d/photoeditor/s;IIII)V

    .line 134
    iput v5, p0, Lcom/android/gallery3d/photoeditor/b;->eN:F

    .line 135
    iput v5, p0, Lcom/android/gallery3d/photoeditor/b;->eO:F

    .line 136
    iput v5, p0, Lcom/android/gallery3d/photoeditor/b;->eP:F

    .line 146
    :cond_5
    :goto_1
    return-void

    :cond_6
    move v0, v1

    .line 127
    goto :goto_0

    .line 140
    :cond_7
    iget v1, p0, Lcom/android/gallery3d/photoeditor/b;->eN:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_8

    .line 141
    iget v0, p0, Lcom/android/gallery3d/photoeditor/b;->eN:F

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/b;->f(F)V

    goto :goto_1

    .line 142
    :cond_8
    if-eqz v0, :cond_5

    .line 143
    iget v0, p0, Lcom/android/gallery3d/photoeditor/b;->eO:F

    iget v1, p0, Lcom/android/gallery3d/photoeditor/b;->eP:F

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/b;->f(FF)V

    goto :goto_1
.end method

.method f(F)V
    .locals 6
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/b;->eK:Lcom/android/gallery3d/photoeditor/aj;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/b;->eJ:Lcom/android/gallery3d/photoeditor/s;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/b;->eK:Lcom/android/gallery3d/photoeditor/aj;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/aj;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/b;->eK:Lcom/android/gallery3d/photoeditor/aj;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/aj;->height()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/photoeditor/b;->eL:I

    iget v4, p0, Lcom/android/gallery3d/photoeditor/b;->eM:I

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/photoeditor/ac;->a(Lcom/android/gallery3d/photoeditor/s;IIIIF)V

    .line 152
    iput p1, p0, Lcom/android/gallery3d/photoeditor/b;->eN:F

    .line 154
    :cond_0
    return-void
.end method

.method f(FF)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/b;->eK:Lcom/android/gallery3d/photoeditor/aj;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/b;->eJ:Lcom/android/gallery3d/photoeditor/s;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/b;->eK:Lcom/android/gallery3d/photoeditor/aj;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/aj;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/b;->eK:Lcom/android/gallery3d/photoeditor/aj;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/aj;->height()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/photoeditor/b;->eL:I

    iget v4, p0, Lcom/android/gallery3d/photoeditor/b;->eM:I

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/photoeditor/ac;->a(Lcom/android/gallery3d/photoeditor/s;IIIIFF)V

    .line 160
    iput p1, p0, Lcom/android/gallery3d/photoeditor/b;->eO:F

    .line 161
    iput p2, p0, Lcom/android/gallery3d/photoeditor/b;->eP:F

    .line 163
    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/b;->eH:Ljava/util/Vector;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/b;->eH:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/b;->eH:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 172
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    if-eqz v0, :cond_1

    .line 174
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/b;->eH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/b;->eQ:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->requestRender()V

    .line 179
    :cond_2
    invoke-static {}, Lcom/android/gallery3d/photoeditor/ac;->dG()V

    .line 180
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/b;->eK:Lcom/android/gallery3d/photoeditor/aj;

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/b;->eJ:Lcom/android/gallery3d/photoeditor/s;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/b;->eK:Lcom/android/gallery3d/photoeditor/aj;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/aj;->ei()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/photoeditor/b;->eL:I

    iget v3, p0, Lcom/android/gallery3d/photoeditor/b;->eM:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/photoeditor/ac;->a(Lcom/android/gallery3d/photoeditor/s;III)V

    .line 183
    :cond_3
    return-void

    .line 172
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    iput p2, p0, Lcom/android/gallery3d/photoeditor/b;->eL:I

    .line 188
    iput p3, p0, Lcom/android/gallery3d/photoeditor/b;->eM:I

    .line 189
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/photoeditor/b;->a(ZZ)V

    .line 190
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-static {}, Lcom/android/gallery3d/photoeditor/ac;->dH()Lcom/android/gallery3d/photoeditor/s;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/b;->eJ:Lcom/android/gallery3d/photoeditor/s;

    .line 195
    return-void
.end method
