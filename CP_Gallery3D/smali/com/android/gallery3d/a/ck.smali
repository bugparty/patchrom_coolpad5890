.class Lcom/android/gallery3d/a/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/bu;


# instance fields
.field final synthetic Gr:Lcom/android/gallery3d/a/bi;

.field final synthetic gK:Ljava/util/TreeMap;

.field final synthetic uW:Lcom/android/gallery3d/a/ab;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/ab;Lcom/android/gallery3d/a/bi;Ljava/util/TreeMap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/gallery3d/a/ck;->uW:Lcom/android/gallery3d/a/ab;

    iput-object p2, p0, Lcom/android/gallery3d/a/ck;->Gr:Lcom/android/gallery3d/a/bi;

    iput-object p3, p0, Lcom/android/gallery3d/a/ck;->gK:Ljava/util/TreeMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/android/gallery3d/a/ax;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-virtual {p2}, Lcom/android/gallery3d/a/ax;->dD()[Lcom/android/gallery3d/a/c;

    move-result-object v2

    .line 99
    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_2

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/a/ck;->Gr:Lcom/android/gallery3d/a/bi;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/gallery3d/a/bi;->a(Lcom/android/gallery3d/a/ax;I)V

    .line 112
    :cond_1
    return-void

    .line 103
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 104
    aget-object v3, v2, v1

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/a/ck;->gK:Ljava/util/TreeMap;

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/bi;

    .line 106
    if-nez v0, :cond_3

    .line 107
    new-instance v0, Lcom/android/gallery3d/a/bi;

    iget-object v4, p0, Lcom/android/gallery3d/a/ck;->uW:Lcom/android/gallery3d/a/ab;

    invoke-virtual {v3}, Lcom/android/gallery3d/a/c;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/android/gallery3d/a/bi;-><init>(Lcom/android/gallery3d/a/ab;Ljava/lang/String;)V

    .line 108
    iget-object v4, p0, Lcom/android/gallery3d/a/ck;->gK:Ljava/util/TreeMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_3
    invoke-virtual {v0, p2, v1}, Lcom/android/gallery3d/a/bi;->a(Lcom/android/gallery3d/a/ax;I)V

    .line 103
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
