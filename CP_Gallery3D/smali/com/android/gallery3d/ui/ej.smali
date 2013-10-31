.class public Lcom/android/gallery3d/ui/ej;
.super Lcom/android/gallery3d/ui/am;
.source "SourceFile"


# static fields
.field private static final AH:I = -0x1

.field private static final FX:Z = true

.field public static final Gm:I = 0x0

.field public static final Gn:I = 0x1

.field public static final Go:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SlotView"


# instance fields
.field private final FY:Lcom/android/gallery3d/ui/x;

.field private final FZ:Lcom/android/gallery3d/ui/ec;

.field private Ga:Lcom/android/gallery3d/ui/bw;

.field private final Gb:Ljava/util/HashMap;

.field public Gc:Lcom/android/gallery3d/b/aa;

.field private Gd:Ljava/util/ArrayList;

.field private Ge:Ljava/util/ArrayList;

.field private Gf:Z

.field private Gg:Lcom/android/gallery3d/ui/dn;

.field private final Gh:Lcom/android/gallery3d/ui/w;

.field private Gi:Lcom/android/gallery3d/ui/ed;

.field private Gj:I

.field private Gk:Z

.field private Gl:I

.field private final dZ:Lcom/android/gallery3d/ui/cq;

.field private final mHandler:Landroid/os/Handler;

.field private final mN:Landroid/view/GestureDetector;

.field private uy:Lcom/android/gallery3d/ui/dg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lcom/android/gallery3d/ui/am;-><init>()V

    .line 60
    new-instance v0, Lcom/android/gallery3d/ui/ec;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/ec;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ej;->FZ:Lcom/android/gallery3d/ui/ec;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gb:Ljava/util/HashMap;

    .line 69
    invoke-static {}, Lcom/android/gallery3d/b/s;->eT()Lcom/android/gallery3d/b/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gc:Lcom/android/gallery3d/b/aa;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gd:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ej;->Ge:Ljava/util/ArrayList;

    .line 75
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/ej;->Gf:Z

    .line 76
    iput-object v2, p0, Lcom/android/gallery3d/ui/ej;->Gg:Lcom/android/gallery3d/ui/dn;

    .line 77
    new-instance v0, Lcom/android/gallery3d/ui/cq;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/cq;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ej;->dZ:Lcom/android/gallery3d/ui/cq;

    .line 78
    new-instance v0, Lcom/android/gallery3d/ui/w;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/w;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gh:Lcom/android/gallery3d/ui/w;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/ej;->Gj:I

    .line 84
    iput v1, p0, Lcom/android/gallery3d/ui/ej;->Gl:I

    .line 92
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/gallery3d/ui/ct;

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/ct;-><init>(Lcom/android/gallery3d/ui/ej;Lcom/android/gallery3d/ui/i;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ej;->mN:Landroid/view/GestureDetector;

    .line 94
    new-instance v0, Lcom/android/gallery3d/ui/x;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ej;->FY:Lcom/android/gallery3d/ui/x;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ej;->mHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method private a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/do;FIZ)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 344
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/b;->save(I)I

    .line 345
    iget-object v0, p2, Lcom/android/gallery3d/ui/do;->Cm:Lcom/android/gallery3d/ui/cq;

    .line 346
    iget-object v1, p0, Lcom/android/gallery3d/ui/ej;->Gi:Lcom/android/gallery3d/ui/ed;

    if-eqz v1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->dZ:Lcom/android/gallery3d/ui/cq;

    .line 348
    iget-object v1, p2, Lcom/android/gallery3d/ui/do;->Cm:Lcom/android/gallery3d/ui/cq;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/cq;->a(Lcom/android/gallery3d/ui/cq;)V

    .line 349
    iget v1, v0, Lcom/android/gallery3d/ui/cq;->x:F

    iget v2, p0, Lcom/android/gallery3d/ui/am;->mScrollX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/ui/cq;->x:F

    .line 350
    iget v1, v0, Lcom/android/gallery3d/ui/cq;->y:F

    iget v2, p0, Lcom/android/gallery3d/ui/am;->mScrollY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/ui/cq;->y:F

    .line 351
    iget-object v1, p0, Lcom/android/gallery3d/ui/ej;->Gi:Lcom/android/gallery3d/ui/ed;

    iget-object v2, p2, Lcom/android/gallery3d/ui/do;->Cl:Lcom/android/gallery3d/ui/av;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/av;->as()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v0}, Lcom/android/gallery3d/ui/ed;->a(JLcom/android/gallery3d/ui/cq;)Lcom/android/gallery3d/ui/cq;

    move-result-object v1

    .line 353
    iget v0, v1, Lcom/android/gallery3d/ui/cq;->x:F

    iget v2, p0, Lcom/android/gallery3d/ui/am;->mScrollX:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, v1, Lcom/android/gallery3d/ui/cq;->x:F

    .line 354
    iget v0, v1, Lcom/android/gallery3d/ui/cq;->y:F

    iget v2, p0, Lcom/android/gallery3d/ui/am;->mScrollY:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, v1, Lcom/android/gallery3d/ui/cq;->y:F

    .line 355
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->dZ:Lcom/android/gallery3d/ui/cq;

    .line 356
    iget-object v2, p2, Lcom/android/gallery3d/ui/do;->Cm:Lcom/android/gallery3d/ui/cq;

    invoke-static {v1, v2, v0, p3}, Lcom/android/gallery3d/ui/cq;->a(Lcom/android/gallery3d/ui/cq;Lcom/android/gallery3d/ui/cq;Lcom/android/gallery3d/ui/cq;F)V

    .line 359
    :cond_0
    iget v1, v0, Lcom/android/gallery3d/ui/cq;->alpha:F

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/b;->a(F)V

    .line 360
    if-eqz p5, :cond_1

    .line 361
    iget-object v1, p0, Lcom/android/gallery3d/ui/ej;->FZ:Lcom/android/gallery3d/ui/ec;

    iget-object v2, p2, Lcom/android/gallery3d/ui/do;->Cn:Lcom/android/gallery3d/ui/cq;

    iget v3, p0, Lcom/android/gallery3d/ui/am;->mScrollX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/gallery3d/ui/am;->mScrollY:I

    int-to-float v4, v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/gallery3d/ui/ec;->a(Lcom/android/gallery3d/ui/cq;Lcom/android/gallery3d/ui/cq;FF)[F

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/ui/b;->a([FI)V

    .line 366
    :goto_0
    iget v0, v0, Lcom/android/gallery3d/ui/cq;->yx:F

    const/high16 v1, 0x3f80

    invoke-interface {p1, v0, v5, v5, v1}, Lcom/android/gallery3d/ui/b;->rotate(FFFF)V

    .line 367
    iget-object v0, p2, Lcom/android/gallery3d/ui/do;->Cl:Lcom/android/gallery3d/ui/av;

    invoke-virtual {v0, p1, p4}, Lcom/android/gallery3d/ui/av;->a(Lcom/android/gallery3d/ui/b;I)I

    move-result v0

    .line 368
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->restore()V

    .line 369
    return v0

    .line 364
    :cond_1
    iget v1, v0, Lcom/android/gallery3d/ui/cq;->x:F

    iget v2, v0, Lcom/android/gallery3d/ui/cq;->y:F

    iget v3, v0, Lcom/android/gallery3d/ui/cq;->z:F

    invoke-interface {p1, v1, v2, v3}, Lcom/android/gallery3d/ui/b;->translate(FFF)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/ej;)Lcom/android/gallery3d/ui/w;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gh:Lcom/android/gallery3d/ui/w;

    return-object v0
.end method

.method static synthetic b(Lcom/android/gallery3d/ui/ej;)Lcom/android/gallery3d/ui/bw;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Ga:Lcom/android/gallery3d/ui/bw;

    return-object v0
.end method

.method static synthetic c(Lcom/android/gallery3d/ui/ej;)Lcom/android/gallery3d/ui/x;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->FY:Lcom/android/gallery3d/ui/x;

    return-object v0
.end method

.method static synthetic d(Lcom/android/gallery3d/ui/ej;)Lcom/android/gallery3d/ui/dg;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->uy:Lcom/android/gallery3d/ui/dg;

    return-object v0
.end method

.method static synthetic e(Lcom/android/gallery3d/ui/ej;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/android/gallery3d/ui/ej;->Gl:I

    return v0
.end method

.method static synthetic f(Lcom/android/gallery3d/ui/ej;)Lcom/android/gallery3d/ui/ec;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->FZ:Lcom/android/gallery3d/ui/ec;

    return-object v0
.end method

.method static synthetic g(Lcom/android/gallery3d/ui/ej;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/ej;->Gk:Z

    return v0
.end method

.method private k(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/am;->mScrollX:I

    if-ne p1, v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 195
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/am;->mScrollX:I

    .line 199
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gh:Lcom/android/gallery3d/ui/w;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/w;->h(I)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/ej;->al(I)V

    goto :goto_0
.end method


# virtual methods
.method public B(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 732
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gh:Lcom/android/gallery3d/ui/w;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/w;->B(I)Z

    move-result v0

    .line 735
    iget v1, p0, Lcom/android/gallery3d/ui/ej;->Gj:I

    if-eq v1, v2, :cond_0

    .line 736
    iget v1, p0, Lcom/android/gallery3d/ui/ej;->Gj:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/ej;->bc(I)V

    .line 737
    iput v2, p0, Lcom/android/gallery3d/ui/ej;->Gj:I

    .line 739
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/ui/am;->mScrollX:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/ui/ej;->k(IZ)V

    .line 740
    return v0
.end method

.method public C(I)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gh:Lcom/android/gallery3d/ui/w;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/w;->C(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/android/gallery3d/ui/am;)V
    .locals 1
    .parameter

    .prologue
    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Lcom/android/gallery3d/ui/av;)V
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gb:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/do;

    .line 217
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/do;->remove()V

    .line 218
    :cond_0
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/bw;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/gallery3d/ui/ej;->Ga:Lcom/android/gallery3d/ui/bw;

    .line 243
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/cq;Lcom/android/gallery3d/ui/cq;Lcom/android/gallery3d/ui/av;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gh:Lcom/android/gallery3d/ui/w;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/w;->aZ()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/ej;->Gh:Lcom/android/gallery3d/ui/w;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/w;->ba()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Lcom/android/gallery3d/ui/av;->r(II)V

    .line 210
    new-instance v0, Lcom/android/gallery3d/ui/do;

    invoke-direct {v0, p3, p1, p2}, Lcom/android/gallery3d/ui/do;-><init>(Lcom/android/gallery3d/ui/av;Lcom/android/gallery3d/ui/cq;Lcom/android/gallery3d/ui/cq;)V

    .line 211
    iget-object v1, p0, Lcom/android/gallery3d/ui/ej;->Gc:Lcom/android/gallery3d/b/aa;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/b/aa;->e(Lcom/android/gallery3d/b/s;)V

    .line 212
    iget-object v1, p0, Lcom/android/gallery3d/ui/ej;->Gb:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/dg;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/gallery3d/ui/ej;->uy:Lcom/android/gallery3d/ui/dg;

    .line 247
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/du;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gh:Lcom/android/gallery3d/ui/w;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/w;->a(Lcom/android/gallery3d/ui/du;)V

    .line 138
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/ed;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/gallery3d/ui/ej;->Gi:Lcom/android/gallery3d/ui/ed;

    .line 173
    new-instance v0, Lcom/android/gallery3d/ui/dn;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/dn;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gg:Lcom/android/gallery3d/ui/dn;

    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gg:Lcom/android/gallery3d/ui/dn;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/dn;->start()V

    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gb:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ej;->invalidate()V

    .line 176
    :cond_0
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/ek;)V
    .locals 5
    .parameter

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/ek;->clear()V

    .line 180
    iget-object v1, p0, Lcom/android/gallery3d/ui/ej;->Gc:Lcom/android/gallery3d/b/aa;

    .line 181
    invoke-virtual {v1}, Lcom/android/gallery3d/b/aa;->fR()Lcom/android/gallery3d/b/s;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/do;

    .line 182
    new-instance v2, Lcom/android/gallery3d/ui/cq;

    invoke-direct {v2}, Lcom/android/gallery3d/ui/cq;-><init>()V

    .line 183
    :goto_0
    if-eqz v0, :cond_0

    .line 184
    iget-object v3, v0, Lcom/android/gallery3d/ui/do;->Cm:Lcom/android/gallery3d/ui/cq;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/cq;->a(Lcom/android/gallery3d/ui/cq;)V

    .line 185
    iget v3, v2, Lcom/android/gallery3d/ui/cq;->x:F

    iget v4, p0, Lcom/android/gallery3d/ui/am;->mScrollX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/android/gallery3d/ui/cq;->x:F

    .line 186
    iget v3, v2, Lcom/android/gallery3d/ui/cq;->y:F

    iget v4, p0, Lcom/android/gallery3d/ui/am;->mScrollY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/android/gallery3d/ui/cq;->y:F

    .line 187
    iget-object v3, v0, Lcom/android/gallery3d/ui/do;->Cl:Lcom/android/gallery3d/ui/av;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/av;->as()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lcom/android/gallery3d/ui/ek;->a(Ljava/lang/Long;Lcom/android/gallery3d/ui/cq;)V

    .line 188
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/b/aa;->f(Lcom/android/gallery3d/b/s;)Lcom/android/gallery3d/b/s;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/do;

    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->uy:Lcom/android/gallery3d/ui/dg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->uy:Lcom/android/gallery3d/ui/dg;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/dg;->onUserInteraction()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->mN:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 238
    :goto_0
    return v1

    .line 230
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->FY:Lcom/android/gallery3d/ui/x;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/x;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/ej;->Gk:Z

    .line 231
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->FY:Lcom/android/gallery3d/ui/x;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/x;->bh()V

    goto :goto_0

    .line 230
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 234
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->FZ:Lcom/android/gallery3d/ui/ec;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ec;->onRelease()V

    .line 235
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ej;->invalidate()V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected al(I)V
    .locals 2
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gh:Lcom/android/gallery3d/ui/w;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/w;->bf()I

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/android/gallery3d/ui/ej;->Ga:Lcom/android/gallery3d/ui/bw;

    invoke-interface {v1, p1, v0}, Lcom/android/gallery3d/ui/bw;->s(II)V

    .line 206
    return-void
.end method

.method public b(Lcom/android/gallery3d/ui/am;)Z
    .locals 1
    .parameter

    .prologue
    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bc(I)V
    .locals 2
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gh:Lcom/android/gallery3d/ui/w;

    invoke-static {v0}, Lcom/android/gallery3d/ui/w;->a(Lcom/android/gallery3d/ui/w;)I

    move-result v0

    .line 100
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gh:Lcom/android/gallery3d/ui/w;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/w;->C(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 104
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ej;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/ej;->h(I)V

    goto :goto_0
.end method

.method public bd()I
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gh:Lcom/android/gallery3d/ui/w;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/w;->bd()I

    move-result v0

    return v0
.end method

.method public bd(I)V
    .locals 6
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gh:Lcom/android/gallery3d/ui/w;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/w;->C(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 112
    iget v0, p0, Lcom/android/gallery3d/ui/am;->mScrollX:I

    .line 113
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ej;->getWidth()I

    move-result v3

    .line 114
    add-int v4, v0, v3

    .line 115
    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 116
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 119
    sub-int v5, v2, v1

    if-ge v3, v5, :cond_1

    .line 127
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/ej;->h(I)V

    .line 128
    return-void

    .line 121
    :cond_1
    if-ge v1, v0, :cond_2

    move v0, v1

    .line 122
    goto :goto_0

    .line 123
    :cond_2
    if-le v2, v4, :cond_0

    .line 124
    sub-int v0, v2, v3

    goto :goto_0
.end method

.method public be()I
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gh:Lcom/android/gallery3d/ui/w;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/w;->be()I

    move-result v0

    return v0
.end method

.method public be(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 250
    iput p1, p0, Lcom/android/gallery3d/ui/ej;->Gl:I

    .line 251
    iget-object v1, p0, Lcom/android/gallery3d/ui/ej;->FY:Lcom/android/gallery3d/ui/x;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/x;->e(Z)V

    .line 252
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Lcom/android/gallery3d/ui/b;)V
    .locals 9
    .parameter

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/am;->c(Lcom/android/gallery3d/ui/b;)V

    .line 258
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->FY:Lcom/android/gallery3d/ui/x;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/x;->c(J)Z

    move-result v3

    .line 260
    iget v0, p0, Lcom/android/gallery3d/ui/am;->mScrollX:I

    .line 261
    iget-object v4, p0, Lcom/android/gallery3d/ui/ej;->FY:Lcom/android/gallery3d/ui/x;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/x;->getPosition()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/gallery3d/ui/ej;->k(IZ)V

    .line 263
    const/4 v5, 0x0

    .line 264
    iget v4, p0, Lcom/android/gallery3d/ui/ej;->Gl:I

    if-nez v4, :cond_4

    .line 266
    iget v4, p0, Lcom/android/gallery3d/ui/am;->mScrollX:I

    .line 267
    iget-object v5, p0, Lcom/android/gallery3d/ui/ej;->Gh:Lcom/android/gallery3d/ui/w;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/w;->bf()I

    move-result v5

    .line 268
    if-lez v0, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    if-ge v0, v5, :cond_3

    if-ne v4, v5, :cond_3

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->FY:Lcom/android/gallery3d/ui/x;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/x;->getCurrVelocity()F

    move-result v0

    .line 270
    if-ne v4, v5, :cond_2

    neg-float v0, v0

    .line 273
    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_3

    .line 274
    iget-object v4, p0, Lcom/android/gallery3d/ui/ej;->FZ:Lcom/android/gallery3d/ui/ec;

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/ui/ec;->u(F)V

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->FZ:Lcom/android/gallery3d/ui/ec;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ec;->Z()Z

    move-result v5

    .line 280
    :cond_4
    or-int v0, v3, v5

    .line 282
    const/high16 v3, 0x3f80

    .line 283
    iget-object v4, p0, Lcom/android/gallery3d/ui/ej;->Gg:Lcom/android/gallery3d/ui/dn;

    if-eqz v4, :cond_e

    .line 284
    iget-object v3, p0, Lcom/android/gallery3d/ui/ej;->Gg:Lcom/android/gallery3d/ui/dn;

    invoke-virtual {v3, v1, v2}, Lcom/android/gallery3d/ui/dn;->h(J)Z

    move-result v1

    or-int/2addr v0, v1

    .line 285
    iget-object v1, p0, Lcom/android/gallery3d/ui/ej;->Gg:Lcom/android/gallery3d/ui/dn;

    iget v3, v1, Lcom/android/gallery3d/ui/dn;->value:F

    move v1, v0

    .line 289
    :goto_0
    iget v0, p0, Lcom/android/gallery3d/ui/am;->mScrollX:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {p1, v0, v2, v4}, Lcom/android/gallery3d/ui/b;->translate(FFF)V

    .line 294
    iget-object v7, p0, Lcom/android/gallery3d/ui/ej;->Gc:Lcom/android/gallery3d/b/aa;

    .line 295
    invoke-virtual {v7}, Lcom/android/gallery3d/b/aa;->fS()Lcom/android/gallery3d/b/s;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/do;

    move-object v2, v0

    move v6, v1

    :goto_1
    if-eqz v2, :cond_7

    .line 296
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/ej;->a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/do;FIZ)I

    move-result v0

    .line 297
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_5

    .line 298
    iget-object v1, p0, Lcom/android/gallery3d/ui/ej;->Gd:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_5
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    or-int/2addr v6, v0

    .line 301
    invoke-virtual {v7, v2}, Lcom/android/gallery3d/b/aa;->g(Lcom/android/gallery3d/b/s;)Lcom/android/gallery3d/b/s;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/do;

    move-object v2, v0

    .line 302
    goto :goto_1

    .line 300
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 304
    :cond_7
    const/4 v4, 0x1

    move v0, v6

    .line 305
    :goto_3
    iget-object v1, p0, Lcom/android/gallery3d/ui/ej;->Gd:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 306
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/ui/ej;->Gd:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v7, v1

    move v6, v0

    :goto_4
    if-ge v7, v8, :cond_a

    .line 307
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gd:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/do;

    move-object v0, p0

    move-object v1, p1

    .line 308
    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/ej;->a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/do;FIZ)I

    move-result v0

    .line 309
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_8

    .line 310
    iget-object v1, p0, Lcom/android/gallery3d/ui/ej;->Ge:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_8
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    or-int/2addr v6, v0

    .line 306
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_4

    .line 312
    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    .line 314
    :cond_a
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 316
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Ge:Ljava/util/ArrayList;

    .line 317
    iget-object v1, p0, Lcom/android/gallery3d/ui/ej;->Gd:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/gallery3d/ui/ej;->Ge:Ljava/util/ArrayList;

    .line 318
    iput-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gd:Ljava/util/ArrayList;

    .line 319
    add-int/lit8 v4, v4, 0x1

    move v0, v6

    .line 320
    goto :goto_3

    .line 323
    :cond_b
    iget v1, p0, Lcom/android/gallery3d/ui/am;->mScrollX:I

    int-to-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Lcom/android/gallery3d/ui/b;->translate(FFF)V

    .line 328
    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ej;->invalidate()V

    .line 329
    :cond_c
    iget-object v1, p0, Lcom/android/gallery3d/ui/ej;->uy:Lcom/android/gallery3d/ui/dg;

    .line 330
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/ej;->Gf:Z

    if-eqz v2, :cond_d

    if-nez v0, :cond_d

    if-eqz v1, :cond_d

    .line 331
    iget-object v2, p0, Lcom/android/gallery3d/ui/ej;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/gallery3d/ui/i;

    invoke-direct {v3, p0, v1}, Lcom/android/gallery3d/ui/i;-><init>(Lcom/android/gallery3d/ui/ej;Lcom/android/gallery3d/ui/dg;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 339
    :cond_d
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/ej;->Gf:Z

    .line 340
    return-void

    :cond_e
    move v1, v0

    goto/16 :goto_0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 752
    iget v0, p0, Lcom/android/gallery3d/ui/am;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 756
    iget v0, p0, Lcom/android/gallery3d/ui/am;->mScrollY:I

    return v0
.end method

.method public h(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gh:Lcom/android/gallery3d/ui/w;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/w;->bf()I

    move-result v0

    invoke-static {p1, v2, v0}, Lcom/android/gallery3d/common/Utils;->clamp(III)I

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/android/gallery3d/ui/ej;->FY:Lcom/android/gallery3d/ui/x;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/x;->setPosition(I)V

    .line 133
    invoke-direct {p0, v0, v2}, Lcom/android/gallery3d/ui/ej;->k(IZ)V

    .line 134
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->Gh:Lcom/android/gallery3d/ui/w;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/w;->bd()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/ej;->Gh:Lcom/android/gallery3d/ui/w;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/w;->be()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 159
    iget-object v1, p0, Lcom/android/gallery3d/ui/ej;->Gh:Lcom/android/gallery3d/ui/w;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/w;->setSize(II)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/ej;->bd(I)V

    .line 162
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/ui/ej;->u(II)V

    .line 163
    iget v0, p0, Lcom/android/gallery3d/ui/ej;->Gl:I

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/gallery3d/ui/ej;->FZ:Lcom/android/gallery3d/ui/ec;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/ec;->setSize(II)V

    goto :goto_0
.end method

.method public setStartIndex(I)V
    .locals 0
    .parameter

    .prologue
    .line 727
    iput p1, p0, Lcom/android/gallery3d/ui/ej;->Gj:I

    .line 728
    return-void
.end method

.method protected u(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    return-void
.end method
