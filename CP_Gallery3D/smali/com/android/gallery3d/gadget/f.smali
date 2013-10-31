.class public Lcom/android/gallery3d/gadget/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/an;
.implements Lcom/android/gallery3d/gadget/l;


# static fields
.field private static final CACHE_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "MediaSetSource"


# instance fields
.field private Ci:[Lcom/android/gallery3d/a/ax;

.field private Cj:I

.field private Ck:I

.field private ab:Lcom/android/gallery3d/a/r;

.field private ad:J

.field private kk:Lcom/android/gallery3d/a/an;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/r;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/android/gallery3d/a/ax;

    iput-object v0, p0, Lcom/android/gallery3d/gadget/f;->Ci:[Lcom/android/gallery3d/a/ax;

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/gadget/f;->ad:J

    .line 46
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/r;

    iput-object v0, p0, Lcom/android/gallery3d/gadget/f;->ab:Lcom/android/gallery3d/a/r;

    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/gadget/f;->ab:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/an;)V

    .line 48
    return-void
.end method

.method private aS(I)V
    .locals 5
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/android/gallery3d/gadget/f;->Cj:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/gadget/f;->Ck:I

    if-ge p1, v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 60
    :try_start_0
    iput p1, p0, Lcom/android/gallery3d/gadget/f;->Cj:I

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/gadget/f;->ab:Lcom/android/gallery3d/a/r;

    iget v3, p0, Lcom/android/gallery3d/gadget/f;->Cj:I

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/a/r;->j(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 62
    iget v3, p0, Lcom/android/gallery3d/gadget/f;->Cj:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/gadget/f;->Ck:I

    .line 63
    iget-object v3, p0, Lcom/android/gallery3d/gadget/f;->Ci:[Lcom/android/gallery3d/a/ax;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized V(I)Landroid/net/Uri;
    .locals 2
    .parameter

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/gadget/f;->aS(I)V

    .line 72
    iget v0, p0, Lcom/android/gallery3d/gadget/f;->Cj:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/gadget/f;->Ck:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/gadget/f;->Ci:[Lcom/android/gallery3d/a/ax;

    iget v1, p0, Lcom/android/gallery3d/gadget/f;->Cj:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->ap()Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized W(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/gadget/f;->aS(I)V

    .line 79
    iget v0, p0, Lcom/android/gallery3d/gadget/f;->Cj:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/gadget/f;->Ck:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/gadget/f;->Ci:[Lcom/android/gallery3d/a/ax;

    iget v1, p0, Lcom/android/gallery3d/gadget/f;->Cj:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/gallery3d/gadget/j;->f(Lcom/android/gallery3d/a/ax;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public aW()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/gadget/f;->kk:Lcom/android/gallery3d/a/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/gadget/f;->kk:Lcom/android/gallery3d/a/an;

    invoke-interface {v0}, Lcom/android/gallery3d/a/an;->aW()V

    .line 112
    :cond_0
    return-void
.end method

.method public c(Lcom/android/gallery3d/a/an;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/gallery3d/gadget/f;->kk:Lcom/android/gallery3d/a/an;

    .line 97
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/gadget/f;->ab:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/a/r;->b(Lcom/android/gallery3d/a/an;)V

    .line 53
    return-void
.end method

.method public reload()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/gadget/f;->ab:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aT()J

    move-result-wide v0

    .line 86
    iget-wide v2, p0, Lcom/android/gallery3d/gadget/f;->ad:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 87
    iput-wide v0, p0, Lcom/android/gallery3d/gadget/f;->ad:J

    .line 88
    iput v4, p0, Lcom/android/gallery3d/gadget/f;->Cj:I

    .line 89
    iput v4, p0, Lcom/android/gallery3d/gadget/f;->Ck:I

    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/gadget/f;->Ci:[Lcom/android/gallery3d/a/ax;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    :cond_0
    return-void
.end method

.method public size()I
    .locals 3

    .prologue
    .line 101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/gadget/f;->ab:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aN()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 105
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
