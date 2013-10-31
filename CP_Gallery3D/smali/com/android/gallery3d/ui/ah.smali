.class abstract Lcom/android/gallery3d/ui/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/ar;


# static fields
.field protected static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BasicTexture"

.field protected static final UNSPECIFIED:I = -0x1

.field protected static final jU:I = 0x0

.field protected static final jV:I = 0x1

.field private static ka:Ljava/util/WeakHashMap;

.field private static kb:Ljava/lang/ThreadLocal;


# instance fields
.field private jW:I

.field private jX:I

.field private jY:Z

.field protected jZ:Ljava/lang/ref/WeakReference;

.field protected mHeight:I

.field protected mId:I

.field protected mState:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/ah;->ka:Ljava/util/WeakHashMap;

    .line 51
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/ah;->kb:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/gallery3d/ui/ah;-><init>(Lcom/android/gallery3d/ui/b;II)V

    .line 64
    return-void
.end method

.method protected constructor <init>(Lcom/android/gallery3d/ui/b;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/android/gallery3d/ui/ah;->mWidth:I

    .line 41
    iput v0, p0, Lcom/android/gallery3d/ui/ah;->mHeight:I

    .line 48
    iput-object v1, p0, Lcom/android/gallery3d/ui/ah;->jZ:Ljava/lang/ref/WeakReference;

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/ah;->g(Lcom/android/gallery3d/ui/b;)V

    .line 55
    iput p2, p0, Lcom/android/gallery3d/ui/ah;->mId:I

    .line 56
    iput p3, p0, Lcom/android/gallery3d/ui/ah;->mState:I

    .line 57
    sget-object v1, Lcom/android/gallery3d/ui/ah;->ka:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/ui/ah;->ka:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ce()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/android/gallery3d/ui/ah;->jZ:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 157
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/ah;->h(Lcom/android/gallery3d/ui/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-interface {v0, p0}, Lcom/android/gallery3d/ui/b;->a(Lcom/android/gallery3d/ui/ah;)Z

    .line 160
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/ah;->mState:I

    .line 161
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/ah;->g(Lcom/android/gallery3d/ui/b;)V

    .line 162
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ah;->jZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/b;

    goto :goto_0
.end method

.method public static cf()Z
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/android/gallery3d/ui/ah;->kb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cg()V
    .locals 3

    .prologue
    .line 179
    sget-object v1, Lcom/android/gallery3d/ui/ah;->ka:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 180
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/ui/ah;->ka:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ah;

    .line 181
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ah;->yield()V

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/b;IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/b;->a(Lcom/android/gallery3d/ui/ah;IIII)V

    .line 130
    return-void
.end method

.method public b(Lcom/android/gallery3d/ui/b;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ah;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ah;->getHeight()I

    move-result v5

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/gallery3d/ui/b;->a(Lcom/android/gallery3d/ui/ah;IIII)V

    .line 126
    return-void
.end method

.method public cb()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/gallery3d/ui/ah;->jW:I

    return v0
.end method

.method public cc()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/gallery3d/ui/ah;->jX:I

    return v0
.end method

.method public cd()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ah;->jY:Z

    return v0
.end method

.method protected abstract f(Lcom/android/gallery3d/ui/b;)Z
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 166
    sget-object v0, Lcom/android/gallery3d/ui/ah;->kb:Ljava/lang/ThreadLocal;

    const-class v1, Lcom/android/gallery3d/ui/ah;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ah;->recycle()V

    .line 168
    sget-object v0, Lcom/android/gallery3d/ui/ah;->kb:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method protected g(Lcom/android/gallery3d/ui/b;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/ui/ah;->jZ:Ljava/lang/ref/WeakReference;

    .line 70
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected g(Z)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/ah;->jY:Z

    .line 122
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/gallery3d/ui/ah;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/gallery3d/ui/ah;->mId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/gallery3d/ui/ah;->mWidth:I

    return v0
.end method

.method public h(Lcom/android/gallery3d/ui/b;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 137
    iget v1, p0, Lcom/android/gallery3d/ui/ah;->mState:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/ah;->jZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ah;->ce()V

    .line 144
    return-void
.end method

.method protected setSize(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    iput p1, p0, Lcom/android/gallery3d/ui/ah;->mWidth:I

    .line 78
    iput p2, p0, Lcom/android/gallery3d/ui/ah;->mHeight:I

    .line 79
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/ah;->jW:I

    .line 80
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/ah;->jX:I

    .line 81
    return-void
.end method

.method public yield()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/gallery3d/ui/ah;->ce()V

    .line 153
    return-void
.end method
