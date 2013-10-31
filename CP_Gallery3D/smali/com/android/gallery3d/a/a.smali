.class Lcom/android/gallery3d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/bu;


# instance fields
.field final synthetic a:[Ljava/util/ArrayList;

.field final synthetic b:Lcom/android/gallery3d/a/cz;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/cz;[Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/gallery3d/a/a;->b:Lcom/android/gallery3d/a/cz;

    iput-object p2, p0, Lcom/android/gallery3d/a/a;->a:[Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/android/gallery3d/a/ax;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p2}, Lcom/android/gallery3d/a/ax;->getSize()J

    move-result-wide v1

    .line 60
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/gallery3d/a/cz;->gm()[J

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 61
    invoke-static {}, Lcom/android/gallery3d/a/cz;->gm()[J

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget-wide v3, v3, v4

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/a/a;->a:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    .line 67
    if-nez v1, :cond_2

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v2, p0, Lcom/android/gallery3d/a/a;->a:[Ljava/util/ArrayList;

    aput-object v1, v2, v0

    move-object v0, v1

    .line 71
    :goto_1
    invoke-virtual {p2}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void

    .line 60
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
