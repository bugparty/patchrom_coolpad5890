.class Lcom/android/gallery3d/a/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ig:Ljava/util/ArrayList;

.field mName:Ljava/lang/String;

.field uT:Lcom/android/gallery3d/a/ax;

.field uU:Landroid/graphics/Rect;

.field uV:I

.field final synthetic uW:Lcom/android/gallery3d/a/ab;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/ab;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/gallery3d/a/bi;->uW:Lcom/android/gallery3d/a/ab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/bi;->ig:Ljava/util/ArrayList;

    .line 44
    iput-object p2, p0, Lcom/android/gallery3d/a/bi;->mName:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/a/ax;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/android/gallery3d/a/ax;->es()Lcom/android/gallery3d/a/dd;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/android/gallery3d/a/bi;->ig:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p1}, Lcom/android/gallery3d/a/ax;->dD()[Lcom/android/gallery3d/a/c;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    aget-object v0, v0, p2

    .line 53
    iget-object v1, p0, Lcom/android/gallery3d/a/bi;->uT:Lcom/android/gallery3d/a/ax;

    if-nez v1, :cond_1

    .line 54
    iput-object p1, p0, Lcom/android/gallery3d/a/bi;->uT:Lcom/android/gallery3d/a/ax;

    .line 55
    invoke-virtual {v0}, Lcom/android/gallery3d/a/c;->v()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/bi;->uU:Landroid/graphics/Rect;

    .line 56
    iput p2, p0, Lcom/android/gallery3d/a/bi;->uV:I

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {v0}, Lcom/android/gallery3d/a/c;->v()Landroid/graphics/Rect;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/android/gallery3d/a/bi;->uU:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/a/bi;->uU:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 61
    iput-object p1, p0, Lcom/android/gallery3d/a/bi;->uT:Lcom/android/gallery3d/a/ax;

    .line 62
    invoke-virtual {v0}, Lcom/android/gallery3d/a/c;->v()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/a/bi;->uU:Landroid/graphics/Rect;

    .line 63
    iput p2, p0, Lcom/android/gallery3d/a/bi;->uV:I

    goto :goto_0
.end method

.method public ep()Lcom/android/gallery3d/a/ax;
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/a/bi;->uT:Lcom/android/gallery3d/a/ax;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/a/bi;->uT:Lcom/android/gallery3d/a/ax;

    invoke-static {v0}, Lcom/android/gallery3d/c/b;->b(Lcom/android/gallery3d/a/bj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/a/bi;->uW:Lcom/android/gallery3d/a/ab;

    invoke-static {v0}, Lcom/android/gallery3d/a/ab;->a(Lcom/android/gallery3d/a/ab;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/a/bi;->uT:Lcom/android/gallery3d/a/ax;

    iget v2, p0, Lcom/android/gallery3d/a/bi;->uV:I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/c/b;->a(Landroid/content/Context;Lcom/android/gallery3d/a/ax;I)Lcom/android/gallery3d/a/ax;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/a/bi;->uT:Lcom/android/gallery3d/a/ax;

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/a/bi;->ig:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
