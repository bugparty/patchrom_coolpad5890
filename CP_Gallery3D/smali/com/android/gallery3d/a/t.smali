.class Lcom/android/gallery3d/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/bu;


# instance fields
.field final synthetic gJ:Ljava/util/ArrayList;

.field final synthetic gK:Ljava/util/TreeMap;

.field final synthetic gL:Lcom/android/gallery3d/a/bd;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/bd;Ljava/util/ArrayList;Ljava/util/TreeMap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/gallery3d/a/t;->gL:Lcom/android/gallery3d/a/bd;

    iput-object p2, p0, Lcom/android/gallery3d/a/t;->gJ:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/gallery3d/a/t;->gK:Ljava/util/TreeMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/android/gallery3d/a/ax;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-virtual {p2}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v2

    .line 49
    invoke-virtual {p2}, Lcom/android/gallery3d/a/ax;->dC()[Ljava/lang/String;

    move-result-object v3

    .line 50
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_2

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/a/t;->gJ:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    return-void

    .line 54
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_1

    .line 55
    aget-object v4, v3, v1

    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/a/t;->gK:Ljava/util/TreeMap;

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 57
    if-nez v0, :cond_3

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget-object v5, p0, Lcom/android/gallery3d/a/t;->gK:Ljava/util/TreeMap;

    invoke-virtual {v5, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
