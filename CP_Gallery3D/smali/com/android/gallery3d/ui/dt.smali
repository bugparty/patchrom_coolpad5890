.class public Lcom/android/gallery3d/ui/dt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static CW:F

.field private static CX:F


# instance fields
.field private final CY:Lcom/android/gallery3d/ui/bm;

.field private final CZ:Lcom/android/gallery3d/ui/bm;

.field private Da:F

.field private Db:F

.field private Dc:J

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const v0, 0x3e9dfd13

    sput v0, Lcom/android/gallery3d/ui/dt;->CW:F

    .line 25
    const v0, -0x41ad593c

    sput v0, Lcom/android/gallery3d/ui/dt;->CX:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/android/gallery3d/ui/dt;->Da:F

    .line 32
    iput v0, p0, Lcom/android/gallery3d/ui/dt;->Db:F

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/dt;->Dc:J

    .line 36
    new-instance v0, Lcom/android/gallery3d/ui/bm;

    const v1, 0x7f020068

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/bm;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/dt;->CY:Lcom/android/gallery3d/ui/bm;

    .line 37
    new-instance v0, Lcom/android/gallery3d/ui/bm;

    const v1, 0x7f020067

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/bm;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/dt;->CZ:Lcom/android/gallery3d/ui/bm;

    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/ui/dt;->CY:Lcom/android/gallery3d/ui/bm;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bm;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/dt;->CZ:Lcom/android/gallery3d/ui/bm;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/bm;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/dt;->mWidth:I

    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/ui/dt;->CY:Lcom/android/gallery3d/ui/bm;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/bm;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/dt;->CZ:Lcom/android/gallery3d/ui/bm;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/bm;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/dt;->mHeight:I

    .line 41
    return-void
.end method


# virtual methods
.method public b(Lcom/android/gallery3d/ui/b;II)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x3f80

    const/high16 v7, 0x43b4

    const/4 v6, 0x0

    .line 58
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 59
    iget-wide v2, p0, Lcom/android/gallery3d/ui/dt;->Dc:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/dt;->Dc:J

    .line 60
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/ui/dt;->Db:F

    iget-wide v3, p0, Lcom/android/gallery3d/ui/dt;->Dc:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    sget v4, Lcom/android/gallery3d/ui/dt;->CW:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/gallery3d/ui/dt;->Db:F

    .line 61
    iget v2, p0, Lcom/android/gallery3d/ui/dt;->Da:F

    iget-wide v3, p0, Lcom/android/gallery3d/ui/dt;->Dc:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    sget v4, Lcom/android/gallery3d/ui/dt;->CX:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/gallery3d/ui/dt;->Da:F

    .line 63
    iput-wide v0, p0, Lcom/android/gallery3d/ui/dt;->Dc:J

    .line 66
    iget v0, p0, Lcom/android/gallery3d/ui/dt;->Db:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/ui/dt;->Db:F

    sub-float/2addr v0, v7

    iput v0, p0, Lcom/android/gallery3d/ui/dt;->Db:F

    .line 67
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/dt;->Da:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/ui/dt;->Da:F

    add-float/2addr v0, v7

    iput v0, p0, Lcom/android/gallery3d/ui/dt;->Da:F

    .line 69
    :cond_2
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/b;->save(I)I

    .line 71
    iget v0, p0, Lcom/android/gallery3d/ui/dt;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/dt;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    int-to-float v1, v1

    invoke-interface {p1, v0, v1, v6}, Lcom/android/gallery3d/ui/b;->translate(FFF)V

    .line 72
    iget v0, p0, Lcom/android/gallery3d/ui/dt;->Da:F

    invoke-interface {p1, v0, v6, v6, v8}, Lcom/android/gallery3d/ui/b;->rotate(FFFF)V

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/ui/dt;->CY:Lcom/android/gallery3d/ui/bm;

    iget-object v1, p0, Lcom/android/gallery3d/ui/dt;->CY:Lcom/android/gallery3d/ui/bm;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/bm;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/gallery3d/ui/dt;->CY:Lcom/android/gallery3d/ui/bm;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/bm;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/ui/bm;->b(Lcom/android/gallery3d/ui/b;II)V

    .line 74
    iget v0, p0, Lcom/android/gallery3d/ui/dt;->Db:F

    iget v1, p0, Lcom/android/gallery3d/ui/dt;->Da:F

    sub-float/2addr v0, v1

    invoke-interface {p1, v0, v6, v6, v8}, Lcom/android/gallery3d/ui/b;->rotate(FFFF)V

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/ui/dt;->CZ:Lcom/android/gallery3d/ui/bm;

    iget-object v1, p0, Lcom/android/gallery3d/ui/dt;->CZ:Lcom/android/gallery3d/ui/bm;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/bm;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/gallery3d/ui/dt;->CZ:Lcom/android/gallery3d/ui/bm;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/bm;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/gallery3d/ui/bm;->b(Lcom/android/gallery3d/ui/b;II)V

    .line 76
    invoke-interface {p1}, Lcom/android/gallery3d/ui/b;->restore()V

    .line 77
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/gallery3d/ui/dt;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/ui/dt;->mWidth:I

    return v0
.end method

.method public startAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/dt;->Dc:J

    .line 53
    iput v2, p0, Lcom/android/gallery3d/ui/dt;->Db:F

    .line 54
    iput v2, p0, Lcom/android/gallery3d/ui/dt;->Da:F

    .line 55
    return-void
.end method
