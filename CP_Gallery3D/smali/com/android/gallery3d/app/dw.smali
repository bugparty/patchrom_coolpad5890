.class public Lcom/android/gallery3d/app/dw;
.super Lcom/android/gallery3d/app/w;
.source "SourceFile"


# static fields
.field public static final ET:Ljava/lang/String; = "media-set-path"

.field public static final EU:Ljava/lang/String; = "media-item-path"

.field public static final EV:Ljava/lang/String; = "photo-index"

.field public static final EW:Ljava/lang/String; = "random-order"

.field public static final EX:Ljava/lang/String; = "repeat"

.field public static EY:Z = false

.field private static final EZ:J = 0xbb8L

.field private static final Fa:I = 0x1

.field private static final Fb:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SlideshowPage"


# instance fields
.field private Fc:Lcom/android/gallery3d/app/r;

.field private Fd:Lcom/android/gallery3d/ui/bg;

.field private Fe:Lcom/android/gallery3d/app/ck;

.field private af:Z

.field private final iX:Lcom/android/gallery3d/ui/am;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final vZ:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/app/dw;->EY:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/app/w;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/dw;->Fe:Lcom/android/gallery3d/app/ck;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/dw;->af:Z

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/dw;->vZ:Landroid/content/Intent;

    .line 92
    new-instance v0, Lcom/android/gallery3d/app/t;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/t;-><init>(Lcom/android/gallery3d/app/dw;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/dw;->iX:Lcom/android/gallery3d/ui/am;

    .line 340
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/dw;Lcom/android/gallery3d/app/ck;)Lcom/android/gallery3d/app/ck;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/gallery3d/app/dw;->Fe:Lcom/android/gallery3d/app/ck;

    return-object p1
.end method

.method static synthetic a(Lcom/android/gallery3d/app/dw;)Lcom/android/gallery3d/ui/bg;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/app/dw;->Fd:Lcom/android/gallery3d/ui/bg;

    return-object v0
.end method

.method private static b(Lcom/android/gallery3d/a/r;I)Lcom/android/gallery3d/a/ax;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/android/gallery3d/a/r;->aP()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    .line 263
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/a/r;->A(I)Lcom/android/gallery3d/a/r;

    move-result-object v3

    .line 264
    invoke-virtual {v3}, Lcom/android/gallery3d/a/r;->aR()I

    move-result v4

    .line 265
    if-ge p1, v4, :cond_0

    .line 266
    invoke-static {v3, p1}, Lcom/android/gallery3d/app/dw;->b(Lcom/android/gallery3d/a/r;I)Lcom/android/gallery3d/a/ax;

    move-result-object v0

    .line 271
    :goto_1
    return-object v0

    .line 268
    :cond_0
    sub-int/2addr p1, v4

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/a/r;->j(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/ax;

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/gallery3d/app/dw;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/app/dw;->fU()V

    return-void
.end method

.method private bG()V
    .locals 2

    .prologue
    .line 256
    new-instance v0, Lcom/android/gallery3d/ui/bg;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/bg;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/dw;->Fd:Lcom/android/gallery3d/ui/bg;

    .line 257
    iget-object v0, p0, Lcom/android/gallery3d/app/dw;->iX:Lcom/android/gallery3d/ui/am;

    iget-object v1, p0, Lcom/android/gallery3d/app/dw;->Fd:Lcom/android/gallery3d/ui/bg;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/am;->a(Lcom/android/gallery3d/ui/am;)V

    .line 258
    iget-object v0, p0, Lcom/android/gallery3d/app/dw;->iX:Lcom/android/gallery3d/ui/am;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/dw;->setContentPane(Lcom/android/gallery3d/ui/am;)V

    .line 259
    return-void
.end method

.method static synthetic c(Lcom/android/gallery3d/a/r;I)Lcom/android/gallery3d/a/ax;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/android/gallery3d/app/dw;->b(Lcom/android/gallery3d/a/r;I)Lcom/android/gallery3d/a/ax;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/android/gallery3d/app/dw;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/gallery3d/app/dw;->fT()V

    return-void
.end method

.method static synthetic d(Lcom/android/gallery3d/app/dw;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/gallery3d/app/dw;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 231
    const-string v1, "random-order"

    invoke-virtual {p1, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 234
    const-string v2, "media-set-path"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/ar;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 236
    iget-object v3, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v3}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/a/ao;->p(Ljava/lang/String;)Lcom/android/gallery3d/a/r;

    move-result-object v2

    .line 238
    if-eqz v1, :cond_0

    .line 239
    const-string v1, "repeat"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 240
    new-instance v3, Lcom/android/gallery3d/app/eg;

    iget-object v4, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    new-instance v5, Lcom/android/gallery3d/app/aq;

    invoke-direct {v5, v2, v1}, Lcom/android/gallery3d/app/aq;-><init>(Lcom/android/gallery3d/a/r;Z)V

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/android/gallery3d/app/eg;-><init>(Lcom/android/gallery3d/app/bh;Lcom/android/gallery3d/app/bv;ILcom/android/gallery3d/a/dd;)V

    iput-object v3, p0, Lcom/android/gallery3d/app/dw;->Fc:Lcom/android/gallery3d/app/r;

    .line 242
    iget-object v0, p0, Lcom/android/gallery3d/app/dw;->vZ:Landroid/content/Intent;

    const-string v1, "photo-index"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/android/gallery3d/app/dw;->a(ILandroid/content/Intent;)V

    .line 252
    :goto_0
    return-void

    .line 244
    :cond_0
    const-string v1, "photo-index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 245
    const-string v3, "media-item-path"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    .line 247
    :cond_1
    const-string v3, "repeat"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 248
    new-instance v4, Lcom/android/gallery3d/app/eg;

    iget-object v5, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    new-instance v6, Lcom/android/gallery3d/app/ei;

    invoke-direct {v6, v2, v3}, Lcom/android/gallery3d/app/ei;-><init>(Lcom/android/gallery3d/a/r;Z)V

    invoke-direct {v4, v5, v6, v1, v0}, Lcom/android/gallery3d/app/eg;-><init>(Lcom/android/gallery3d/app/bh;Lcom/android/gallery3d/app/bv;ILcom/android/gallery3d/a/dd;)V

    iput-object v4, p0, Lcom/android/gallery3d/app/dw;->Fc:Lcom/android/gallery3d/app/r;

    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/app/dw;->vZ:Landroid/content/Intent;

    const-string v2, "photo-index"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/android/gallery3d/app/dw;->a(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private fT()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/gallery3d/app/dw;->Fc:Lcom/android/gallery3d/app/r;

    new-instance v1, Lcom/android/gallery3d/app/m;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/m;-><init>(Lcom/android/gallery3d/app/dw;)V

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/r;->a(Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    .line 182
    return-void
.end method

.method private fU()V
    .locals 5

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/app/dw;->Fe:Lcom/android/gallery3d/app/ck;

    .line 189
    if-nez v0, :cond_1

    .line 190
    iget-boolean v0, p0, Lcom/android/gallery3d/app/dw;->af:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/k;->a(Lcom/android/gallery3d/app/w;)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/dw;->Fd:Lcom/android/gallery3d/ui/bg;

    iget-object v2, v0, Lcom/android/gallery3d/app/ck;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/android/gallery3d/app/ck;->yF:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v3}, Lcom/android/gallery3d/a/ax;->getRotation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/bg;->a(Landroid/graphics/Bitmap;I)V

    .line 198
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/gallery3d/app/dw;->vZ:Landroid/content/Intent;

    const-string v3, "media-item-path"

    iget-object v4, v0, Lcom/android/gallery3d/app/ck;->yF:Lcom/android/gallery3d/a/ax;

    invoke-virtual {v4}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "photo-index"

    iget v0, v0, Lcom/android/gallery3d/app/ck;->index:I

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/dw;->a(ILandroid/content/Intent;)V

    .line 201
    iget-object v0, p0, Lcom/android/gallery3d/app/dw;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 150
    iget v0, p0, Lcom/android/gallery3d/app/w;->mFlags:I

    or-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/app/w;->mFlags:I

    .line 151
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/w;->ev:I

    .line 152
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 154
    const/16 v1, 0xa

    const-string v2, "SlideshowPage"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/dw;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 156
    new-instance v0, Lcom/android/gallery3d/app/s;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/s;-><init>(Lcom/android/gallery3d/app/dw;Lcom/android/gallery3d/ui/eh;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/dw;->mHandler:Landroid/os/Handler;

    .line 170
    invoke-direct {p0}, Lcom/android/gallery3d/app/dw;->bG()V

    .line 171
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/dw;->d(Landroid/os/Bundle;)V

    .line 172
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Lcom/android/gallery3d/app/w;->onPause()V

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/dw;->af:Z

    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/app/dw;->Fc:Lcom/android/gallery3d/app/r;

    invoke-interface {v0}, Lcom/android/gallery3d/app/r;->pause()V

    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/app/dw;->Fd:Lcom/android/gallery3d/ui/bg;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bg;->release()V

    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/app/dw;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/app/dw;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/app/dw;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Lcom/android/gallery3d/app/w;->onResume()V

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/dw;->af:Z

    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/app/dw;->Fc:Lcom/android/gallery3d/app/r;

    invoke-interface {v0}, Lcom/android/gallery3d/app/r;->resume()V

    .line 221
    iget-object v0, p0, Lcom/android/gallery3d/app/dw;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 222
    iget-object v0, p0, Lcom/android/gallery3d/app/dw;->Fe:Lcom/android/gallery3d/app/ck;

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/android/gallery3d/app/dw;->fU()V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/dw;->fT()V

    goto :goto_0
.end method
