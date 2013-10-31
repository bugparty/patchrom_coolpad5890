.class public Lcom/android/gallery3d/ui/eu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Jb:Lcom/android/gallery3d/ui/dj;

.field private Jc:Lcom/android/gallery3d/b/l;

.field private final dM:Lcom/android/gallery3d/app/bm;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/bm;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/gallery3d/ui/eu;->dM:Lcom/android/gallery3d/app/bm;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/eu;->mHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/eu;)Lcom/android/gallery3d/app/bm;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/ui/eu;->dM:Lcom/android/gallery3d/app/bm;

    return-object v0
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/eu;Lcom/android/gallery3d/b/l;)Lcom/android/gallery3d/b/l;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/gallery3d/ui/eu;->Jc:Lcom/android/gallery3d/b/l;

    return-object p1
.end method

.method private a(Landroid/location/Address;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 81
    if-eqz p1, :cond_4

    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/ui/eu;->dM:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dv()Landroid/content/Context;

    move-result-object v3

    .line 83
    const/16 v0, 0x9

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {p1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v0, 0x3

    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x6

    invoke-virtual {p1}, Landroid/location/Address;->getPremises()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x7

    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/16 v0, 0x8

    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 95
    const-string v0, ""

    move v1, v2

    .line 96
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 97
    aget-object v5, v4, v1

    if-eqz v5, :cond_0

    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 96
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v5, v4, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 103
    :cond_3
    const-string v1, "%s : %s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v8}, Lcom/android/gallery3d/ui/cd;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    aput-object v0, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/android/gallery3d/ui/eu;->Jb:Lcom/android/gallery3d/ui/dj;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/ui/dj;->b(Ljava/lang/String;)V

    .line 107
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/ui/eu;Landroid/location/Address;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/eu;->a(Landroid/location/Address;)V

    return-void
.end method

.method static synthetic b(Lcom/android/gallery3d/ui/eu;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/ui/eu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a([DLcom/android/gallery3d/ui/dj;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p2, p0, Lcom/android/gallery3d/ui/eu;->Jb:Lcom/android/gallery3d/ui/dj;

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/ui/eu;->dM:Lcom/android/gallery3d/app/bm;

    invoke-interface {v0}, Lcom/android/gallery3d/app/bm;->dw()Lcom/android/gallery3d/b/n;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/ui/bz;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/ui/bz;-><init>(Lcom/android/gallery3d/ui/eu;[D)V

    new-instance v2, Lcom/android/gallery3d/ui/cm;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/ui/cm;-><init>(Lcom/android/gallery3d/ui/eu;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/b/n;->a(Lcom/android/gallery3d/b/ab;Lcom/android/gallery3d/b/u;)Lcom/android/gallery3d/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/eu;->Jc:Lcom/android/gallery3d/b/l;

    .line 77
    const-string v0, "(%f,%f)"

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    const/4 v3, 0x1

    aget-wide v3, p1, v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/b/y;->a(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/ui/eu;->Jc:Lcom/android/gallery3d/b/l;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/gallery3d/ui/eu;->Jc:Lcom/android/gallery3d/b/l;

    invoke-interface {v0}, Lcom/android/gallery3d/b/l;->cancel()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/eu;->Jc:Lcom/android/gallery3d/b/l;

    .line 114
    :cond_0
    return-void
.end method
