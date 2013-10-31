.class public Lcom/android/gallery3d/app/da;
.super Lcom/android/gallery3d/app/w;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/da;
.implements Lcom/android/gallery3d/app/ch;
.implements Lcom/android/gallery3d/ui/ba;


# static fields
.field public static final AA:Ljava/lang/String; = "set-center"

.field public static final AB:Ljava/lang/String; = "auto-select-all"

.field public static final AC:Ljava/lang/String; = "cluster-menu"

.field private static final AD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AlbumPage"

.field public static final it:Ljava/lang/String; = "media-path"

.field private static final ix:I = 0x3

.field private static final iy:I = 0x1

.field private static final iz:I = 0x2

.field private static final uL:F = 0.3f

.field private static final vM:I = 0x1


# instance fields
.field private AE:Lcom/android/gallery3d/a/dd;

.field private AF:Lcom/android/gallery3d/app/bt;

.field private AG:Z

.field private af:Z

.field el:I

.field private iA:Lcom/android/gallery3d/ui/ef;

.field private iC:Lcom/android/gallery3d/a/r;

.field private iE:Z

.field protected iG:Lcom/android/gallery3d/ui/ev;

.field private iI:Lcom/android/gallery3d/ui/be;

.field private iJ:Lcom/android/gallery3d/ui/ca;

.field private iK:Z

.field private iM:Landroid/view/ActionMode;

.field private iN:Lcom/android/gallery3d/ui/bd;

.field private iO:Lcom/android/gallery3d/ui/cd;

.field private iQ:Z

.field private iT:Lcom/android/gallery3d/b/l;

.field private iU:I

.field private iV:Z

.field private final iX:Lcom/android/gallery3d/ui/am;

.field private mVibrator:Landroid/os/Vibrator;

.field private uO:F

.field private ut:Lcom/android/gallery3d/ui/bf;

.field private uv:Lcom/android/gallery3d/app/aj;

.field private zJ:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/android/gallery3d/app/w;-><init>()V

    .line 91
    iput-boolean v1, p0, Lcom/android/gallery3d/app/da;->af:Z

    .line 108
    iput v1, p0, Lcom/android/gallery3d/app/da;->zJ:I

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/da;->iT:Lcom/android/gallery3d/b/l;

    .line 120
    iput v1, p0, Lcom/android/gallery3d/app/da;->iU:I

    .line 121
    iput-boolean v1, p0, Lcom/android/gallery3d/app/da;->iV:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/gallery3d/app/da;->AG:Z

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/da;->el:I

    .line 126
    new-instance v0, Lcom/android/gallery3d/app/u;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/u;-><init>(Lcom/android/gallery3d/app/da;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/da;->iX:Lcom/android/gallery3d/ui/am;

    .line 748
    return-void
.end method

.method private P(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 715
    iget v0, p0, Lcom/android/gallery3d/app/da;->iU:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/app/da;->iU:I

    .line 716
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

    .line 718
    iget v0, p0, Lcom/android/gallery3d/app/da;->iU:I

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/android/gallery3d/b/y;->a(Landroid/app/Activity;Z)V

    .line 720
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->uv:Lcom/android/gallery3d/app/aj;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/aj;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 721
    if-nez v1, :cond_1

    .line 722
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0d0070

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 728
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/app/k;->a(Lcom/android/gallery3d/app/w;)V

    .line 731
    :cond_0
    return-void

    .line 725
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
    .line 708
    iget v0, p0, Lcom/android/gallery3d/app/da;->iU:I

    if-nez v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/b/y;->a(Landroid/app/Activity;Z)V

    .line 711
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/da;->iU:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/app/da;->iU:I

    .line 712
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/ui/ef;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iA:Lcom/android/gallery3d/ui/ef;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 825
    :try_start_0
    const-string v0, "AlbumPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter playVideo uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 828
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_0
    return-void

    .line 830
    :catch_0
    move-exception v0

    .line 831
    const v0, 0x7f0d005c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/gallery3d/app/da;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/da;->s(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/app/da;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/gallery3d/app/da;->iV:Z

    return p1
.end method

.method static synthetic b(Lcom/android/gallery3d/app/da;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/da;->P(I)V

    return-void
.end method

.method static synthetic b(Lcom/android/gallery3d/app/da;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/gallery3d/app/da;->iQ:Z

    return v0
.end method

.method private bG()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 462
    new-instance v1, Lcom/android/gallery3d/ui/ef;

    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/ui/ef;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/da;->iA:Lcom/android/gallery3d/ui/ef;

    .line 463
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iX:Lcom/android/gallery3d/ui/am;

    iget-object v1, p0, Lcom/android/gallery3d/app/da;->iA:Lcom/android/gallery3d/ui/ef;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/am;->a(Lcom/android/gallery3d/ui/am;)V

    .line 465
    new-instance v0, Lcom/android/gallery3d/ui/ev;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/ui/ev;-><init>(Lcom/android/gallery3d/app/bh;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    .line 466
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/ev;->a(Lcom/android/gallery3d/ui/ba;)V

    .line 467
    new-instance v1, Lcom/android/gallery3d/ui/be;

    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-direct {v1, v0, v2}, Lcom/android/gallery3d/ui/be;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/ev;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/da;->iI:Lcom/android/gallery3d/ui/be;

    .line 468
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/gallery3d/app/cg;->i(Landroid/content/Context;)Lcom/android/gallery3d/app/cg;

    move-result-object v0

    .line 469
    new-instance v1, Lcom/android/gallery3d/ui/bf;

    iget-object v2, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    iget-object v0, v0, Lcom/android/gallery3d/app/cg;->rq:Lcom/android/gallery3d/ui/du;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/gallery3d/ui/bf;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/du;I)V

    iput-object v1, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    .line 471
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    iget-object v1, p0, Lcom/android/gallery3d/app/da;->iI:Lcom/android/gallery3d/ui/be;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/u;)V

    .line 472
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iX:Lcom/android/gallery3d/ui/am;

    iget-object v1, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/am;->a(Lcom/android/gallery3d/ui/am;)V

    .line 473
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    new-instance v1, Lcom/android/gallery3d/app/p;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/p;-><init>(Lcom/android/gallery3d/app/da;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/bw;)V

    .line 494
    new-instance v0, Lcom/android/gallery3d/ui/bd;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    iget-object v2, p0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/bd;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/ev;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/da;->iN:Lcom/android/gallery3d/ui/bd;

    .line 495
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iN:Lcom/android/gallery3d/ui/bd;

    new-instance v1, Lcom/android/gallery3d/app/q;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/q;-><init>(Lcom/android/gallery3d/app/da;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/bd;->a(Lcom/android/gallery3d/ui/aw;)V

    .line 500
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iA:Lcom/android/gallery3d/ui/ef;

    const v1, 0x7f020002

    const v2, 0x7f020003

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/ef;->E(II)V

    .line 502
    return-void
.end method

.method private bH()V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ek;->a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    new-instance v2, Lcom/android/gallery3d/app/l;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/app/l;-><init>(Lcom/android/gallery3d/app/da;Lcom/android/gallery3d/ui/ek;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/ed;)V

    .line 392
    return-void
.end method

.method private bJ()V
    .locals 2

    .prologue
    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/da;->iQ:Z

    .line 534
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iO:Lcom/android/gallery3d/ui/cd;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/cd;->hide()V

    .line 535
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    iget-object v1, p0, Lcom/android/gallery3d/app/da;->iI:Lcom/android/gallery3d/ui/be;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/u;)V

    .line 536
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bf;->invalidate()V

    .line 537
    return-void
.end method

.method private bK()V
    .locals 4

    .prologue
    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/da;->iQ:Z

    .line 518
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iO:Lcom/android/gallery3d/ui/cd;

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Lcom/android/gallery3d/ui/ca;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ca;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/ev;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/da;->iJ:Lcom/android/gallery3d/ui/ca;

    .line 521
    new-instance v0, Lcom/android/gallery3d/ui/cd;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    iget-object v2, p0, Lcom/android/gallery3d/app/da;->iX:Lcom/android/gallery3d/ui/am;

    iget-object v3, p0, Lcom/android/gallery3d/app/da;->AF:Lcom/android/gallery3d/app/bt;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/cd;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/ui/am;Lcom/android/gallery3d/ui/bt;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/da;->iO:Lcom/android/gallery3d/ui/cd;

    .line 522
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iO:Lcom/android/gallery3d/ui/cd;

    new-instance v1, Lcom/android/gallery3d/app/x;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/x;-><init>(Lcom/android/gallery3d/app/da;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/cd;->a(Lcom/android/gallery3d/ui/ea;)V

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    iget-object v1, p0, Lcom/android/gallery3d/app/da;->iJ:Lcom/android/gallery3d/ui/ca;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/u;)V

    .line 529
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iO:Lcom/android/gallery3d/ui/cd;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/cd;->show()V

    .line 530
    return-void
.end method

.method private bM()Z
    .locals 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 843
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 844
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 845
    if-nez v0, :cond_0

    .line 846
    const/4 v0, 0x0

    .line 850
    :goto_0
    return v0

    .line 848
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/ui/cd;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iO:Lcom/android/gallery3d/ui/cd;

    return-object v0
.end method

.method static synthetic c(Lcom/android/gallery3d/app/da;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/da;->Q(I)V

    return-void
.end method

.method static synthetic d(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/ui/be;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iI:Lcom/android/gallery3d/ui/be;

    return-object v0
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 505
    const-string v0, "media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/a/dd;->B(Ljava/lang/String;)Lcom/android/gallery3d/a/dd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/da;->AE:Lcom/android/gallery3d/a/dd;

    .line 506
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v0

    iget-object v3, p0, Lcom/android/gallery3d/app/da;->AE:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/a/ao;->g(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/da;->iC:Lcom/android/gallery3d/a/r;

    .line 507
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iC:Lcom/android/gallery3d/a/r;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "MediaSet is null. Path = %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/gallery3d/app/da;->AE:Lcom/android/gallery3d/a/dd;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 509
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    iget-object v1, p0, Lcom/android/gallery3d/app/da;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ev;->g(Lcom/android/gallery3d/a/r;)V

    .line 510
    new-instance v0, Lcom/android/gallery3d/app/aj;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    iget-object v2, p0, Lcom/android/gallery3d/app/da;->iC:Lcom/android/gallery3d/a/r;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/aj;-><init>(Lcom/android/gallery3d/app/bm;Lcom/android/gallery3d/a/r;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/da;->uv:Lcom/android/gallery3d/app/aj;

    .line 511
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->uv:Lcom/android/gallery3d/app/aj;

    new-instance v1, Lcom/android/gallery3d/app/bk;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/bk;-><init>(Lcom/android/gallery3d/app/da;Lcom/android/gallery3d/app/u;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/aj;->a(Lcom/android/gallery3d/app/ad;)V

    .line 512
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    iget-object v1, p0, Lcom/android/gallery3d/app/da;->uv:Lcom/android/gallery3d/app/aj;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/em;)V

    .line 513
    const-string v0, "AlbumPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/da;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/da;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Pictures"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void

    :cond_0
    move v0, v2

    .line 507
    goto :goto_0
.end method

.method private d(Lcom/android/gallery3d/a/ax;)V
    .locals 5
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v1

    .line 227
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 239
    iget-object v2, p0, Lcom/android/gallery3d/app/w;->eu:Landroid/os/Bundle;

    const-string v3, "crop"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 241
    invoke-virtual {p1}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/a/ao;->j(Lcom/android/gallery3d/a/dd;)Landroid/net/Uri;

    move-result-object v1

    .line 242
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x200

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/da;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 245
    iget-object v2, p0, Lcom/android/gallery3d/app/w;->eu:Landroid/os/Bundle;

    const-string v3, "output"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 246
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 249
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 292
    :goto_0
    return-void

    .line 253
    :cond_1
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/gallery3d/a/ax;->ap()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 255
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/ui/bf;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    return-object v0
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-static {v0}, Lcom/android/gallery3d/ui/ek;->a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;

    move-result-object v1

    .line 397
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 400
    :goto_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 401
    iget-object v3, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    new-instance v4, Lcom/android/gallery3d/app/o;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/android/gallery3d/app/o;-><init>(Lcom/android/gallery3d/app/da;Lcom/android/gallery3d/ui/ek;[ILjava/util/Random;)V

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/ed;)V

    .line 417
    return-void

    .line 397
    :cond_0
    const-string v0, "set-center"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/android/gallery3d/app/da;)F
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/android/gallery3d/app/da;->uO:F

    return v0
.end method

.method static synthetic g(Lcom/android/gallery3d/app/da;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/gallery3d/app/da;->onUp()V

    return-void
.end method

.method static synthetic h(Lcom/android/gallery3d/app/da;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/gallery3d/app/da;->bJ()V

    return-void
.end method

.method static synthetic i(Lcom/android/gallery3d/app/da;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/gallery3d/app/da;->af:Z

    return v0
.end method

.method static synthetic j(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/app/aj;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->uv:Lcom/android/gallery3d/app/aj;

    return-object v0
.end method

.method static synthetic k(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iC:Lcom/android/gallery3d/a/r;

    return-object v0
.end method

.method static synthetic l(Lcom/android/gallery3d/app/da;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/gallery3d/app/da;->AG:Z

    return v0
.end method

.method static synthetic m(Lcom/android/gallery3d/app/da;)Lcom/android/gallery3d/ui/ca;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iJ:Lcom/android/gallery3d/ui/ca;

    return-object v0
.end method

.method private onUp()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ev;->n(Lcom/android/gallery3d/a/dd;)V

    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bf;->invalidate()V

    .line 183
    return-void
.end method

.method private s(I)V
    .locals 2
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->uv:Lcom/android/gallery3d/app/aj;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/aj;->K(I)Lcom/android/gallery3d/a/ax;

    move-result-object v0

    .line 175
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ev;->n(Lcom/android/gallery3d/a/dd;)V

    .line 177
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bf;->invalidate()V

    .line 178
    return-void

    .line 175
    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public N(I)V
    .locals 5
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/ar;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 312
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/da;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 313
    const-string v2, "media-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.gallery3d.app.GalleryForVideo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 316
    iget-boolean v2, p0, Lcom/android/gallery3d/app/da;->iE:Z

    if-eqz v2, :cond_0

    .line 317
    iget-object v2, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v2}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v2

    .line 318
    const-string v3, "set-title"

    iget-object v4, p0, Lcom/android/gallery3d/app/da;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v4}, Lcom/android/gallery3d/a/r;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v3, "set-subtitle"

    invoke-static {v2, p1, v0}, Lcom/android/gallery3d/app/ag;->a(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    iget-object v2, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-static {v2}, Lcom/android/gallery3d/ui/ek;->a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/ek;)V

    .line 324
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/ak;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 326
    return-void
.end method

.method public O(I)V
    .locals 3
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/ar;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 349
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/da;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 350
    const-string v2, "media-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    iget-object v2, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-static {v2}, Lcom/android/gallery3d/ui/ek;->a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/ek;)V

    .line 352
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/da;

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/gallery3d/app/k;->a(Lcom/android/gallery3d/app/w;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 353
    return-void
.end method

.method public R(I)V
    .locals 3
    .parameter

    .prologue
    .line 661
    packed-switch p1, :pswitch_data_0

    .line 678
    :goto_0
    return-void

    .line 663
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iN:Lcom/android/gallery3d/ui/bd;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bd;->de()Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/da;->iM:Landroid/view/ActionMode;

    .line 664
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 668
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iM:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 669
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iX:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/am;->invalidate()V

    goto :goto_0

    .line 673
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iN:Lcom/android/gallery3d/ui/bd;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bd;->dg()V

    .line 674
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iX:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/am;->invalidate()V

    goto :goto_0

    .line 661
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 362
    const v0, 0x3e99999a

    invoke-static {v0}, Lcom/android/gallery3d/b/y;->s(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/da;->uO:F

    .line 363
    invoke-direct {p0}, Lcom/android/gallery3d/app/da;->bG()V

    .line 364
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/da;->d(Landroid/os/Bundle;)V

    .line 365
    const-string v0, "get-content"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/da;->iK:Z

    .line 366
    const-string v0, "cluster-menu"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/da;->iE:Z

    .line 367
    new-instance v0, Lcom/android/gallery3d/app/bt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/bt;-><init>(Lcom/android/gallery3d/app/da;Lcom/android/gallery3d/app/u;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/da;->AF:Lcom/android/gallery3d/app/bt;

    .line 368
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v0

    .line 369
    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/gallery3d/app/da;->mVibrator:Landroid/os/Vibrator;

    .line 371
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/da;->e(Landroid/os/Bundle;)V

    .line 374
    const-string v0, "auto-select-all"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->selectAll()V

    .line 377
    :cond_0
    return-void
.end method

.method public a(Lcom/android/gallery3d/a/dd;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 681
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iM:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 682
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->gs()I

    move-result v0

    .line 683
    iget-object v3, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v3}, Lcom/android/gallery3d/app/bm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0f

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    .line 685
    iget-object v4, p0, Lcom/android/gallery3d/app/da;->iN:Lcom/android/gallery3d/ui/bd;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/ui/bd;->setTitle(Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iN:Lcom/android/gallery3d/ui/bd;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/bd;->b(Lcom/android/gallery3d/a/dd;Z)V

    .line 687
    return-void

    :cond_0
    move v0, v2

    .line 681
    goto :goto_0
.end method

.method public a(Lcom/android/gallery3d/a/r;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/gallery3d/app/y;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/app/y;-><init>(Lcom/android/gallery3d/app/da;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 705
    return-void
.end method

.method protected b(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 638
    packed-switch p1, :pswitch_data_0

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 641
    :pswitch_0
    if-eqz p3, :cond_0

    .line 642
    const-string v0, "photo-index"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/da;->zJ:I

    .line 643
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    iget v1, p0, Lcom/android/gallery3d/app/da;->zJ:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/bf;->bc(I)V

    goto :goto_0

    .line 647
    :pswitch_1
    if-eqz p3, :cond_0

    .line 648
    const-string v0, "index-hint"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/da;->zJ:I

    .line 649
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    iget v1, p0, Lcom/android/gallery3d/app/da;->zJ:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/bf;->bc(I)V

    .line 650
    invoke-direct {p0}, Lcom/android/gallery3d/app/da;->bH()V

    goto :goto_0

    .line 654
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/da;->e(Landroid/os/Bundle;)V

    goto :goto_0

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected b(Landroid/view/Menu;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0a0032

    const v7, 0x7f0a0035

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 541
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    .line 542
    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->dR()Lcom/android/gallery3d/app/ag;

    move-result-object v1

    .line 543
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 544
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aU()Z

    move-result v3

    .line 546
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.android.gallery3d.app.GalleryForVideo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 549
    iget-boolean v4, p0, Lcom/android/gallery3d/app/da;->iK:Z

    if-eqz v4, :cond_1

    .line 550
    const v0, 0x7f10000a

    invoke-virtual {v2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 551
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->eu:Landroid/os/Bundle;

    const-string v2, "type-bits"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 554
    invoke-static {v0}, Lcom/android/gallery3d/b/y;->aW(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/ag;->setTitle(I)V

    .line 590
    :cond_0
    :goto_0
    invoke-virtual {v1, v9}, Lcom/android/gallery3d/app/ag;->g(Ljava/lang/String;)V

    .line 592
    return v5

    .line 556
    :cond_1
    const/high16 v4, 0x7f10

    invoke-virtual {v2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 558
    if-eqz v0, :cond_2

    .line 559
    const v2, 0x7f0a0033

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 562
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/da;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/ag;->setTitle(Ljava/lang/String;)V

    .line 563
    iget-object v2, p0, Lcom/android/gallery3d/app/da;->iC:Lcom/android/gallery3d/a/r;

    instance-of v2, v2, Lcom/android/gallery3d/a/be;

    if-nez v2, :cond_3

    if-nez v3, :cond_5

    .line 564
    :cond_3
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 569
    :goto_1
    const v2, 0x7f0a0034

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 570
    iget-object v3, p0, Lcom/android/gallery3d/app/da;->AE:Lcom/android/gallery3d/a/dd;

    invoke-static {v1, v3, v5}, Lcom/android/gallery3d/app/ar;->a(Lcom/android/gallery3d/app/ag;Lcom/android/gallery3d/a/dd;Z)V

    .line 572
    if-eqz v2, :cond_4

    .line 573
    iget-boolean v3, p0, Lcom/android/gallery3d/app/da;->iE:Z

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 576
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/app/da;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/ag;->setTitle(Ljava/lang/String;)V

    .line 577
    if-nez v0, :cond_6

    .line 578
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 582
    :goto_2
    const-string v0, "ro.product.model"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    if-eqz v0, :cond_0

    .line 584
    const-string v2, "Coolpad 7268"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 566
    :cond_5
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 580
    :cond_6
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public bE()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 329
    invoke-direct {p0}, Lcom/android/gallery3d/app/da;->bM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/da;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 331
    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->du()Lcom/android/gallery3d/a/ao;

    const-string v1, "/map/{/combo/{/mtp,/local/image,/local/image/more,/picasa/image}}/maplocation"

    .line 332
    const-string v2, "media-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v1, "show_on_map"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 335
    const-string v1, "set-title"

    iget-object v2, p0, Lcom/android/gallery3d/app/da;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v2}, Lcom/android/gallery3d/a/r;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    iget-object v2, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-static {v2}, Lcom/android/gallery3d/ui/ek;->a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/ek;)V

    .line 337
    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/ak;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 343
    :goto_0
    return-void

    .line 340
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
    .line 356
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bf;->invalidate()V

    .line 358
    return-void
.end method

.method protected c(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 597
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 632
    :goto_0
    return v0

    .line 599
    :sswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/k;->a(Lcom/android/gallery3d/app/w;)V

    goto :goto_0

    .line 602
    :sswitch_1
    iget-object v2, p0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/ui/ev;->w(Z)V

    .line 603
    iget-object v1, p0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ev;->gq()V

    goto :goto_0

    .line 606
    :sswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->dR()Lcom/android/gallery3d/app/ag;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/ag;->a(Lcom/android/gallery3d/app/ch;)V

    goto :goto_0

    .line 610
    :sswitch_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 611
    const-string v2, "media-set-path"

    iget-object v3, p0, Lcom/android/gallery3d/app/da;->AE:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v3}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v2, "repeat"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 614
    iget-object v2, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v2}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/dw;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 619
    :sswitch_4
    iget-boolean v1, p0, Lcom/android/gallery3d/app/da;->iQ:Z

    if-eqz v1, :cond_0

    .line 620
    invoke-direct {p0}, Lcom/android/gallery3d/app/da;->bJ()V

    goto :goto_0

    .line 622
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/da;->bK()V

    goto :goto_0

    .line 628
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/gallery3d/app/da;->bE()V

    goto :goto_0

    .line 597
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0032 -> :sswitch_3
        0x7f0a0033 -> :sswitch_1
        0x7f0a0034 -> :sswitch_2
        0x7f0a0035 -> :sswitch_5
        0x7f0a004f -> :sswitch_4
        0x7f0a0055 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onBackPressed()V
    .locals 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/gallery3d/app/da;->iQ:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/android/gallery3d/app/da;->bJ()V

    .line 171
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->gp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ev;->gr()V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-static {v1}, Lcom/android/gallery3d/ui/ek;->a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/ek;)V

    .line 169
    invoke-super {p0}, Lcom/android/gallery3d/app/w;->onBackPressed()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 454
    invoke-super {p0}, Lcom/android/gallery3d/app/w;->onDestroy()V

    .line 455
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->uv:Lcom/android/gallery3d/app/aj;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->uv:Lcom/android/gallery3d/app/aj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/aj;->a(Lcom/android/gallery3d/app/ad;)V

    .line 458
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x4

    const/4 v5, -0x1

    const/4 v1, 0x1

    .line 854
    .line 856
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v2}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    if-ne v1, v2, :cond_4

    .line 866
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/da;->uv:Lcom/android/gallery3d/app/aj;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/aj;->size()I

    move-result v2

    .line 867
    const/16 v3, 0x14

    if-ne p1, v3, :cond_0

    .line 868
    iget v3, p0, Lcom/android/gallery3d/app/da;->el:I

    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_0

    .line 869
    iget v3, p0, Lcom/android/gallery3d/app/da;->el:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/gallery3d/app/da;->el:I

    .line 872
    :cond_0
    const/16 v3, 0x13

    if-ne p1, v3, :cond_1

    .line 873
    iget v3, p0, Lcom/android/gallery3d/app/da;->el:I

    if-lez v3, :cond_1

    .line 874
    iget v3, p0, Lcom/android/gallery3d/app/da;->el:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/gallery3d/app/da;->el:I

    .line 878
    :cond_1
    iget v3, p0, Lcom/android/gallery3d/app/da;->el:I

    if-eq v3, v5, :cond_2

    const/16 v3, 0x16

    if-ne p1, v3, :cond_2

    .line 879
    iget v3, p0, Lcom/android/gallery3d/app/da;->el:I

    add-int/2addr v3, v0

    if-ge v3, v2, :cond_2

    .line 880
    iget v3, p0, Lcom/android/gallery3d/app/da;->el:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/gallery3d/app/da;->el:I

    .line 885
    :cond_2
    const/16 v3, 0x15

    if-ne p1, v3, :cond_3

    .line 886
    iget v3, p0, Lcom/android/gallery3d/app/da;->el:I

    sub-int/2addr v3, v0

    if-ltz v3, :cond_3

    .line 887
    iget v3, p0, Lcom/android/gallery3d/app/da;->el:I

    sub-int v0, v3, v0

    iput v0, p0, Lcom/android/gallery3d/app/da;->el:I

    .line 890
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 920
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/app/w;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 861
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 895
    :sswitch_0
    iget v0, p0, Lcom/android/gallery3d/app/da;->el:I

    if-ne v0, v5, :cond_5

    .line 896
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/da;->el:I

    .line 898
    :cond_5
    iget v0, p0, Lcom/android/gallery3d/app/da;->el:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/android/gallery3d/app/da;->el:I

    if-ge v0, v2, :cond_7

    .line 899
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->uv:Lcom/android/gallery3d/app/aj;

    iget v2, p0, Lcom/android/gallery3d/app/da;->el:I

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/app/aj;->K(I)Lcom/android/gallery3d/a/ax;

    move-result-object v0

    .line 900
    iget-object v2, p0, Lcom/android/gallery3d/app/da;->iJ:Lcom/android/gallery3d/ui/ca;

    if-nez v2, :cond_6

    .line 901
    new-instance v2, Lcom/android/gallery3d/ui/ca;

    iget-object v3, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v3}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-direct {v2, v3, v4}, Lcom/android/gallery3d/ui/ca;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/ev;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/da;->iJ:Lcom/android/gallery3d/ui/ca;

    .line 904
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    iget-object v3, p0, Lcom/android/gallery3d/app/da;->iJ:Lcom/android/gallery3d/ui/ca;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/u;)V

    .line 905
    iget-object v2, p0, Lcom/android/gallery3d/app/da;->iJ:Lcom/android/gallery3d/ui/ca;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/ca;->p(Lcom/android/gallery3d/a/dd;)V

    .line 906
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    iget v2, p0, Lcom/android/gallery3d/app/da;->el:I

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/bf;->bc(I)V

    .line 907
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bf;->invalidate()V

    move v0, v1

    .line 908
    goto :goto_1

    .line 912
    :cond_7
    :sswitch_1
    iget v0, p0, Lcom/android/gallery3d/app/da;->el:I

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/android/gallery3d/app/da;->el:I

    if-ge v0, v2, :cond_8

    .line 913
    iget v0, p0, Lcom/android/gallery3d/app/da;->el:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/da;->t(I)V

    :cond_8
    move v0, v1

    .line 915
    goto :goto_1

    .line 863
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 890
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 439
    invoke-super {p0}, Lcom/android/gallery3d/app/w;->onPause()V

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/da;->af:Z

    .line 441
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->uv:Lcom/android/gallery3d/app/aj;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/aj;->pause()V

    .line 442
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bf;->pause()V

    .line 443
    invoke-static {}, Lcom/android/gallery3d/ui/cd;->pause()V

    .line 445
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iT:Lcom/android/gallery3d/b/l;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iT:Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/da;->iT:Lcom/android/gallery3d/b/l;

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iN:Lcom/android/gallery3d/ui/bd;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bd;->pause()V

    .line 450
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 421
    invoke-super {p0}, Lcom/android/gallery3d/app/w;->onResume()V

    .line 422
    iput-boolean v1, p0, Lcom/android/gallery3d/app/da;->af:Z

    .line 423
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iX:Lcom/android/gallery3d/ui/am;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/da;->setContentPane(Lcom/android/gallery3d/ui/am;)V

    .line 426
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/da;->Q(I)V

    .line 427
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->uv:Lcom/android/gallery3d/app/aj;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/aj;->resume()V

    .line 429
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bf;->resume()V

    .line 430
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iN:Lcom/android/gallery3d/ui/bd;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bd;->resume()V

    .line 431
    iget-boolean v0, p0, Lcom/android/gallery3d/app/da;->iV:Z

    if-nez v0, :cond_0

    .line 432
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/da;->Q(I)V

    .line 433
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iC:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/da;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/da;->iT:Lcom/android/gallery3d/b/l;

    .line 435
    :cond_0
    return-void
.end method

.method public t(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 187
    iget-object v1, p0, Lcom/android/gallery3d/app/da;->uv:Lcom/android/gallery3d/app/aj;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/aj;->K(I)Lcom/android/gallery3d/a/ax;

    move-result-object v1

    .line 188
    iput-boolean v0, p0, Lcom/android/gallery3d/app/da;->AG:Z

    .line 189
    if-nez v1, :cond_0

    .line 190
    const-string v0, "AlbumPage"

    const-string v1, "item not ready yet, ignore the click"

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {v1}, Lcom/android/gallery3d/a/ax;->am()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 197
    :cond_1
    iget-boolean v2, p0, Lcom/android/gallery3d/app/da;->iQ:Z

    if-eqz v2, :cond_2

    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iJ:Lcom/android/gallery3d/ui/ca;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ca;->p(Lcom/android/gallery3d/a/dd;)V

    .line 199
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iO:Lcom/android/gallery3d/ui/cd;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/cd;->w(I)V

    goto :goto_0

    .line 200
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ev;->gp()Z

    move-result v2

    if-nez v2, :cond_5

    .line 201
    iget-boolean v2, p0, Lcom/android/gallery3d/app/da;->iK:Z

    if-eqz v2, :cond_3

    .line 202
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/da;->d(Lcom/android/gallery3d/a/ax;)V

    goto :goto_0

    .line 203
    :cond_3
    if-eqz v0, :cond_4

    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/ax;->db()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/gallery3d/a/ax;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/gallery3d/app/da;->a(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    iget-object v2, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    iget-object v3, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-static {v3}, Lcom/android/gallery3d/ui/ek;->a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/bf;->a(Lcom/android/gallery3d/ui/ek;)V

    .line 209
    const-string v2, "index-hint"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    const-string v2, "media-set-path"

    iget-object v3, p0, Lcom/android/gallery3d/app/da;->AE:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v3}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v2, "media-item-path"

    invoke-virtual {v1}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/android/gallery3d/app/w;->et:Lcom/android/gallery3d/app/bm;

    invoke-interface {v1}, Lcom/android/gallery3d/app/bm;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/ca;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 218
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ev;->u(Lcom/android/gallery3d/a/dd;)V

    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->AF:Lcom/android/gallery3d/app/bt;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/bt;->H(I)I

    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bf;->invalidate()V

    goto/16 :goto_0
.end method

.method public u(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 295
    iget-boolean v0, p0, Lcom/android/gallery3d/app/da;->iK:Z

    if-eqz v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iput-boolean v2, p0, Lcom/android/gallery3d/app/da;->AG:Z

    .line 297
    iget-boolean v0, p0, Lcom/android/gallery3d/app/da;->iQ:Z

    if-eqz v0, :cond_2

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/da;->t(I)V

    goto :goto_0

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->uv:Lcom/android/gallery3d/app/aj;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/aj;->K(I)Lcom/android/gallery3d/a/ax;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/ev;->w(Z)V

    .line 303
    iget-object v1, p0, Lcom/android/gallery3d/app/da;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/ev;->u(Lcom/android/gallery3d/a/dd;)V

    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->AF:Lcom/android/gallery3d/app/bt;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/bt;->H(I)I

    .line 305
    iget-object v0, p0, Lcom/android/gallery3d/app/da;->ut:Lcom/android/gallery3d/ui/bf;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bf;->invalidate()V

    goto :goto_0
.end method
