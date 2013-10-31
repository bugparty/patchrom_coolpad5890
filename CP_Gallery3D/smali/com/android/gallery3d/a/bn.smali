.class public Lcom/android/gallery3d/a/bn;
.super Lcom/android/gallery3d/a/r;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/an;


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterSet"


# instance fields
.field private final ig:Ljava/util/ArrayList;

.field private final ih:Lcom/android/gallery3d/a/ao;

.field private final jr:Lcom/android/gallery3d/a/r;

.field private final ju:Ljava/util/ArrayList;

.field private final yD:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/dd;Lcom/android/gallery3d/a/ao;Lcom/android/gallery3d/a/r;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/a/r;-><init>(Lcom/android/gallery3d/a/dd;J)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/bn;->ig:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/bn;->ju:Ljava/util/ArrayList;

    .line 37
    iput-object p2, p0, Lcom/android/gallery3d/a/bn;->ih:Lcom/android/gallery3d/a/ao;

    .line 38
    iput-object p3, p0, Lcom/android/gallery3d/a/bn;->jr:Lcom/android/gallery3d/a/r;

    .line 39
    iput p4, p0, Lcom/android/gallery3d/a/bn;->yD:I

    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/a/bn;->jr:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/an;)V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/a/bn;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcom/android/gallery3d/a/bn;->yD:I

    return v0
.end method

.method private bi()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 85
    iget-object v1, p0, Lcom/android/gallery3d/a/bn;->ju:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/filter/mediatype/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/a/bn;->yD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    iget-object v1, p0, Lcom/android/gallery3d/a/bn;->jr:Lcom/android/gallery3d/a/r;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/r;->aP()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 89
    iget-object v4, p0, Lcom/android/gallery3d/a/bn;->jr:Lcom/android/gallery3d/a/r;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/a/r;->A(I)Lcom/android/gallery3d/a/r;

    move-result-object v4

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/gallery3d/a/r;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/a/dd;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    iget-object v5, p0, Lcom/android/gallery3d/a/bn;->ih:Lcom/android/gallery3d/a/ao;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/a/ao;->p(Ljava/lang/String;)Lcom/android/gallery3d/a/r;

    move-result-object v4

    .line 92
    invoke-virtual {v4}, Lcom/android/gallery3d/a/r;->aT()J

    .line 93
    invoke-virtual {v4}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v5

    if-gtz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/gallery3d/a/r;->aP()I

    move-result v5

    if-lez v5, :cond_1

    .line 95
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/a/bn;->ju:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/a/bn;->ig:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 101
    iget-object v1, p0, Lcom/android/gallery3d/a/bn;->jr:Lcom/android/gallery3d/a/r;

    invoke-virtual {v1}, Lcom/android/gallery3d/a/r;->aN()I

    move-result v1

    .line 102
    new-array v2, v1, [Lcom/android/gallery3d/a/dd;

    .line 104
    iget-object v3, p0, Lcom/android/gallery3d/a/bn;->jr:Lcom/android/gallery3d/a/r;

    new-instance v4, Lcom/android/gallery3d/a/cp;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/gallery3d/a/cp;-><init>(Lcom/android/gallery3d/a/bn;I[Lcom/android/gallery3d/a/dd;)V

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/a/r;->a(Lcom/android/gallery3d/a/bu;)V

    .line 114
    :goto_1
    if-ge v0, v1, :cond_4

    .line 115
    aget-object v3, v2, v0

    if-eqz v3, :cond_3

    .line 116
    iget-object v3, p0, Lcom/android/gallery3d/a/bn;->ig:Ljava/util/ArrayList;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    :cond_4
    return-void
.end method


# virtual methods
.method public A(I)Lcom/android/gallery3d/a/r;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/a/bn;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/r;

    return-object v0
.end method

.method public aN()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/a/bn;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public aP()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/a/bn;->ju:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public aT()J
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/a/bn;->jr:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->aT()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/a/bj;->vI:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/android/gallery3d/a/bn;->bi()V

    .line 73
    invoke-static {}, Lcom/android/gallery3d/a/bn;->ex()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    .line 75
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/a/bj;->vI:J

    return-wide v0
.end method

.method public aW()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/gallery3d/a/bn;->aS()V

    .line 81
    return-void
.end method

.method public am()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x5

    return v0
.end method

.method public delete()V
    .locals 4

    .prologue
    .line 128
    new-instance v0, Lcom/android/gallery3d/a/co;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/a/co;-><init>(Lcom/android/gallery3d/a/bn;)V

    .line 135
    iget-object v1, p0, Lcom/android/gallery3d/a/bn;->ih:Lcom/android/gallery3d/a/ao;

    iget-object v2, p0, Lcom/android/gallery3d/a/bn;->ig:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/gallery3d/a/ao;->a(Ljava/util/ArrayList;Lcom/android/gallery3d/a/bu;I)V

    .line 136
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery3d/a/bn;->jr:Lcom/android/gallery3d/a/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/a/r;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j(II)Ljava/util/ArrayList;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/a/bn;->ig:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/a/bn;->ih:Lcom/android/gallery3d/a/ao;

    invoke-static {v0, p1, p2, v1}, Lcom/android/gallery3d/a/az;->a(Ljava/util/ArrayList;IILcom/android/gallery3d/a/ao;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
