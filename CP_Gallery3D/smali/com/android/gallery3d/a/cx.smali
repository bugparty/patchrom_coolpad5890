.class public Lcom/android/gallery3d/a/cx;
.super Lcom/android/gallery3d/a/r;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpDeviceSet"


# instance fields
.field private final Ip:Ljava/util/ArrayList;

.field private final au:Lcom/android/gallery3d/a/ap;

.field private i:Lcom/android/gallery3d/app/cl;

.field private final jx:Lcom/android/gallery3d/a/cb;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;Lcom/android/gallery3d/a/ap;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-static {}, Lcom/android/gallery3d/a/cx;->ex()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/a/r;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/cx;->Ip:Ljava/util/ArrayList;

    .line 43
    iput-object p2, p0, Lcom/android/gallery3d/a/cx;->i:Lcom/android/gallery3d/app/cl;

    .line 44
    new-instance v0, Lcom/android/gallery3d/a/cb;

    const-string v1, "mtp://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/a/cb;-><init>(Lcom/android/gallery3d/a/r;Landroid/net/Uri;Lcom/android/gallery3d/app/cl;)V

    iput-object v0, p0, Lcom/android/gallery3d/a/cx;->jx:Lcom/android/gallery3d/a/cb;

    .line 45
    iput-object p3, p0, Lcom/android/gallery3d/a/cx;->au:Lcom/android/gallery3d/a/ap;

    .line 46
    invoke-interface {p2}, Lcom/android/gallery3d/app/cl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/cx;->mName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static a(Lcom/android/gallery3d/a/ap;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/gallery3d/a/ap;->dm()Lcom/android/gallery3d/a/bs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/a/bs;->aA(I)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 74
    if-nez v0, :cond_0

    .line 75
    const-string v0, ""

    .line 83
    :goto_0
    return-object v0

    .line 77
    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpDevice;->getDeviceInfo()Landroid/mtp/MtpDeviceInfo;

    move-result-object v0

    .line 78
    if-nez v0, :cond_1

    .line 79
    const-string v0, ""

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v0}, Landroid/mtp/MtpDeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0}, Landroid/mtp/MtpDeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private gi()V
    .locals 7

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/a/cx;->i:Lcom/android/gallery3d/app/cl;

    invoke-interface {v0}, Lcom/android/gallery3d/app/cl;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v1

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/a/cx;->Ip:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/a/cx;->au:Lcom/android/gallery3d/a/ap;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/ap;->dm()Lcom/android/gallery3d/a/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/bs;->fh()Ljava/util/List;

    move-result-object v0

    .line 54
    const-string v2, "MtpDeviceSet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadDevices: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDevice;

    .line 56
    invoke-virtual {v0}, Landroid/mtp/MtpDevice;->getDeviceId()I

    move-result v3

    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/a/bj;->uj:Lcom/android/gallery3d/a/dd;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/a/dd;->bn(I)Lcom/android/gallery3d/a/dd;

    move-result-object v4

    .line 58
    invoke-virtual {v1, v4}, Lcom/android/gallery3d/a/ao;->d(Lcom/android/gallery3d/a/dd;)Lcom/android/gallery3d/a/bj;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/be;

    .line 59
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/android/gallery3d/a/be;

    iget-object v5, p0, Lcom/android/gallery3d/a/cx;->i:Lcom/android/gallery3d/app/cl;

    iget-object v6, p0, Lcom/android/gallery3d/a/cx;->au:Lcom/android/gallery3d/a/ap;

    invoke-direct {v0, v4, v5, v3, v6}, Lcom/android/gallery3d/a/be;-><init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/app/cl;ILcom/android/gallery3d/a/ap;)V

    .line 62
    :cond_0
    const-string v3, "MtpDeviceSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v3, p0, Lcom/android/gallery3d/a/cx;->Ip:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/a/cx;->Ip:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/gallery3d/b/e;->gt:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 67
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/a/cx;->Ip:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/a/cx;->Ip:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aT()J

    .line 67
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 70
    :cond_2
    return-void
.end method


# virtual methods
.method public A(I)Lcom/android/gallery3d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/a/cx;->Ip:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/a/cx;->Ip:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/r;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aP()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/a/cx;->Ip:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public aT()J
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/a/cx;->jx:Lcom/android/gallery3d/a/cb;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/cb;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/android/gallery3d/a/cx;->ex()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    .line 105
    invoke-direct {p0}, Lcom/android/gallery3d/a/cx;->gi()V

    .line 107
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/a/cx;->mName:Ljava/lang/String;

    return-object v0
.end method
