.class public Lcom/android/gallery3d/app/cd;
.super Lcom/android/gallery3d/ui/bl;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/app/dt;


# static fields
.field private static final TAG:Ljava/lang/String; = "SinglePhotoDataAdapter"

.field private static final wp:I = 0x400

.field private static final wq:I = 0x1


# instance fields
.field private Z:Lcom/android/gallery3d/b/n;

.field private aa:Lcom/android/gallery3d/ui/ap;

.field private ah:Lcom/android/gallery3d/a/ax;

.field private ai:Lcom/android/gallery3d/b/l;

.field private mHandler:Landroid/os/Handler;

.field private wr:Z

.field private ws:Lcom/android/gallery3d/b/u;

.field private wt:Lcom/android/gallery3d/b/u;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/ap;Lcom/android/gallery3d/a/ax;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/gallery3d/ui/bl;-><init>()V

    .line 85
    new-instance v0, Lcom/android/gallery3d/app/ef;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/ef;-><init>(Lcom/android/gallery3d/app/cd;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/cd;->ws:Lcom/android/gallery3d/b/u;

    .line 101
    new-instance v0, Lcom/android/gallery3d/app/ec;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/ec;-><init>(Lcom/android/gallery3d/app/cd;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/cd;->wt:Lcom/android/gallery3d/b/u;

    .line 55
    const-string v0, "SinglePhotoDataAdapter"

    const-string v1, "enter SinglePhotoDataAdapter <<<<<<<<<<<<<<<<<<<<!"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/bw;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    iput-object v0, p0, Lcom/android/gallery3d/app/cd;->ah:Lcom/android/gallery3d/a/ax;

    .line 57
    invoke-virtual {p3}, Lcom/android/gallery3d/a/ax;->am()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/cd;->wr:Z

    .line 59
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ap;

    iput-object v0, p0, Lcom/android/gallery3d/app/cd;->aa:Lcom/android/gallery3d/ui/ap;

    .line 60
    new-instance v0, Lcom/android/gallery3d/app/ed;

    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/ed;-><init>(Lcom/android/gallery3d/app/cd;Lcom/android/gallery3d/ui/eh;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/cd;->mHandler:Landroid/os/Handler;

    .line 72
    invoke-interface {p1}, Lcom/android/gallery3d/app/bm;->dw()Lcom/android/gallery3d/b/n;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/cd;->Z:Lcom/android/gallery3d/b/n;

    .line 73
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/android/gallery3d/app/bu;)V
    .locals 3
    .parameter

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p1, Lcom/android/gallery3d/app/bu;->tL:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/android/gallery3d/app/bu;->tK:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/android/gallery3d/app/bu;->tK:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/gallery3d/app/cd;->a(Landroid/graphics/Bitmap;II)V

    .line 121
    iget-object v0, p1, Lcom/android/gallery3d/app/bu;->tK:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/cd;->b(Landroid/graphics/BitmapRegionDecoder;)V

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/app/cd;->aa:Lcom/android/gallery3d/ui/ap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ap;->ad(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const-string v1, "SinglePhotoDataAdapter"

    const-string v2, "fail to decode large"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/app/bw;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/gallery3d/app/cd;Lcom/android/gallery3d/app/bu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/cd;->a(Lcom/android/gallery3d/app/bu;)V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/cd;Lcom/android/gallery3d/b/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/cd;->b(Lcom/android/gallery3d/b/l;)V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/cd;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/gallery3d/app/cd;->wr:Z

    return v0
.end method

.method static synthetic b(Lcom/android/gallery3d/app/cd;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/app/cd;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Lcom/android/gallery3d/b/l;)V
    .locals 3
    .parameter

    .prologue
    .line 130
    :try_start_0
    invoke-interface {p1}, Lcom/android/gallery3d/b/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 131
    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/gallery3d/app/cd;->a(Landroid/graphics/Bitmap;II)V

    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/app/cd;->aa:Lcom/android/gallery3d/ui/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ap;->cO()V

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/app/cd;->aa:Lcom/android/gallery3d/ui/ap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ap;->ad(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    const-string v1, "SinglePhotoDataAdapter"

    const-string v2, "fail to decode thumb"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/app/bw;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/dd;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 200
    return-void
.end method

.method public e()Lcom/android/gallery3d/ui/au;
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lcom/android/gallery3d/ui/au;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(I)V
    .locals 1
    .parameter

    .prologue
    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 171
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/gallery3d/app/cd;->ah:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->getRotation()I

    move-result v0

    return v0
.end method

.method public o()[Lcom/android/gallery3d/a/ax;
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Lcom/android/gallery3d/a/ax;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/app/cd;->ah:Lcom/android/gallery3d/a/ax;

    return-object v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/gallery3d/app/cd;->ai:Lcom/android/gallery3d/b/l;

    .line 155
    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 156
    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->N()V

    .line 157
    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/cd;->ai:Lcom/android/gallery3d/b/l;

    .line 160
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/app/cd;->ai:Lcom/android/gallery3d/b/l;

    if-nez v0, :cond_0

    .line 142
    iget-boolean v0, p0, Lcom/android/gallery3d/app/cd;->wr:Z

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/gallery3d/app/cd;->Z:Lcom/android/gallery3d/b/n;

    iget-object v1, p0, Lcom/android/gallery3d/app/cd;->ah:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/ax;->al()Lcom/android/gallery3d/b/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/cd;->ws:Lcom/android/gallery3d/b/u;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/cd;->ai:Lcom/android/gallery3d/b/l;

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/cd;->Z:Lcom/android/gallery3d/b/n;

    iget-object v1, p0, Lcom/android/gallery3d/app/cd;->ah:Lcom/android/gallery3d/a/ax;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/a/ax;->r(I)Lcom/android/gallery3d/b/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/cd;->wt:Lcom/android/gallery3d/b/u;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/cd;->ai:Lcom/android/gallery3d/b/l;

    goto :goto_0
.end method
