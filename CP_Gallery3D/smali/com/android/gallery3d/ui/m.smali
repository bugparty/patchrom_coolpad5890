.class Lcom/android/gallery3d/ui/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cy:Lcom/android/gallery3d/ui/ep;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 657
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/aj;)V
    .locals 0
    .parameter

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/android/gallery3d/ui/m;-><init>()V

    return-void
.end method


# virtual methods
.method public L()Lcom/android/gallery3d/ui/ep;
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/gallery3d/ui/m;->cy:Lcom/android/gallery3d/ui/ep;

    .line 662
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/gallery3d/ui/ep;->Iy:Lcom/android/gallery3d/ui/ep;

    iput-object v1, p0, Lcom/android/gallery3d/ui/m;->cy:Lcom/android/gallery3d/ui/ep;

    .line 663
    :cond_0
    return-object v0
.end method

.method public M()V
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/m;->cy:Lcom/android/gallery3d/ui/ep;

    .line 675
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/ep;)Z
    .locals 2
    .parameter

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/gallery3d/ui/m;->cy:Lcom/android/gallery3d/ui/ep;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 668
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/m;->cy:Lcom/android/gallery3d/ui/ep;

    iput-object v1, p1, Lcom/android/gallery3d/ui/ep;->Iy:Lcom/android/gallery3d/ui/ep;

    .line 669
    iput-object p1, p0, Lcom/android/gallery3d/ui/m;->cy:Lcom/android/gallery3d/ui/ep;

    .line 670
    return v0

    .line 667
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
