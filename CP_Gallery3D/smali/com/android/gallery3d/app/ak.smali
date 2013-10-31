.class public Lcom/android/gallery3d/app/ak;
.super Lcom/android/gallery3d/app/w;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/da;
.implements Lcom/android/gallery3d/app/cf;
.implements Lcom/android/gallery3d/app/ch;
.implements Lcom/android/gallery3d/ui/ba;


# static fields
.field private static final J:I = 0x100

.field private static final TAG:Ljava/lang/String; = "AlbumSetPage"

.field public static hG:Z = false

.field public static final it:Ljava/lang/String; = "media-path"

.field public static final iu:Ljava/lang/String; = "set-title"

.field public static final iv:Ljava/lang/String; = "set-subtitle"

.field public static final iw:Ljava/lang/String; = "selected-cluster"

.field private static final ix:I = 0x1

.field private static final iy:I = 0x1

.field private static final iz:I = 0x2


# instance fields
.field private af:Z

.field el:I

.field private iA:Lcom/android/gallery3d/ui/ef;

.field private iB:Lcom/android/gallery3d/ui/eo;

.field private iC:Lcom/android/gallery3d/a/r;

.field private iD:Ljava/lang/String;

.field private iE:Z

.field private iF:I

.field protected iG:Lcom/android/gallery3d/ui/ev;

.field private iH:Lcom/android/gallery3d/app/dq;

.field private iI:Lcom/android/gallery3d/ui/be;

.field private iJ:Lcom/android/gallery3d/ui/ca;

.field private iK:Z

.field private iL:Z

.field private iM:Landroid/view/ActionMode;

.field private iN:Lcom/android/gallery3d/ui/bd;

.field private iO:Lcom/android/gallery3d/ui/cd;

.field private iP:Lcom/android/gallery3d/app/ah;

.field private iQ:Z

.field private iR:Lcom/android/gallery3d/app/bz;

.field private iS:F

.field private iT:Lcom/android/gallery3d/b/l;

.field private iU:I

.field private iV:Z

.field public iW:I

.field private final iX:Lcom/android/gallery3d/ui/am;

.field private mTitle:Ljava/lang/String;

.field private mVibrator:Landroid/os/Vibrator;

.field private mX:F

.field private mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/app/ak;->hG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/w;-><init>()V

    .line 88
    iput-boolean v1, p0, Lcom/android/gallery3d/app/ak;->af:Z

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/ak;->iT:Lcom/android/gallery3d/b/l;

    .line 123
    iput v1, p0, Lcom/android/gallery3d/app/ak;->iU:I

    .line 124
    iput-boolean v1, p0, Lcom/android/gallery3d/app/ak;->iV:Z

    .line 129
    iput v1, p0, Lcom/android/gallery3d/app/ak;->iW:I

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/ak;->el:I

    .line 133
    new-instance v0, Lcom/android/gallery3d/app/bl;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/bl;-><init>(Lcom/android/gallery3d/app/ak;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ak;->iX:Lcom/android/gallery3d/ui/am;

    .line 799
    return-void
.end method

.method private P(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 374
    iget v0, p0, Lcom/android/gallery3d/app/ak;->iU:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/ak;->iU:I

    .line 375
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.gallery3d.app.GalleryForVideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 377
    iget v0, p0, Lcom/android/gallery3d/app/ak;->iU:I

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/android/gallery3d/b/y;->a(Landroid/app/Activity;Z)V

    .line 382
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iH:Lcom/android/gallery3d/app/dq;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/dq;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 384
    if-nez v1, :cond_1

    .line 385
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0d0070

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 391
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/k;->getStateCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/k;->a(Lcom/android/gallery3d/app/w;)V

    .line 397
    :cond_0
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0d00c9

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private Q(I)V
    .locals 2
    .parameter

    .prologue
    .line 400
    iget v0, p0, Lcom/android/gallery3d/app/ak;->iU:I

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/b/y;->a(Landroid/app/Activity;Z)V

    .line 403
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/ak;->iU:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/app/ak;->iU:I

    .line 404
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/ui/ef;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iA:Lcom/android/gallery3d/ui/ef;

    return-object v0
.end method

.method private a(I[I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 194
    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iX:Lcom/android/gallery3d/ui/am;

    iget-object v2, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/ui/am;->a(Lcom/android/gallery3d/ui/am;Landroid/graphics/Rect;)Z

    .line 195
    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    iget-object v2, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-static {v2}, Lcom/android/gallery3d/ui/ek;->a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/ek;)V

    .line 196
    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/eo;->C(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/eo;->getScrollX()I

    move-result v2

    .line 198
    iget-object v3, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/eo;->getScrollY()I

    move-result v3

    .line 199
    const/4 v4, 0x0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int v2, v5, v2

    aput v2, p2, v4

    .line 200
    const/4 v2, 0x1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    aput v0, p2, v2

    .line 201
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/ak;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/ak;->s(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/ak;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/gallery3d/app/ak;->iV:Z

    return p1
.end method

.method static synthetic b(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/app/bz;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iR:Lcom/android/gallery3d/app/bz;

    return-object v0
.end method

.method static synthetic b(Lcom/android/gallery3d/app/ak;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/ak;->P(I)V

    return-void
.end method

.method private bG()V
    .locals 5

    .prologue
    .line 461
    new-instance v0, Lcom/android/gallery3d/ui/ev;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ev;-><init>(Lcom/android/gallery3d/app/bh;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ak;->iG:Lcom/android/gallery3d/ui/ev;

    .line 462
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/ev;->a(Lcom/android/gallery3d/ui/ba;)V

    .line 463
    new-instance v0, Lcom/android/gallery3d/ui/ef;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ef;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ak;->iA:Lcom/android/gallery3d/ui/ef;

    .line 464
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iX:Lcom/android/gallery3d/ui/am;

    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iA:Lcom/android/gallery3d/ui/ef;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/am;->a(Lcom/android/gallery3d/ui/am;)V

    .line 466
    new-instance v1, Lcom/android/gallery3d/ui/be;

    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/app/ak;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-direct {v1, v0, v2}, Lcom/android/gallery3d/ui/be;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/ev;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/ak;->iI:Lcom/android/gallery3d/ui/be;

    .line 467
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/gallery3d/app/bi;->g(Landroid/content/Context;)Lcom/android/gallery3d/app/bi;

    move-result-object v0

    .line 468
    new-instance v1, Lcom/android/gallery3d/ui/eo;

    iget-object v2, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    iget-object v3, p0, Lcom/android/gallery3d/app/ak;->iI:Lcom/android/gallery3d/ui/be;

    iget-object v4, v0, Lcom/android/gallery3d/app/bi;->rq:Lcom/android/gallery3d/ui/du;

    iget-object v0, v0, Lcom/android/gallery3d/app/bi;->rr:Lcom/android/gallery3d/ui/di;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/gallery3d/ui/eo;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/u;Lcom/android/gallery3d/ui/du;Lcom/android/gallery3d/ui/di;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    .line 470
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    new-instance v1, Lcom/android/gallery3d/app/br;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/br;-><init>(Lcom/android/gallery3d/app/ak;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/bw;)V

    .line 492
    new-instance v0, Lcom/android/gallery3d/ui/bd;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    iget-object v2, p0, Lcom/android/gallery3d/app/ak;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/bd;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/ev;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ak;->iN:Lcom/android/gallery3d/ui/bd;

    .line 493
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iN:Lcom/android/gallery3d/ui/bd;

    new-instance v1, Lcom/android/gallery3d/app/bq;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/bq;-><init>(Lcom/android/gallery3d/app/ak;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/bd;->a(Lcom/android/gallery3d/ui/aw;)V

    .line 498
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iX:Lcom/android/gallery3d/ui/am;

    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/am;->a(Lcom/android/gallery3d/ui/am;)V

    .line 500
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iA:Lcom/android/gallery3d/ui/ef;

    const v1, 0x7f020002

    const v2, 0x7f020003

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/ef;->E(II)V

    .line 502
    return-void
.end method

.method private bH()V
    .locals 3

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ek;->a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;

    move-result-object v0

    .line 686
    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    new-instance v2, Lcom/android/gallery3d/app/bp;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/app/bp;-><init>(Lcom/android/gallery3d/app/ak;Lcom/android/gallery3d/ui/ek;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/ed;)V

    .line 697
    return-void
.end method

.method private bI()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 700
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dR()Lcom/android/gallery3d/app/ag;

    move-result-object v0

    .line 701
    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ev;->gs()I

    move-result v1

    .line 702
    invoke-virtual {v0}, Lcom/android/gallery3d/app/ag;->bl()I

    move-result v0

    .line 703
    if-ne v0, v6, :cond_0

    const v0, 0x7f0f0001

    .line 706
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v2}, Lcom/android/gallery3d/app/bm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 707
    const-string v2, "AlbumSetPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "String.format(format, count) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 703
    :cond_0
    const v0, 0x7f0f0002

    goto :goto_0
.end method

.method private bJ()V
    .locals 2

    .prologue
    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ak;->iQ:Z

    .line 744
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iO:Lcom/android/gallery3d/ui/cd;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/cd;->hide()V

    .line 745
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iI:Lcom/android/gallery3d/ui/be;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/u;)V

    .line 746
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eo;->invalidate()V

    .line 747
    return-void
.end method

.method private bK()V
    .locals 4

    .prologue
    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ak;->iQ:Z

    .line 751
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iO:Lcom/android/gallery3d/ui/cd;

    if-nez v0, :cond_0

    .line 752
    new-instance v0, Lcom/android/gallery3d/ui/ca;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/ak;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ca;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/ev;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ak;->iJ:Lcom/android/gallery3d/ui/ca;

    .line 754
    new-instance v0, Lcom/android/gallery3d/ui/cd;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    iget-object v2, p0, Lcom/android/gallery3d/app/ak;->iX:Lcom/android/gallery3d/ui/am;

    iget-object v3, p0, Lcom/android/gallery3d/app/ak;->iP:Lcom/android/gallery3d/app/ah;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/cd;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/am;Lcom/android/gallery3d/ui/bt;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ak;->iO:Lcom/android/gallery3d/ui/cd;

    .line 755
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iO:Lcom/android/gallery3d/ui/cd;

    new-instance v1, Lcom/android/gallery3d/app/bo;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/bo;-><init>(Lcom/android/gallery3d/app/ak;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/cd;->a(Lcom/android/gallery3d/ui/ea;)V

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iJ:Lcom/android/gallery3d/ui/ca;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/u;)V

    .line 762
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iO:Lcom/android/gallery3d/ui/cd;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/cd;->show()V

    .line 763
    return-void
.end method

.method private bM()Z
    .locals 2

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 876
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 877
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 878
    if-nez v0, :cond_0

    .line 879
    const/4 v0, 0x0

    .line 883
    :goto_0
    return v0

    .line 881
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/gallery3d/app/ak;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/ak;->Q(I)V

    return-void
.end method

.method static synthetic c(Lcom/android/gallery3d/app/ak;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ak;->iQ:Z

    return v0
.end method

.method static synthetic d(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/ui/cd;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iO:Lcom/android/gallery3d/ui/cd;

    return-object v0
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 451
    const-string v0, "media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/a/ao;->p(Ljava/lang/String;)Lcom/android/gallery3d/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ak;->iC:Lcom/android/gallery3d/a/r;

    .line 453
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iG:Lcom/android/gallery3d/ui/ev;

    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ev;->g(Lcom/android/gallery3d/a/r;)V

    .line 454
    new-instance v0, Lcom/android/gallery3d/app/dq;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    iget-object v2, p0, Lcom/android/gallery3d/app/ak;->iC:Lcom/android/gallery3d/a/r;

    const/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/app/dq;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/a/r;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/ak;->iH:Lcom/android/gallery3d/app/dq;

    .line 456
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iH:Lcom/android/gallery3d/app/dq;

    new-instance v1, Lcom/android/gallery3d/app/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/i;-><init>(Lcom/android/gallery3d/app/ak;Lcom/android/gallery3d/app/bl;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/dq;->a(Lcom/android/gallery3d/app/ad;)V

    .line 457
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iH:Lcom/android/gallery3d/app/dq;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/br;)V

    .line 458
    return-void
.end method

.method static synthetic e(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/ui/be;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iI:Lcom/android/gallery3d/ui/be;

    return-object v0
.end method

.method static synthetic f(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/ui/eo;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    return-object v0
.end method

.method static synthetic g(Lcom/android/gallery3d/app/ak;)F
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/android/gallery3d/app/ak;->mX:F

    return v0
.end method

.method static synthetic h(Lcom/android/gallery3d/app/ak;)F
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/android/gallery3d/app/ak;->mY:F

    return v0
.end method

.method static synthetic i(Lcom/android/gallery3d/app/ak;)F
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/android/gallery3d/app/ak;->iS:F

    return v0
.end method

.method static synthetic j(Lcom/android/gallery3d/app/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/ak;->onUp()V

    return-void
.end method

.method static synthetic k(Lcom/android/gallery3d/app/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/app/ak;->bJ()V

    return-void
.end method

.method static synthetic l(Lcom/android/gallery3d/app/ak;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ak;->af:Z

    return v0
.end method

.method static synthetic m(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/app/dq;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iH:Lcom/android/gallery3d/app/dq;

    return-object v0
.end method

.method static synthetic n(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iC:Lcom/android/gallery3d/a/r;

    return-object v0
.end method

.method static synthetic o(Lcom/android/gallery3d/app/ak;)Lcom/android/gallery3d/ui/ca;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iJ:Lcom/android/gallery3d/ui/ca;

    return-object v0
.end method

.method private onUp()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iG:Lcom/android/gallery3d/ui/ev;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ev;->n(Lcom/android/gallery3d/a/dd;)V

    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eo;->invalidate()V

    .line 272
    return-void
.end method

.method private s(I)V
    .locals 2
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iH:Lcom/android/gallery3d/app/dq;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/dq;->as(I)Lcom/android/gallery3d/a/r;

    move-result-object v0

    .line 264
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ev;->n(Lcom/android/gallery3d/a/dd;)V

    .line 266
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eo;->invalidate()V

    .line 267
    return-void

    .line 264
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public N(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 290
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    const-string v1, "{/combo/{/mtp,/local/image,/local/image/more,/picasa/image}}"

    .line 292
    iget-object v2, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v2}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    const-string v2, "/map/{/combo/{/mtp,/local/image,/local/image/more,/picasa/image}}/maplocation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_0
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/ar;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    const-string v0, "/combo/{/mtp,/local/image,/picasa/image}"

    move-object v1, v0

    .line 299
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ak;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 301
    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/android/gallery3d/app/ak;->bM()Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/content/Context;

    const v3, 0x7f0d00df

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 316
    :cond_1
    const-string v0, "media-path"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v0, "selected-cluster"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-static {v1}, Lcom/android/gallery3d/ui/ek;->a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/ek;)V

    .line 319
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/app/ak;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/gallery3d/app/k;->a(Lcom/android/gallery3d/app/w;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 320
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public O(I)V
    .locals 3
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/ar;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ak;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 326
    const-string v2, "media-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    iget-object v2, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-static {v2}, Lcom/android/gallery3d/ui/ek;->a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/ek;)V

    .line 328
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/ak;

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/gallery3d/app/k;->a(Lcom/android/gallery3d/app/w;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 329
    return-void
.end method

.method public R(I)V
    .locals 3
    .parameter

    .prologue
    .line 713
    packed-switch p1, :pswitch_data_0

    .line 734
    :goto_0
    return-void

    .line 715
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dR()Lcom/android/gallery3d/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/ag;->bm()V

    .line 716
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iN:Lcom/android/gallery3d/ui/bd;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bd;->de()Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ak;->iM:Landroid/view/ActionMode;

    .line 717
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 721
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iM:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 722
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ak;->iE:Z

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dR()Lcom/android/gallery3d/app/ag;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/app/ak;->iF:I

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/app/ag;->a(ILcom/android/gallery3d/app/ch;)V

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iX:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/am;->invalidate()V

    goto :goto_0

    .line 729
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iN:Lcom/android/gallery3d/ui/bd;

    invoke-direct {p0}, Lcom/android/gallery3d/app/ak;->bI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/bd;->setTitle(Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iX:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/am;->invalidate()V

    goto :goto_0

    .line 713
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 354
    invoke-direct {p0}, Lcom/android/gallery3d/app/ak;->bG()V

    .line 355
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/ak;->d(Landroid/os/Bundle;)V

    .line 356
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v0

    .line 357
    const-string v1, "get-content"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/ak;->iK:Z

    .line 358
    const-string v1, "get-album"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/ak;->iL:Z

    .line 359
    const-string v1, "set-title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/ak;->mTitle:Ljava/lang/String;

    .line 360
    const-string v1, "set-subtitle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/ak;->iD:Ljava/lang/String;

    .line 361
    new-instance v1, Lcom/android/gallery3d/app/bz;

    invoke-direct {v1, v0, p0}, Lcom/android/gallery3d/app/bz;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/cf;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/ak;->iR:Lcom/android/gallery3d/app/bz;

    .line 362
    new-instance v1, Lcom/android/gallery3d/app/ah;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/ah;-><init>(Lcom/android/gallery3d/app/ak;Lcom/android/gallery3d/app/bl;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/ak;->iP:Lcom/android/gallery3d/app/ah;

    .line 363
    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/gallery3d/app/ak;->mVibrator:Landroid/os/Vibrator;

    .line 364
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dR()Lcom/android/gallery3d/app/ag;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_0

    .line 366
    const-string v0, "selected-cluster"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/ak;->iF:I

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/ak;->bH()V

    .line 370
    return-void
.end method

.method public a(Lcom/android/gallery3d/a/dd;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iM:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 738
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iN:Lcom/android/gallery3d/ui/bd;

    invoke-direct {p0}, Lcom/android/gallery3d/app/ak;->bI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/bd;->setTitle(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iN:Lcom/android/gallery3d/ui/bd;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/bd;->b(Lcom/android/gallery3d/a/dd;Z)V

    .line 740
    return-void

    .line 737
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/android/gallery3d/a/r;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 767
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 768
    const-string v0, "AlbumSetPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/gallery3d/a/r;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/gallery3d/app/bn;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/app/bn;-><init>(Lcom/android/gallery3d/app/ak;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 785
    return-void
.end method

.method public b(FFF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iX:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/am;->cC()V

    .line 171
    iput p1, p0, Lcom/android/gallery3d/app/ak;->mX:F

    .line 172
    iput p2, p0, Lcom/android/gallery3d/app/ak;->mY:F

    .line 173
    iput p3, p0, Lcom/android/gallery3d/app/ak;->iS:F

    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iX:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/am;->cD()V

    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iX:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/am;->invalidate()V

    .line 176
    return-void
.end method

.method protected b(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 676
    packed-switch p1, :pswitch_data_0

    .line 681
    :goto_0
    return-void

    .line 678
    :pswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/ak;->bH()V

    goto :goto_0

    .line 676
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected b(Landroid/view/Menu;)Z
    .locals 12
    .parameter

    .prologue
    const v11, 0x7f10000a

    const v10, 0x7f0d0042

    const v2, 0x7f0d0040

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 506
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 507
    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->dR()Lcom/android/gallery3d/app/ag;

    move-result-object v5

    .line 508
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    .line 510
    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v1

    const-class v7, Lcom/android/gallery3d/app/da;

    invoke-virtual {v1, v7}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;)Z

    move-result v7

    .line 513
    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v8, "com.android.gallery3d.app.GalleryForVideo"

    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    .line 516
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ak;->bL()Z

    move-result v9

    .line 518
    iget-boolean v1, p0, Lcom/android/gallery3d/app/ak;->iK:Z

    if-eqz v1, :cond_2

    .line 519
    invoke-virtual {v6, v11, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 520
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->eu:Landroid/os/Bundle;

    const-string v1, "type-bits"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 522
    const v0, 0x7f0d003f

    .line 523
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_0

    .line 524
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_1

    move v0, v2

    .line 528
    :cond_0
    :goto_0
    invoke-virtual {v5, v0}, Lcom/android/gallery3d/app/ag;->setTitle(I)V

    .line 574
    :goto_1
    return v3

    .line 524
    :cond_1
    const v0, 0x7f0d0041

    goto :goto_0

    .line 529
    :cond_2
    iget-boolean v1, p0, Lcom/android/gallery3d/app/ak;->iL:Z

    if-eqz v1, :cond_3

    .line 530
    invoke-virtual {v6, v11, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 531
    invoke-virtual {v5, v10}, Lcom/android/gallery3d/app/ag;->setTitle(I)V

    goto :goto_1

    .line 533
    :cond_3
    if-nez v7, :cond_7

    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/gallery3d/app/ak;->iE:Z

    .line 535
    if-eqz v8, :cond_8

    if-nez v9, :cond_8

    .line 536
    const v1, 0x7f10000d

    invoke-virtual {v6, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 548
    :cond_4
    :goto_3
    const v1, 0x7f0a0033

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 550
    if-eqz v1, :cond_5

    .line 555
    if-nez v8, :cond_a

    .line 556
    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 566
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v1

    invoke-static {v5, v1, v4}, Lcom/android/gallery3d/app/ar;->a(Lcom/android/gallery3d/app/ag;Lcom/android/gallery3d/a/dd;Z)V

    .line 567
    const v1, 0x7f0a0036

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 568
    if-eqz v1, :cond_6

    .line 569
    invoke-static {v0}, Lcom/android/gallery3d/b/y;->j(Landroid/content/Context;)Z

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 571
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/android/gallery3d/app/ag;->setTitle(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iD:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/android/gallery3d/app/ag;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move v1, v4

    .line 533
    goto :goto_2

    .line 537
    :cond_8
    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    .line 538
    const v1, 0x7f100002

    invoke-virtual {v6, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_3

    .line 540
    :cond_9
    const v1, 0x7f100001

    invoke-virtual {v6, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 541
    const-string v1, "ro.product.model"

    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 542
    if-eqz v1, :cond_4

    .line 543
    const-string v6, "Coolpad 7268"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 544
    const v1, 0x7f0a0035

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 558
    :cond_a
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method public bE()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 332
    invoke-direct {p0}, Lcom/android/gallery3d/app/ak;->bM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    const-string v0, "/map/{/combo/{/mtp,/local/image,/local/image/more,/picasa/image}}/maplocation"

    .line 334
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ak;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 335
    const-string v2, "media-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v0, "show_on_map"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 338
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    iget-object v2, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-static {v2}, Lcom/android/gallery3d/ui/ek;->a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/ek;)V

    .line 339
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/ak;

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/gallery3d/app/k;->a(Lcom/android/gallery3d/app/w;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 345
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0d00df

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public bF()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eo;->invalidate()V

    .line 350
    return-void
.end method

.method public bL()Z
    .locals 2

    .prologue
    .line 865
    const-string v0, "carrier"

    invoke-static {v0}, Lcom/yulong/android/feature/FeatureConfig;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 866
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 580
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 581
    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.android.gallery3d.app.GalleryForVideo"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/gallery3d/app/ak;->hG:Z

    .line 583
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move v2, v3

    .line 670
    :goto_0
    return v2

    .line 587
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ak;->onBackPressed()V

    goto :goto_0

    .line 590
    :sswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/ev;->w(Z)V

    .line 591
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->gq()V

    goto :goto_0

    .line 594
    :sswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iH:Lcom/android/gallery3d/app/dq;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/dq;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 595
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ak;->iQ:Z

    if-eqz v0, :cond_0

    .line 596
    invoke-direct {p0}, Lcom/android/gallery3d/app/ak;->bJ()V

    goto :goto_0

    .line 598
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/ak;->bK()V

    goto :goto_0

    .line 601
    :cond_1
    const v1, 0x7f0d006f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 609
    :sswitch_3
    :try_start_0
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    .line 610
    sget-boolean v3, Lcom/android/gallery3d/app/ak;->hG:Z

    if-eqz v3, :cond_2

    .line 611
    const-string v1, "android.media.action.VIDEO_CAMERA"

    .line 613
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1400

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 616
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    const-string v1, "AlbumSetPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " >>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 619
    :catch_1
    move-exception v0

    .line 620
    const-string v1, "AlbumSetPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " >>>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/y;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 625
    :sswitch_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 628
    sget-boolean v0, Lcom/android/gallery3d/app/ak;->hG:Z

    if-eqz v0, :cond_3

    .line 629
    const/4 v0, 0x2

    .line 633
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v3}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/a/ao;->ai(I)Ljava/lang/String;

    move-result-object v0

    .line 636
    const-string v3, "media-path"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v3, Lcom/android/gallery3d/app/dd;

    invoke-virtual {v0, v3, v1}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 641
    :sswitch_5
    new-instance v1, Landroid/content/Intent;

    const-string v3, "yulong.intent.action.PLAYER_OPEN_URL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 647
    :sswitch_6
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.APN_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 648
    const-string v3, "application"

    const-string v4, "gallery3d"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 653
    :sswitch_7
    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    const-string v5, "file:///mnt/sdcard"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 654
    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    const-string v5, "file:///mnt/sdcard/external_sd"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 655
    invoke-static {v0}, Lcom/android/gallery3d/c/b;->f(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 666
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/gallery3d/app/ak;->bE()V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    .line 583
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0033 -> :sswitch_1
        0x7f0a0035 -> :sswitch_8
        0x7f0a0036 -> :sswitch_3
        0x7f0a0037 -> :sswitch_4
        0x7f0a0038 -> :sswitch_7
        0x7f0a0039 -> :sswitch_5
        0x7f0a003a -> :sswitch_6
        0x7f0a004f -> :sswitch_2
        0x7f0a0055 -> :sswitch_0
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ak;->iQ:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/gallery3d/app/ak;->bJ()V

    .line 190
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->gp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->gr()V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-static {v1}, Lcom/android/gallery3d/ui/ek;->a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/ek;)V

    .line 187
    invoke-super {p0}, Lcom/android/gallery3d/app/w;->onBackPressed()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    .line 888
    .line 890
    :try_start_0
    iget-object v3, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v3}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    if-ne v2, v3, :cond_4

    .line 900
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/ak;->iH:Lcom/android/gallery3d/app/dq;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/dq;->size()I

    move-result v3

    .line 901
    const/16 v4, 0x14

    if-ne p1, v4, :cond_0

    .line 902
    iget v4, p0, Lcom/android/gallery3d/app/ak;->el:I

    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_0

    .line 903
    iget v4, p0, Lcom/android/gallery3d/app/ak;->el:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/gallery3d/app/ak;->el:I

    .line 906
    :cond_0
    const/16 v4, 0x13

    if-ne p1, v4, :cond_1

    .line 907
    iget v4, p0, Lcom/android/gallery3d/app/ak;->el:I

    if-lez v4, :cond_1

    .line 908
    iget v4, p0, Lcom/android/gallery3d/app/ak;->el:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/gallery3d/app/ak;->el:I

    .line 912
    :cond_1
    iget v4, p0, Lcom/android/gallery3d/app/ak;->el:I

    if-eq v4, v6, :cond_2

    const/16 v4, 0x16

    if-ne p1, v4, :cond_2

    .line 913
    iget v4, p0, Lcom/android/gallery3d/app/ak;->el:I

    add-int/2addr v4, v0

    if-ge v4, v3, :cond_2

    .line 914
    iget v4, p0, Lcom/android/gallery3d/app/ak;->el:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/gallery3d/app/ak;->el:I

    .line 918
    :cond_2
    const/16 v4, 0x15

    if-ne p1, v4, :cond_3

    .line 919
    iget v4, p0, Lcom/android/gallery3d/app/ak;->el:I

    sub-int/2addr v4, v0

    if-ltz v4, :cond_3

    .line 920
    iget v4, p0, Lcom/android/gallery3d/app/ak;->el:I

    sub-int v0, v4, v0

    iput v0, p0, Lcom/android/gallery3d/app/ak;->el:I

    .line 923
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 955
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/w;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 895
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 928
    :sswitch_0
    iget v0, p0, Lcom/android/gallery3d/app/ak;->el:I

    if-ne v0, v6, :cond_5

    .line 929
    iput v1, p0, Lcom/android/gallery3d/app/ak;->el:I

    .line 931
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/app/ak;->el:I

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/android/gallery3d/app/ak;->el:I

    if-ge v0, v3, :cond_8

    .line 932
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iH:Lcom/android/gallery3d/app/dq;

    iget v3, p0, Lcom/android/gallery3d/app/ak;->el:I

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/app/dq;->as(I)Lcom/android/gallery3d/a/r;

    move-result-object v0

    .line 933
    iget-object v3, p0, Lcom/android/gallery3d/app/ak;->iH:Lcom/android/gallery3d/app/dq;

    iget v4, p0, Lcom/android/gallery3d/app/ak;->el:I

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/app/dq;->as(I)Lcom/android/gallery3d/a/r;

    move-result-object v3

    .line 934
    if-nez v3, :cond_6

    move v0, v1

    goto :goto_1

    .line 935
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iJ:Lcom/android/gallery3d/ui/ca;

    if-nez v1, :cond_7

    .line 936
    new-instance v1, Lcom/android/gallery3d/ui/ca;

    iget-object v3, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v3}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/ak;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-direct {v1, v3, v4}, Lcom/android/gallery3d/ui/ca;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/ev;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/ak;->iJ:Lcom/android/gallery3d/ui/ca;

    .line 939
    :cond_7
    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    iget-object v3, p0, Lcom/android/gallery3d/app/ak;->iJ:Lcom/android/gallery3d/ui/ca;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/u;)V

    .line 940
    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iJ:Lcom/android/gallery3d/ui/ca;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ca;->p(Lcom/android/gallery3d/a/dd;)V

    .line 941
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    iget v1, p0, Lcom/android/gallery3d/app/ak;->el:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/eo;->bc(I)V

    .line 942
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eo;->invalidate()V

    :cond_8
    move v0, v2

    .line 944
    goto :goto_1

    .line 947
    :sswitch_1
    iget v0, p0, Lcom/android/gallery3d/app/ak;->el:I

    if-ltz v0, :cond_9

    iget v0, p0, Lcom/android/gallery3d/app/ak;->el:I

    if-ge v0, v3, :cond_9

    .line 948
    iget v0, p0, Lcom/android/gallery3d/app/ak;->el:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/ak;->t(I)V

    :cond_9
    move v0, v2

    .line 950
    goto :goto_1

    .line 897
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 923
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 409
    invoke-super {p0}, Lcom/android/gallery3d/app/w;->onPause()V

    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/ak;->af:Z

    .line 411
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iN:Lcom/android/gallery3d/ui/bd;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bd;->pause()V

    .line 412
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iH:Lcom/android/gallery3d/app/dq;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/dq;->pause()V

    .line 413
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eo;->pause()V

    .line 414
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iR:Lcom/android/gallery3d/app/bz;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/bz;->pause()V

    .line 415
    invoke-static {}, Lcom/android/gallery3d/ui/cd;->pause()V

    .line 416
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dR()Lcom/android/gallery3d/app/ag;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/ag;->bm()V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iT:Lcom/android/gallery3d/b/l;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iT:Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/ak;->iT:Lcom/android/gallery3d/b/l;

    .line 421
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/ak;->P(I)V

    .line 424
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 428
    invoke-super {p0}, Lcom/android/gallery3d/app/w;->onResume()V

    .line 429
    iput-boolean v1, p0, Lcom/android/gallery3d/app/ak;->af:Z

    .line 430
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iX:Lcom/android/gallery3d/ui/am;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/ak;->setContentPane(Lcom/android/gallery3d/ui/am;)V

    .line 433
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/ak;->Q(I)V

    .line 434
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iH:Lcom/android/gallery3d/app/dq;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/dq;->resume()V

    .line 436
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eo;->resume()V

    .line 437
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iR:Lcom/android/gallery3d/app/bz;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/bz;->resume()V

    .line 438
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iN:Lcom/android/gallery3d/ui/bd;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bd;->resume()V

    .line 439
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dR()Lcom/android/gallery3d/app/ag;

    move-result-object v0

    .line 440
    iget-boolean v1, p0, Lcom/android/gallery3d/app/ak;->iE:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 441
    iget v1, p0, Lcom/android/gallery3d/app/ak;->iF:I

    invoke-virtual {v0, v1, p0}, Lcom/android/gallery3d/app/ag;->a(ILcom/android/gallery3d/app/ch;)V

    .line 443
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ak;->iV:Z

    if-nez v0, :cond_1

    .line 444
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/ak;->Q(I)V

    .line 445
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/da;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/ak;->iT:Lcom/android/gallery3d/b/l;

    .line 447
    :cond_1
    return-void
.end method

.method public t(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x9

    const/4 v1, 0x1

    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iH:Lcom/android/gallery3d/app/dq;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/dq;->as(I)Lcom/android/gallery3d/a/r;

    move-result-object v2

    .line 205
    if-nez v2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ak;->iQ:Z

    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iJ:Lcom/android/gallery3d/ui/ca;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ca;->p(Lcom/android/gallery3d/a/dd;)V

    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iO:Lcom/android/gallery3d/ui/cd;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/cd;->w(I)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->gp()Z

    move-result v0

    if-nez v0, :cond_8

    .line 212
    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ak;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    const-string v4, "/local/image/0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    .line 217
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/ak;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 218
    const-string v2, "type-bits"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 219
    const-string v2, "media-path"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 220
    const-string v2, "type-bits"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    const-string v2, "media-path"

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/a/ao;->ai(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    iget-object v2, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-static {v2}, Lcom/android/gallery3d/ui/ek;->a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/eo;->a(Lcom/android/gallery3d/ui/ek;)V

    .line 224
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/ak;

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 228
    :cond_3
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 229
    invoke-direct {p0, p1, v4}, Lcom/android/gallery3d/app/ak;->a(I[I)V

    .line 230
    const-string v5, "set-center"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 231
    iget-boolean v4, p0, Lcom/android/gallery3d/app/ak;->iL:Z

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->aQ()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 232
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 233
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "album-path"

    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 235
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 236
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 237
    :cond_4
    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->aP()I

    move-result v4

    if-lez v4, :cond_5

    .line 238
    const-string v2, "media-path"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/ak;

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 242
    :cond_5
    iget-boolean v4, p0, Lcom/android/gallery3d/app/ak;->iK:Z

    if-nez v4, :cond_6

    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->am()I

    move-result v2

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_6

    .line 244
    const-string v2, "auto-select-all"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    :cond_6
    const-string v2, "media-path"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/da;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;)Z

    move-result v0

    .line 249
    const-string v2, "cluster-menu"

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/da;

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 249
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 254
    :cond_8
    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/local/image/0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ev;->u(Lcom/android/gallery3d/a/dd;)V

    .line 256
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eo;->invalidate()V

    .line 257
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iP:Lcom/android/gallery3d/app/ah;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/ah;->H(I)I

    goto/16 :goto_0
.end method

.method public u(I)V
    .locals 3
    .parameter

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ak;->iK:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/ak;->iL:Z

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-boolean v0, p0, Lcom/android/gallery3d/app/ak;->iQ:Z

    if-eqz v0, :cond_2

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/ak;->t(I)V

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iH:Lcom/android/gallery3d/app/dq;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/dq;->as(I)Lcom/android/gallery3d/a/r;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v1

    if-lez v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iG:Lcom/android/gallery3d/ui/ev;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ev;->w(Z)V

    .line 283
    iget-object v1, p0, Lcom/android/gallery3d/app/ak;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ev;->u(Lcom/android/gallery3d/a/dd;)V

    .line 284
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iP:Lcom/android/gallery3d/app/ah;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/ah;->H(I)I

    .line 285
    iget-object v0, p0, Lcom/android/gallery3d/app/ak;->iB:Lcom/android/gallery3d/ui/eo;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/eo;->invalidate()V

    goto :goto_0
.end method
