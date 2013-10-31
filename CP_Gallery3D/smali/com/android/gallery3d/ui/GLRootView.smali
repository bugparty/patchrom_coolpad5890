.class public Lcom/android/gallery3d/ui/GLRootView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/android/gallery3d/ui/eh;


# static fields
.field private static final GE:Z = false

.field private static final GH:Z = false

.field private static final GJ:Z = false

.field private static final GK:I = 0x1

.field private static final GL:I = 0x2

.field private static final GW:I = 0x10

.field private static final TAG:Ljava/lang/String; = "GLRootView"

.field private static final tH:I = 0x14

.field private static final tI:I = 0x15


# instance fields
.field private GF:I

.field private GG:J

.field private GI:I

.field private GM:Lcom/android/gallery3d/ui/cp;

.field private GN:Lcom/android/gallery3d/ui/am;

.field private GO:Landroid/util/DisplayMetrics;

.field private volatile GP:Z

.field private GQ:I

.field private final GR:Lcom/android/gallery3d/ui/bp;

.field private final GS:Ljava/util/ArrayList;

.field private final GT:Ljava/util/LinkedList;

.field private final GU:Lcom/android/gallery3d/ui/c;

.field private final GV:Ljava/util/concurrent/locks/ReentrantLock;

.field private GX:J

.field private GY:Z

.field private mFlags:I

.field private ya:Ljavax/microedition/khronos/opengles/GL11;

.field private yi:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/GLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput v2, p0, Lcom/android/gallery3d/ui/GLRootView;->GF:I

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GG:J

    .line 61
    iput v2, p0, Lcom/android/gallery3d/ui/GLRootView;->GI:I

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 75
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->GP:Z

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->yi:Landroid/graphics/Rect;

    .line 78
    iput v2, p0, Lcom/android/gallery3d/ui/GLRootView;->GQ:I

    .line 80
    new-instance v0, Lcom/android/gallery3d/ui/bp;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/bp;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GR:Lcom/android/gallery3d/ui/bp;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GS:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GT:Ljava/util/LinkedList;

    .line 89
    new-instance v0, Lcom/android/gallery3d/ui/c;

    invoke-direct {v0, p0, v3}, Lcom/android/gallery3d/ui/c;-><init>(Lcom/android/gallery3d/ui/GLRootView;Lcom/android/gallery3d/ui/bs;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GU:Lcom/android/gallery3d/ui/c;

    .line 91
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GV:Ljava/util/concurrent/locks/ReentrantLock;

    .line 95
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->GY:Z

    .line 107
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 108
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/ui/GLRootView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GR:Lcom/android/gallery3d/ui/bp;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLRootView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 110
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/ui/GLRootView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GT:Ljava/util/LinkedList;

    return-object v0
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 331
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->GM:Lcom/android/gallery3d/ui/cp;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/cp;->c()V

    .line 334
    invoke-static {}, Lcom/android/gallery3d/ui/an;->cG()V

    .line 336
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GP:Z

    .line 338
    iget v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLRootView;->gb()V

    .line 343
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/ui/GLRootView;->GQ:I

    if-lez v1, :cond_1

    .line 344
    iget v1, p0, Lcom/android/gallery3d/ui/GLRootView;->GQ:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/ui/GLRootView;->GQ:I

    .line 345
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->yi:Landroid/graphics/Rect;

    .line 346
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-interface {p1, v2, v3, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->GM:Lcom/android/gallery3d/ui/cp;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/cp;->a(J)V

    .line 350
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->GN:Lcom/android/gallery3d/ui/am;

    if-eqz v1, :cond_2

    .line 351
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->GN:Lcom/android/gallery3d/ui/am;

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->GM:Lcom/android/gallery3d/ui/cp;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/am;->c(Lcom/android/gallery3d/ui/b;)V

    .line 354
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->GS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 356
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->GS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_3

    .line 357
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/d/c;

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/d/c;->setStartTime(J)V

    .line 356
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 362
    :cond_4
    invoke-static {}, Lcom/android/gallery3d/ui/an;->cH()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 363
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V

    .line 366
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->GT:Ljava/util/LinkedList;

    monitor-enter v1

    .line 367
    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GP:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GT:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 368
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GU:Lcom/android/gallery3d/ui/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/c;->enable()V

    .line 370
    :cond_6
    monitor-exit v1

    .line 380
    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/android/gallery3d/ui/GLRootView;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GP:Z

    return v0
.end method

.method static synthetic c(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GV:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic d(Lcom/android/gallery3d/ui/GLRootView;)Lcom/android/gallery3d/ui/cp;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GM:Lcom/android/gallery3d/ui/cp;

    return-object v0
.end method

.method private gb()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 199
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 200
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getWidth()I

    move-result v0

    .line 201
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getHeight()I

    move-result v1

    .line 202
    const-string v2, "GLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layout content pane "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/y;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->GN:Lcom/android/gallery3d/ui/am;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 204
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->GN:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v2, v5, v5, v0, v1}, Lcom/android/gallery3d/ui/am;->layout(IIII)V

    .line 208
    :cond_0
    return-void
.end method

.method private gc()V
    .locals 8

    .prologue
    .line 296
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 297
    iget-wide v2, p0, Lcom/android/gallery3d/ui/GLRootView;->GG:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 298
    iput-wide v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GG:J

    .line 305
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GF:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GF:I

    .line 306
    return-void

    .line 299
    :cond_1
    iget-wide v2, p0, Lcom/android/gallery3d/ui/GLRootView;->GG:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 300
    const-string v2, "GLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/ui/GLRootView;->GF:I

    int-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/gallery3d/ui/GLRootView;->GG:J

    sub-long v6, v0, v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/y;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iput-wide v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GG:J

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GF:I

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/ey;)V
    .locals 2
    .parameter

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->GT:Ljava/util/LinkedList;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GT:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GU:Lcom/android/gallery3d/ui/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/c;->enable()V

    .line 140
    monitor-exit v1

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/android/gallery3d/d/c;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 385
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    if-ne v2, v1, :cond_4

    .line 387
    :cond_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GY:Z

    .line 391
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->GV:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 394
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->GN:Lcom/android/gallery3d/ui/am;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->GN:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/ui/am;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 396
    :cond_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 397
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/GLRootView;->GY:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->GV:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return v0

    .line 388
    :cond_4
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/GLRootView;->GY:Z

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->GV:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public fW()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GV:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GN:Lcom/android/gallery3d/ui/am;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GV:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 196
    :goto_0
    return-void

    .line 189
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GV:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 191
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 192
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GV:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->GV:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public fX()Z
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getEGLConfigChooser()Lcom/android/gallery3d/ui/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bp;->dN()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fY()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GV:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 454
    return-void
.end method

.method public fZ()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GV:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 459
    return-void
.end method

.method public getCanvas()Lcom/android/gallery3d/ui/b;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GM:Lcom/android/gallery3d/ui/cp;

    return-object v0
.end method

.method public getContentPane()Lcom/android/gallery3d/ui/am;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GN:Lcom/android/gallery3d/ui/am;

    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GO:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GO:Landroid/util/DisplayMetrics;

    .line 408
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->GO:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GO:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getEGLConfigChooser()Lcom/android/gallery3d/ui/bp;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GR:Lcom/android/gallery3d/ui/bp;

    return-object v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 310
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GV:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 312
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLRootView;->a(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GV:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 316
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 318
    iget-wide v2, p0, Lcom/android/gallery3d/ui/GLRootView;->GX:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 319
    iget-wide v2, p0, Lcom/android/gallery3d/ui/GLRootView;->GX:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    sub-long v0, v2, v0

    .line 320
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 321
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 324
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GX:J

    .line 325
    return-void

    .line 314
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->GV:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->fW()V

    .line 214
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 243
    const-string v0, "GLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gl10: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/y;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 266
    invoke-static {}, Lcom/android/gallery3d/b/y;->fL()V

    .line 267
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .line 268
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->ya:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 270
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GM:Lcom/android/gallery3d/ui/cp;

    invoke-virtual {v0, p2, p3}, Lcom/android/gallery3d/ui/cp;->setSize(II)V

    .line 272
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->yi:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 273
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GQ:I

    .line 274
    return-void

    :cond_0
    move v0, v1

    .line 268
    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 222
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .line 223
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->ya:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "GLRootView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLObject has changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->ya:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLRootView;->ya:Ljavax/microedition/khronos/opengles/GL11;

    .line 228
    new-instance v0, Lcom/android/gallery3d/ui/cp;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/cp;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GM:Lcom/android/gallery3d/ui/cp;

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLRootView;->setRenderMode(I)V

    .line 234
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GP:Z

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GP:Z

    .line 178
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method public setContentPane(Lcom/android/gallery3d/ui/am;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GN:Lcom/android/gallery3d/ui/am;

    if-ne v0, p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GN:Lcom/android/gallery3d/ui/am;

    if-eqz v0, :cond_3

    .line 147
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GY:Z

    if-eqz v0, :cond_2

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 149
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->GN:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/am;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 152
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 153
    iput-boolean v7, p0, Lcom/android/gallery3d/ui/GLRootView;->GY:Z

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->GN:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/am;->cw()V

    .line 156
    invoke-static {}, Lcom/android/gallery3d/ui/ah;->cg()V

    .line 158
    :cond_3
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLRootView;->GN:Lcom/android/gallery3d/ui/am;

    .line 159
    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/ui/am;->a(Lcom/android/gallery3d/ui/eh;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->fW()V

    goto :goto_0
.end method
